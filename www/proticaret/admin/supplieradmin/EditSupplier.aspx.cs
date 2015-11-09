using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using ASPNetPortal;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;

public partial class EditSupplier : PortalAdminPage
{

    #region Database Variables
    private static DatabaseDB DB = new DatabaseDB();
    private static SqlCommand CMDCity;
    private static SqlCommand CMDProvider;
    private static SqlCommand CMDInsert;
    private static SqlCommand CMDGetSupplier;
    private static SqlDataReader ReaderSupplier;
    private static SqlDataReader ReaderCity;
    private static SqlDataReader ReaderProvider;
    private static SqlDataAdapter AdapterSupplier;
    private static DataSet dataSetSupplier;
    #endregion

    #region Supplier Properties

    //private string SCompanyName { get { return HttpUtility.HtmlEncode(ddlProviders.SelectedItem.Text); } set { value = HttpUtility.HtmlEncode(ddlProviders.SelectedItem.Text); } }

    private string SEMail { get { return HttpUtility.HtmlEncode(txtSMail.Value); } set { value = HttpUtility.HtmlEncode(txtSMail.Value); } }
    private string SUserName { get { return HttpUtility.HtmlEncode(txtSName.Value); } set { value = HttpUtility.HtmlEncode(txtSName.Value); } }
    private string SUPassword { get { return HttpUtility.HtmlEncode(txtSPassword.Value); } set { value = HttpUtility.HtmlEncode(txtSPassword.Value); } }
    private string SPhoneNumber { get { return HttpUtility.HtmlEncode(txtSPhone.Value); } set { value = HttpUtility.HtmlEncode(txtSPhone.Value); } }
    private string SFaxNumber { get { return HttpUtility.HtmlEncode(txtSFax.Value); } set { value = HttpUtility.HtmlEncode(txtSFax.Value); } }
    private string SMobilePhone { get { return HttpUtility.HtmlEncode(txtSMobile.Value); } set { value = HttpUtility.HtmlEncode(txtSMobile.Value); } }
    private string SAddress { get { return HttpUtility.HtmlEncode(txtSAddress.Value); } set { value = HttpUtility.HtmlEncode(txtSAddress.Value); } }
    private string SCompanyName
    {
        get
        {
            return ddlProviders.SelectedItem.Text;   
        }

        set
        {
            if (ddlProviders.SelectedItem.Selected)
            {
                value = ddlProviders.SelectedItem.Text;
            }
        }
    }
    private int SCityId
    {
        get
        {
            return ddlCities.SelectedIndex;
        }
        set
        {
            if (ddlCities.SelectedItem.Selected)
            {
                value = ddlCities.SelectedIndex;
            }
        }
    }

    private int SCompanyId
    {
        get
        {
            return Convert.ToInt32(ddlProviders.SelectedValue);
        }
        set
        {
            if (ddlProviders.SelectedItem.Selected)
            {
                value = Convert.ToInt32(ddlProviders.SelectedValue);
            }
        }
    }

    private bool SIsActive
    {
        get
        {
            return chkSupplierIsActive.Checked;
        }
        set
        {
            if (chkSupplierIsActive.Checked)
            {
                value = true;
            }
            else
            {
                value = false;
            }
        }
    }
    private bool SIsSupplier = true;
    //kurumsal olarak kaydediliyor.
    private int SUserType = 1;
    private DateTime SCreatedDate = DateTime.Today;
    private int CurrentPortalId = Convert.ToInt32(System.Web.Configuration.WebConfigurationManager.AppSettings["PortalId"]);
    private int SupId;

    private List<object> getAllValuesFromWeb = new List<object>();
    //private Dictionary<string, char> supplierPreviliges = new Dictionary<string, char>();

    #endregion

    #region Get Input Values From Web Form. This is returning a List<object> variable and it's public. Method name is AllValuesFromWebToArray()
    public List<object> AllValuesFromWebToArray()
    {
        getAllValuesFromWeb.Add(CurrentPortalId);
        getAllValuesFromWeb.Add(SCompanyName);
        getAllValuesFromWeb.Add(SEMail);
        getAllValuesFromWeb.Add(SUserName);
        getAllValuesFromWeb.Add(SUPassword);
        getAllValuesFromWeb.Add(SPhoneNumber);
        getAllValuesFromWeb.Add(SFaxNumber);
        getAllValuesFromWeb.Add(SMobilePhone);
        getAllValuesFromWeb.Add(SAddress);
        getAllValuesFromWeb.Add(SCityId);
        getAllValuesFromWeb.Add(SCompanyId);
        getAllValuesFromWeb.Add(SIsActive);
        getAllValuesFromWeb.Add(SIsSupplier);

        return getAllValuesFromWeb;
    }
    #endregion

