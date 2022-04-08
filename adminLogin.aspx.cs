using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aegiswin
{
    public partial class adminLogin : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string str1 = "INSERT into tbl_loginHistory(addlatitude,addlongitude) values ('" + lit_addlatitude.Text + "','" + lit_addlongitude.Text + "')";
            mod.InsDelUp(str1);

            string str = " select * from tbl_adminLogin where user_name='" + txt_userName.Text + "' and password='" + txt_password.Text + "' ";
            DataSet ds = mod.FillDs(str);
            int len = ds.Tables[0].Rows.Count;
            if (len > 0)
            {
                Session["admin"] = ds.Tables[0].Rows[0]["Id"].ToString();                
                Response.Redirect("searchQuery_emailMobile.aspx");
            }
            else
            {
                lit_msg.Text = " Username or password Mismatch";
            }
        }
    }
}