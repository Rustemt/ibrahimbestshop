using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPNetPortal;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class EditPreviliges : PortalAdminPage
{
    #region Veritabanı Tanımları

    protected DatabaseDB db = new DatabaseDB();
    protected SqlCommand setCommand = new SqlCommand();

    protected SqlCommand getCommand = new SqlCommand();
    protected SqlDataReader reader;

    #endregion

    #region Yetki Ekleme Metodu
    void SetPreviliges(int UserId)
    {
        setCommand.CommandText = "AddSupplierPreviliges";
        setCommand.CommandType = CommandType.StoredProcedure;
        setCommand.CommandTimeout = 30;
        setCommand.Connection = db.conn;
        using (setCommand)
        {
            try
            {
                db.connectDb();
                setCommand.Parameters.AddWithValue("@UserId", Convert.ToInt32(Request.QueryString["IND"]));
                setCommand.Parameters.AddWithValue("@padd", chkAdd.Checked);
                setCommand.Parameters.AddWithValue("@pdelete", chkDelete.Checked);
                setCommand.Parameters.AddWithValue("@pcat", IsCheckedControl(chkICat, chkUCat));
                setCommand.Parameters.AddWithValue("@pbrand", IsCheckedControl(chkIBrand, chkUBrand));
                //setCommand.Parameters.AddWithValue("@pproduct", IsCheckedControl(chkIProductCode, chkUProductCode));
                setCommand.Parameters.AddWithValue("@pbarcode", IsCheckedControl(chkIBarcode, chkUBarcode));
                setCommand.Parameters.AddWithValue("@pquantity", IsCheckedControl(chkIStockQty, chkUStockQty));
                setCommand.Parameters.AddWithValue("@ptextile", IsCheckedControl(chkITextile, chkUTextile));
                setCommand.Parameters.AddWithValue("@ppurchase", IsCheckedControl(chkIPurchasePrice, chkUPurchasePrice));
                setCommand.Parameters.AddWithValue("@psaleprice", IsCheckedControl(chkISalePrice, chkUSalePrice));
                setCommand.Parameters.AddWithValue("@ppronote", IsCheckedControl(chkINote, chkUNote));
                setCommand.Parameters.AddWithValue("@pimage", IsCheckedControl(chkIImage, chkUImage));
                setCommand.Parameters.AddWithValue("@pvideo", IsCheckedControl(chkIVideo, chkUVideo));
                setCommand.Parameters.AddWithValue("@punit", IsCheckedControl(chkIUnit, chkUUnit));
                setCommand.Parameters.AddWithValue("@pcolorandsize", IsCheckedControl(chkIColorAndSize, chkUColorAndSize));
                setCommand.Parameters.AddWithValue("@pvariant", IsCheckedControl(chkIVariant, chkUVariant));
                setCommand.Parameters.AddWithValue("@palternative", IsCheckedControl(chkIAlternative, chkUAlternative));
                setCommand.Parameters.AddWithValue("@psupplies", IsCheckedControl(chkISupplies, chkUSupplies));


                SqlParameter result = new SqlParameter("@result", SqlDbType.Int);
                result.Direction = ParameterDirection.Output;

                setCommand.Parameters.Add(result);

                setCommand.ExecuteNonQuery();
                if ((int)setCommand.Parameters["@result"].Value == 1)
                {
                    Response.Write("<script>alert('İşlem tamamlandı.')</script>");
                    Response.Write("<script>self.close();</script>");
                }
                else if ((int)setCommand.Parameters["@result"].Value == 0)
                {
                    Response.Write("<script>alert('Güncelleme tamamlandı.')</script>");
                    Response.Write("<script>self.close();</script>");
                }
            }
            catch (SqlException ex)
            {
                lblMessage.InnerHtml = "<b>" + ex.Source + " >> " + ex.Message + "</b>";
            }
            catch (Exception ex)
            {
                lblMessage.InnerHtml = "<b>" + ex.Source + " >> " + ex.Message + "</b>";
            }
            finally
            {
                db.disconnectDb();
            }
        }
    }
    #endregion

    #region Yetki Okuma Metodu
    void GetPreviliges(int UserId)
    {
        getCommand.CommandText = "GetSuppliers";
        getCommand.CommandTimeout = 30;
        getCommand.CommandType = CommandType.StoredProcedure;
        getCommand.Connection = db.conn;
        using (getCommand)
        {
            try
            {
                db.connectDb();
                getCommand.Parameters.AddWithValue("@UserId", UserId);
                reader = getCommand.ExecuteReader();
                if (reader.Read())
                {
                    if ((bool)reader["PDeleteProduct"] == true)
                    {
                        chkDelete.Checked = true;
                    }
                    else
                    {
                        chkDelete.Checked = false;
                    }

                    if ((bool)reader["PAddProduct"] == true)
                    {
                        chkAdd.Checked = true;
                    }
                    else
                    {
                        chkAdd.Checked = false;
                    }

                    bool isInsertCat = reader["PCategory"].ToString().StartsWith("1") ? chkICat.Checked = true : chkICat.Checked = false;
                    bool isUpdateCat = reader["PCategory"].ToString().EndsWith("1") ? chkUCat.Checked = true : chkUCat.Checked = false;

                    bool isInsertBrand = reader["PBrand"].ToString().StartsWith("1") ? chkIBrand.Checked = true : chkIBrand.Checked = false;
                    bool isUpdateBrand = reader["PBrand"].ToString().EndsWith("1") ? chkUBrand.Checked = true : chkUBrand.Checked = false;

                    //bool isInsertPCode = reader["PProductCode"].ToString().StartsWith("1") ? chkIProductCode.Checked = true : chkIProductCode.Checked = false;
                    //bool isUpdatePCode = reader["PProductCode"].ToString().EndsWith("1") ? chkUProductCode.Checked = true : chkUProductCode.Checked = false;

                    bool isInsertBarcode = reader["PBarcode"].ToString().StartsWith("1") ? chkIBarcode.Checked = true : chkIBarcode.Checked = false;
                    bool isUpdateBarcode = reader["PBarcode"].ToString().EndsWith("1") ? chkUBarcode.Checked = true : chkUBarcode.Checked = false;

                    bool isInsertQuantity = reader["PQuantity"].ToString().StartsWith("1") ? chkIStockQty.Checked = true : chkIStockQty.Checked = false;
                    bool isUpdateQuantity = reader["PQuantity"].ToString().EndsWith("1") ? chkUStockQty.Checked = true : chkUStockQty.Checked = false;

                    bool isInsertTextile = reader["PTextile"].ToString().StartsWith("1") ? chkITextile.Checked = true : chkITextile.Checked = false;
                    bool isUpdateTextile = reader["PTextile"].ToString().EndsWith("1") ? chkUTextile.Checked = true : chkUTextile.Checked = false;

                    bool isInsertPurchase = reader["PPurchasePrice"].ToString().StartsWith("1") ? chkIPurchasePrice.Checked = true : chkIPurchasePrice.Checked = false;
                    bool isUpdatePurchase = reader["PPurchasePrice"].ToString().EndsWith("1") ? chkUPurchasePrice.Checked = true : chkUPurchasePrice.Checked = false;

                    bool isInsertSale = reader["PSalePrice"].ToString().StartsWith("1") ? chkISalePrice.Checked = true : chkISalePrice.Checked = false;
                    bool isUpdateSale = reader["PSalePrice"].ToString().EndsWith("1") ? chkUSalePrice.Checked = true : chkUSalePrice.Checked = false;

                    bool isInsertPNote = reader["PProductNote"].ToString().StartsWith("1") ? chkINote.Checked = true : chkINote.Checked = false;
                    bool isUpdatePNote = reader["PProductNote"].ToString().EndsWith("1") ? chkUNote.Checked = true : chkUNote.Checked = false;

                    bool isInsertImage = reader["PImage"].ToString().StartsWith("1") ? chkIImage.Checked = true : chkIImage.Checked = false;
                    bool isUpdateImage = reader["PImage"].ToString().EndsWith("1") ? chkUImage.Checked = true : chkUImage.Checked = false;

                    bool isInsertVideo = reader["PVideo"].ToString().StartsWith("1") ? chkIVideo.Checked = true : chkIVideo.Checked = false;
                    bool isUpdateVideo = reader["PVideo"].ToString().StartsWith("1") ? chkUVideo.Checked = true : chkUVideo.Checked = false;

                    bool isInsertUnit = reader["PUnit"].ToString().StartsWith("1") ? chkIUnit.Checked = true : chkIUnit.Checked = false;
                    bool isUpdateUnit = reader["PUnit"].ToString().EndsWith("1") ? chkUUnit.Checked = true : chkUUnit.Checked = false;

                    bool isInsertColorAndSize = reader["PColorAndSize"].ToString().StartsWith("1") ? chkIColorAndSize.Checked = true : chkIColorAndSize.Checked = false;
                    bool isUpdateColorAndSize = reader["PColorAndSize"].ToString().EndsWith("1") ? chkUColorAndSize.Checked = true : chkUColorAndSize.Checked = false;

                    bool isInsertVariant = reader["PVariant"].ToString().StartsWith("1") ? chkIVariant.Checked = true : chkIVariant.Checked = false;
                    bool isUpdateVariant = reader["PVariant"].ToString().EndsWith("1") ? chkUVariant.Checked = true : chkUVariant.Checked = false;

                    bool isInsertAlternative = reader["PAlternative"].ToString().StartsWith("1") ? chkIAlternative.Checked = true : chkIAlternative.Checked = false;
                    bool isUpdateAlternative = reader["PAlternative"].ToString().EndsWith("1") ? chkUAlternative.Checked = true : chkUAlternative.Checked = false;

                    bool isInsertSupplies = reader["PSupplies"].ToString().StartsWith("1") ? chkISupplies.Checked = true : chkISupplies.Checked = false;
                    bool isUpdateSupplies = reader["PSupplies"].ToString().EndsWith("1") ? chkUSupplies.Checked = true : chkUSupplies.Checked = false;
                }
            }
            catch (SqlException ex)
            {
                lblMessage.InnerHtml += "<b>" + ex.Source + " >> " + ex.Message + "</b>";
            }
            catch (Exception ex)
            {
                lblMessage.InnerHtml += "<b>" + ex.Source + " >> " + ex.Message + "</b>";
            }
            finally
            {
                db.disconnectDb();
            }
        }
    }
    #endregion

    #region Check-Box Yetkileri

    public void GetCheckBoxPreviliges()
    {
        if (!chkAdd.Checked)
        {
            chkICat.Checked = false;
            chkICat.Enabled = false;
            chkIBrand.Checked = false;
            chkIBrand.Enabled = false;
            chkIBarcode.Checked = false;
            chkIBarcode.Enabled = false;
            chkIStockQty.Checked = false;
            chkIStockQty.Enabled = false;
            chkITextile.Checked = false;
            chkITextile.Enabled = false;
            chkIPurchasePrice.Checked = false;
            chkIPurchasePrice.Enabled = false;
            chkISalePrice.Checked = false;
            chkISalePrice.Enabled = false;
            chkINote.Checked = false;
            chkINote.Enabled = false;
            chkIImage.Checked = false;
            chkIImage.Enabled = false;
            chkIVideo.Checked = false;
            chkIVideo.Enabled = false;
            chkIUnit.Checked = false;
            chkIUnit.Enabled = false;
            chkIColorAndSize.Checked = false;
            chkIColorAndSize.Enabled = false;
            chkIVariant.Checked = false;
            chkIVariant.Enabled = false;
            chkIAlternative.Checked = false;
            chkIAlternative.Enabled = false;
            chkISupplies.Checked = false;
            chkISupplies.Enabled = false;
            cball1.Enabled = false;
            cball1.Checked = false;
        }

        if (chkAdd.Checked)
        {
            chkICat.Checked = true;
            chkICat.Enabled = false;
            chkIBrand.Enabled = true;
            chkIBarcode.Enabled = true;
            chkIStockQty.Enabled = true;
            chkITextile.Enabled = true;
            chkIPurchasePrice.Enabled = true;
            chkISalePrice.Enabled = true;
            chkINote.Enabled = true;
            chkIImage.Enabled = true;
            chkIVideo.Enabled = true;
            chkIUnit.Enabled = true;
            chkIColorAndSize.Enabled = true;
            chkIVariant.Enabled = true;
            chkIAlternative.Enabled = true;
            chkISupplies.Enabled = true;
            cball1.Enabled = true;
        }

    }
    #endregion

    #region Yetki eklenirken ilgili işaret kutularının (Checkbox) işaret durumlarına göre metinel değer döndüren metod
    string IsCheckedControl(CheckBox chk1, CheckBox chk2)
    {
        if (chk1.Checked && chk2.Checked)
        {
            return "1,1";
        }
        else if (chk1.Checked)
        {
            return "1,0";
        }
        else if (chk2.Checked)
        {
            return "0,1";
        }
        else
        {
            return "0,0";
        }
    }
    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
        spnTitle.InnerText = "Tedarikçi İzinleri Düzenle";
        this.Title = "Tedarikçi İzinleri Düzenle";
        if (!IsPostBack)
        {
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/login.aspx?ReturnUrl=/supplieradmin/default.aspx");
            }
            if (Request.QueryString["IND"] == "" || Request.QueryString.Count <= 0)
            {
                Response.Write("<script>self.close();</script>");
            }
            GetPreviliges(Convert.ToInt32(Request.QueryString["IND"]));

        }
        GetCheckBoxPreviliges();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        SetPreviliges(Convert.ToInt32(Request.QueryString["IND"]));
    }
    protected void cball2_CheckedChanged(object sender, EventArgs e)
    {

        chkUAlternative.Checked = cball2.Checked;
        chkUBrand.Checked = cball2.Checked;
        chkUBarcode.Checked = cball2.Checked;
        chkUStockQty.Checked = cball2.Checked;
        chkUTextile.Checked = cball2.Checked;
        chkUPurchasePrice.Checked = cball2.Checked;
        chkUNote.Checked = cball2.Checked;
        chkUImage.Checked = cball2.Checked;
        chkUVideo.Checked = cball2.Checked;
        chkUUnit.Checked = cball2.Checked;
        chkUColorAndSize.Checked = cball2.Checked;
        chkUVariant.Checked = cball2.Checked;
        chkUAlternative.Checked = cball2.Checked;
        chkUSupplies.Checked = cball2.Checked;
        chkUCat.Checked = cball2.Checked;
        chkUSalePrice.Checked = cball2.Checked;

    }
    protected void cball1_CheckedChanged(object sender, EventArgs e)
    {
        chkIAlternative.Checked = cball1.Checked;
        chkIBrand.Checked = cball1.Checked;
        chkIBarcode.Checked = cball1.Checked;
        chkIStockQty.Checked = cball1.Checked;
        chkITextile.Checked = cball1.Checked;
        chkIPurchasePrice.Checked = cball1.Checked;
        chkINote.Checked = cball1.Checked;
        chkIImage.Checked = cball1.Checked;
        chkIVideo.Checked = cball1.Checked;
        chkIUnit.Checked = cball1.Checked;
        chkIColorAndSize.Checked = cball1.Checked;
        chkIVariant.Checked = cball1.Checked;
        chkIAlternative.Checked = cball1.Checked;
        chkISupplies.Checked = cball1.Checked;
        chkISalePrice.Checked = cball1.Checked;
    } 
}