    #region Get All Cities From Database
    private void Citys()
    {
        Dictionary<string, string> CRMCities = new Dictionary<string, string>();

        CMDCity = new SqlCommand("SELECT CityId, CityName FROM CRMCitys WHERE PortalId = @PortalId", DB.conn);
        CMDCity.Parameters.AddWithValue("@PortalId", CurrentPortalId);

        ddlCities.Items.Add("İl Seçiniz");
        DB.connectDb();

        ReaderCity = CMDCity.ExecuteReader();
        while (ReaderCity.Read())
        {
            CRMCities.Add(ReaderCity["CityId"].ToString(), ReaderCity["CityName"].ToString());
        }

        DB.disconnectDb();

        ddlCities.Items.Clear();
        ddlCities.DataSource = CRMCities;
        ddlCities.DataTextField = "Value";
        ddlCities.DataValueField = "Key";
        ddlCities.DataBind();
    }
    #endregion

    #region Get All Providers From Database

    private void Companys()
    {

        Dictionary<int, string> Providers = new Dictionary<int, string>();

        CMDProvider = new SqlCommand("SELECT ProviderId, ProviderName FROM Providers", DB.conn);

        DB.connectDb();

        ReaderProvider = CMDProvider.ExecuteReader();
        while (ReaderProvider.Read())
        {
            Providers.Add(Convert.ToInt32(ReaderProvider["ProviderId"]), ReaderProvider["ProviderName"].ToString());
        }

        Providers.Remove(0);
        Providers.Add(-1, "Bir Tedarikçi Seçiniz");

        DB.disconnectDb();

        ddlProviders.Items.Clear();
        ddlProviders.DataSource = Providers;
        ddlProviders.DataTextField = "Value";
        ddlProviders.DataValueField = "Key";
        ddlProviders.DataBind();
    }

    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Citys();
            Companys();
            
