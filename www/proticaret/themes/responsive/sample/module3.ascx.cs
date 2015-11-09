using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;


namespace ASPNetPortal
{

    public partial class module3 : PortalModuleControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IsEditable = true;
            EditText = GetGlobalResourceObject("lang", "edit").ToString();
            EditUrl = "/admin/duzenle.aspx";
            EditWidth = 800;
            EditHeight = 600;
        }
        
        protected void Button1_Click(object sender, System.EventArgs e)
        {
            Label1.Text = "Test Modülü";
        }

    }
    
}