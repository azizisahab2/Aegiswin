﻿using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aegiswin
{
    public partial class searchQuery : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "SELECT * from tbl_query";
                DataSet ds = mod.FillDs(sel);
                int len = ds.Tables[0].Rows.Count;
                for (int i = 0; i < len; i++)
                {
                    DropDownList1.Items.Add(ds.Tables[0].Rows[i]["serviceName"].ToString());
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            show();
        }

        public void show()
        {            
            lit_msg1.Text = "";
            string sel = "SELECT * from tbl_query where serviceName='" + DropDownList1.Text + "'";
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