            //Select Cities from DropdownList
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/login.aspx?ReturnUrl=/supplieradmin/default.aspx");
            }
            else
            {
                if (Request.QueryString["IND"] != "0")
                {
                    this.Page.Title = "Kayıtlı Kullanıcı Düzenle";
                    spnTitle.InnerText = "Kayıtlı Kullanıcı Düzenle";

                    GetSupplier(Convert.ToInt32(Request.QueryString["IND"]));
                }
                else
                {
                    this.Page.Title = "Yeni Kullanıcı Ekle";
                    spnTitle.InnerText = "Yeni Kullanıcı Ekle";
                }
            }
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        InsertSupplier();
        // Save the comes.

        ////Response.Redirect("EditSupplier.aspx?IND=" + SupId);
        //Redirect to base page with IND


        // Reload the main form.

        //Response.Write("<script language='javascript'>self.close();</script>");
        // Close this form.

    }

    #region Insert All Values From Web Form To Database

    private void InsertSupplier()
    {
        try
        {
            CMDInsert = new SqlCommand();
            CMDInsert.Connection = DB.conn;
            CMDInsert.CommandText = "AddUser3";
            CMDInsert.CommandType = CommandType.StoredProcedure;

            DB.connectDb();
            if (SCompanyId != 0)
            {
                CMDInsert.Parameters.AddWithValue("@PortalId", CurrentPortalId);
                CMDInsert.Parameters.Add(new SqlParameter("@Name", SqlDbType.NVarChar)).Value = SUserName;
                CMDInsert.Parameters.Add(new SqlParameter("@FullName", SqlDbType.NVarChar)).Value = SUserName.ToUpper();
                CMDInsert.Parameters.Add(new SqlParameter("@Email", SqlDbType.NVarChar)).Value = SEMail;
                CMDInsert.Parameters.Add(new SqlParameter("@CompanyEmail", SqlDbType.NVarChar)).Value = SEMail;
                CMDInsert.Parameters.Add(new SqlParameter("@Password", SqlDbType.NVarChar)).Value = SUPassword;
                CMDInsert.Parameters.Add(new SqlParameter("@Phone1", SqlDbType.NVarChar, 14)).Value = SPhoneNumber;
                CMDInsert.Parameters.Add(new SqlParameter("@CompanyPhone1", SqlDbType.NVarChar, 14)).Value = SPhoneNumber;
                CMDInsert.Parameters.Add(new SqlParameter("@MobilePhone", SqlDbType.NVarChar, 14)).Value = SMobilePhone;
                CMDInsert.Parameters.Add(new SqlParameter("@FaxNumber", SqlDbType.NVarChar, 14)).Value = SFaxNumber;
                CMDInsert.Parameters.Add(new SqlParameter("@Addres", SqlDbType.NVarChar, 400)).Value = SAddress;
                CMDInsert.Parameters.Add(new SqlParameter("@CompanyAddres", SqlDbType.NVarChar, 400)).Value = SAddress;
                CMDInsert.Parameters.Add(new SqlParameter("@CityId", SqlDbType.NVarChar, 20)).Value = SCityId;
                CMDInsert.Parameters.Add(new SqlParameter("@CompanyCityId", SqlDbType.NVarChar, 20)).Value = SCityId;
                CMDInsert.Parameters.Add(new SqlParameter("@CompanyId", SqlDbType.Int)).Value = SCompanyId;
                CMDInsert.Parameters.Add(new SqlParameter("@CompanyName", SqlDbType.NVarChar, 100)).Value = SCompanyName;
                CMDInsert.Parameters.Add(new SqlParameter("@IsActive", SqlDbType.Bit)).Value = SIsActive;
                CMDInsert.Parameters.Add(new SqlParameter("@IsSupplier", SqlDbType.Bit)).Value = SIsSupplier;
                CMDInsert.Parameters.Add(new SqlParameter("@UserType", SqlDbType.Int)).Value = SUserType;


                SqlParameter getReturn = new SqlParameter("@UserId", SqlDbType.Int);
                getReturn.Direction = ParameterDirection.Output;

                CMDInsert.Parameters.Add(getReturn);

                if (CMDInsert.ExecuteNonQuery() >= 1)
                {

                    SupId = (int)CMDInsert.Parameters["@UserId"].Value;
                    Response.Write("<script>alert('Ekleme işlemi başarıyla gerçekleşti.')</script>");
                    Response.Write("<script language='javascript'>parent.$.fancybox.close(parent.location.reload(true) );</script>");
                }
                else
                {
                    SupId = (int)CMDInsert.Parameters["@UserId"].Value;
                    Response.Write("<script>alert('Ekleme işlemi başarısız.Bu kullanıcı zaten bulunmaktadır.')</script>");
                    Response.Write("<script>window.opener.location.reload(true);</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Lütfen bir tedarikçi seçiniz.')</script>");
                Response.Write("<script>window.opener.location.reload(true);</script>");
            }
        }
        catch (SqlException ex)
        {
            lblMessage.InnerHtml = "Ekleme işlemi başarısız.Bu kullanıcı zaten bulunmaktadır.";
        }
        catch (Exception ex)
        {
            //lblMessage.InnerHtml = "<b>" + ex.Source.ToString() + " >> " + ex.Message.ToString() + "<br />";
            lblMessage.InnerHtml = "Ekleme işlemi başarısız.Bu kullanıcı zaten bulunmaktadır.";
        }
        finally
        {
            DB.disconnectDb();
        }
    }

    #endregion

    #region Get Supplier From Database

    private void GetSupplier(int supid)
    {
        using (CMDGetSupplier = new SqlCommand("GetSuppliers", DB.conn))
        {
            CMDGetSupplier.CommandType = CommandType.StoredProcedure;
            CMDGetSupplier.Parameters.AddWithValue("@UserId", supid);
            try
            {
                DB.connectDb();

                ReaderSupplier = CMDGetSupplier.ExecuteReader();
                while (ReaderSupplier.Read())
                {

                    txtSName.Value = ReaderSupplier["FullName"].ToString();
                    txtSMail.Value = ReaderSupplier["EMail"].ToString();
                    txtSPassword.Value = ReaderSupplier["Password"].ToString();
                    //txtSCompany.Value = ReaderSupplier["CompanyName"].ToString();
                    txtSPhone.Value = ReaderSupplier["CompanyPhone1"].ToString();
                    txtSFax.Value = ReaderSupplier["FaxNumber"].ToString();
                    txtSMobile.Value = ReaderSupplier["MobilePhone"].ToString();
                    txtSAddress.Value = ReaderSupplier["CompanyAddres"].ToString();
                    ddlCities.SelectedIndex = (int)ReaderSupplier["CompanyCityId"];
                    ddlProviders.SelectedIndex = (int)ReaderProvider["ProviderId"];

                    bool activePassive = (bool)ReaderSupplier["IsActive"] ? chkSupplierIsActive.Checked = true : chkSupplierIsActive.Checked = false;

                }
                ReaderSupplier.Close();
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
                DB.disconnectDb();
            }
        }
    }

    #endregion

    #region doSeo method

    private static string doSeo(string word)
    {
        //replace chracters...
        word = word.Replace(" ", "");
        word = word.Replace("?", "-");
        word = word.Replace("!", "-");

        //replace upper Turkish letters...
        word = word.Replace("İ", "I");
        word = word.Replace("Ü", "U");
        word = word.Replace("Ö", "O");
        word = word.Replace("Ğ", "G");
        word = word.Replace("Ş", "S");
        word = word.Replace("Ç", "C");

        //replace lower Turkish letters...
        word = word.Replace("ı", "i");
        word = word.Replace("ü", "u");
        word = word.Replace("ö", "o");
        word = word.Replace("ğ", "g");
        word = word.Replace("ş", "s");
        word = word.Replace("ç", "c");

        return word;
    }

    #endregion
}