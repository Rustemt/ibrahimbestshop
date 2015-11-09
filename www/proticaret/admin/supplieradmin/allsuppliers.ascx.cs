using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using ASPNetPortal;
using System.Text;

public partial class allsuppliers : PortalModuleControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        this.ModuleTitle = "Tüm Tedarikçiler";
        if (!this.IsPostBack)
        {
            FillSuppliersList();
        }
        lnkAddNewSup.NavigateUrl = "EditSupplier.aspx?IND=0";
    }
    private void FillSuppliersList()
    {
        string cmdSQLSupplier = " WHERE 1=1 AND PortalId=@portalID ";
        string startDateTime = Tarih1.SelectedDate.Date.ToString("yyyy-MM-dd") ;
        string endDateTime = tarih2.SelectedDate.Date.ToString("yyyy-MM-dd");

        //string startDateTimeSting = startDateTime.Date.ToString();      
        //string endDateTimeSting = endDateTime.Date.ToString();

        if (!String.IsNullOrEmpty(txtName.Text))
        {
            cmdSQLSupplier += " AND Name " + ddlfilter.SelectedValue.Replace("[]", txtName.Text);
        }

        if (!String.IsNullOrEmpty(txtemail.Text))
        {
            cmdSQLSupplier += " AND EMail " + ddlemail.SelectedValue.Replace("[]", txtemail.Text);
        }
        
        if (ddlStatus.SelectedItem.Value == "1")
        {
            cmdSQLSupplier += " AND IsActive " + "= 'True'";
        }

        if (ddlStatus.SelectedItem.Value == "0")
        {
            cmdSQLSupplier += " AND IsActive " + "='False'";
        }
        if (startDateTime != "0001-01-01" )
        {
            cmdSQLSupplier += " AND CreatedDate >=" + " '" + startDateTime + " 00:00:00'";
        }
        if (endDateTime != "0001-01-01")
        {
            cmdSQLSupplier += " AND CreatedDate <=" + " '" + endDateTime + " 23:59:00'";
        }
        
        string cmdSQLSupplierNew = "SELECT * FROM GetSupplierUsers " + cmdSQLSupplier;

        DatabaseDB db = new DatabaseDB();
        DataSet ds = new DataSet();

        SqlCommand cmdSuppFill = new SqlCommand(cmdSQLSupplierNew, db.conn);
        cmdSuppFill.Parameters.AddWithValue("@portalID", publicItems.PortalId);
        //cmdSuppFill.Parameters.AddWithValue("@isActive", 1);

        SqlDataAdapter sqlda = new SqlDataAdapter(cmdSuppFill);
        sqlda.Fill(ds);

        ds.Tables[0].DefaultView.Sort = lblSort.Text;

        gridSupps.DataSource = ds.Tables[0].DefaultView;
        gridSupps.DataBind();

        lblTotalRecord.Text = ds.Tables[0].Rows.Count.ToString();
        lblPageCount.Text = gridSupps.PageCount.ToString();
        lblCurrentIndex.Text = Convert.ToString(gridSupps.CurrentPageIndex + 1);

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillSuppliersList();
    }
    protected void gridSupps_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        gridSupps.CurrentPageIndex = e.NewPageIndex;
        FillSuppliersList();
    }
    protected void gridSupps_ItemDataBound(object sender, DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            LinkButton btnDel = (LinkButton)e.Item.FindControl("btnDelete");
            btnDel.Attributes.Add("onclick", ("return confirm(" + "'Bu kaydı silmek istediğinize emin misiniz?'" + ")"));

            //HyperLink lnkDetail = (HyperLink)e.Item.FindControl("lnkDetail");
            //lnkDetail.NavigateUrl = String.Format("/admin/ecommerce/user/EditUser.aspx?IND=" + e.Item.Cells[0].Text);
            //lnkDetail.Text = "Düzenle";

            HyperLink lnkEditPreviliges = (HyperLink)e.Item.FindControl("lnkEditPreviliges");
            lnkEditPreviliges.NavigateUrl = String.Format("EditPreviliges.aspx?IND=" + e.Item.Cells[0].Text);
        }
    }
    protected void gridSupps_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        int SupID = Convert.ToInt32(e.Item.Cells[0].Text);
        DatabaseDB db = new DatabaseDB();
        try
        {
            db.connectDb();
            SqlCommand cmdDeleteSupplier = new SqlCommand("DeleteSuppliers", db.conn);
            cmdDeleteSupplier.CommandType = CommandType.StoredProcedure;
            cmdDeleteSupplier.Parameters.AddWithValue("@UserId", SupID);

            cmdDeleteSupplier.Parameters.Add("@Result", SqlDbType.Int);
            cmdDeleteSupplier.Parameters["@Result"].Direction = ParameterDirection.Output;

            cmdDeleteSupplier.ExecuteNonQuery();

            if ((int)cmdDeleteSupplier.Parameters["@Result"].Value != 1)
            {
                utils.messagebox(lblmsg, "Kayıt silinemedi.");
            }
        }
        catch (SqlException sqlEx)
        {
            lblmsg.Text = sqlEx.Source + " >> " + sqlEx.Message;
            //throw sqlEx;
        }
        catch(Exception ex)
        {
            lblmsg.Text = ex.Source + " >> " + ex.Message;
        }
        finally
        {
            db.disconnectDb();
        }
        FillSuppliersList();
    }
    protected void gridSupps_SortCommand(object source, DataGridSortCommandEventArgs e)
    {
        if (lblSort.Text == e.SortExpression)
        {
            lblSort.Text = e.SortExpression + " DESC";
        }
        else
        {
            lblSort.Text = e.SortExpression;
        }
        FillSuppliersList();
    }
    public bool CheckNullDate(DateTime lastLoginDate)
    {
        if (lastLoginDate == null)
            return false;
        return true;
    }
}