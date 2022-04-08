using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aegiswin
{
    public partial class search_querybyDate : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            show2();
        }

        public void show2()
        {
            string sel = "Select * from tbl_query where ddate>='" + txt_dateFrom.Text + "' and ddate<= '" + txt_dateTo.Text + "'";
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
                lit_msg1.Text = "Record is not found";
            }
        }
    }
}