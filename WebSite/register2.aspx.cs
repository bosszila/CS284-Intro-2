using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



    public partial class Default2 : System.Web.UI.Page
    {

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (R1.Checked && RT1.Checked)
                Response.Redirect("table1-1.aspx");
            else if (R1.Checked && RT2.Checked)
                Response.Redirect("table1-2.aspx");
            else if (R2.Checked && RT1.Checked)
                Response.Redirect("table2-1.aspx");
            else if (R2.Checked && RT2.Checked)
                Response.Redirect("table2-2.aspx");
            else if (R3.Checked && RT1.Checked)
                Response.Redirect("table3-1.aspx");
            else if (R3.Checked && RT2.Checked)
                Response.Redirect("table3-2.aspx");
            else if (R4.Checked && RT1.Checked)
                Response.Redirect("table4-1.aspx");
            else if (R4.Checked && RT2.Checked)
                Response.Redirect("table4-2.aspx");
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
}
