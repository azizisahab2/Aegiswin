using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aegiswin
{
    public partial class searchQuery_emailMobile : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_search1_Click(object sender, EventArgs e)
        {
            if (txt_email.Text != "")
            {
                string sel = "SELECT * from tbl_query where Email='" + txt_email.Text + "'";
                DataSet ds = mod.FillDs(sel);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView2.DataSource = ds;
                    GridView2.DataBind();
                }
                else
                {
                    GridView2.DataSource = ds;
                    GridView2.DataBind();
                    lit_msg.Text = "Record is not found";
                }
            }            
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            if (txt_phone.Text != "")
            {
                string sel = "SELECT * from tbl_query where Mobile='" + txt_phone.Text + "'";
                DataSet ds = mod.FillDs(sel);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                else
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    lit_msg1.Text = "Record is not found";
                }
            }            
        }
    }
}