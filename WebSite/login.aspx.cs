using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;
using System.Data;
using System.Data.Odbc;
using System.Reflection;

public partial class login  : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("register1.aspx");
    }


    const string pgConstring = "Server=localhost;Port=5432;Database=postgres;User Id=postgres;Password=1234;";
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
        NpgsqlConnection conx = new Npgsql.NpgsqlConnection(pgConstring);
        if (conx.State != ConnectionState.Open) { conx.Open(); }

        if (conx.State == ConnectionState.Open)
        {
            string cmd = string.Format("SELECT user_id, user_pass, firstname, lastname, user_name FROM public.user_login WHERE user_name ='{0}' AND user_pass='{1}';"
                , tbUsername.Text
                , tbPassword.Text);

            var rder = new Npgsql.NpgsqlDataAdapter(cmd, conx);
            DataSet ds = new DataSet();
            rder.Fill(ds);

            var usr = ConvertDataTable<user_login>(ds.Tables[0]);

            if (usr.Count <= 0 || usr == null)
            {
                //login ไม่ได้
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "กรุณาใส่ข้อมูลให้ถูกต้อง หรือลงทะเบียนใหม่!" + "');", true);
                //Response.Redirect("register1.aspx");
            }
            else
            {
                    //login success
                    conx.Close();
                Response.Redirect("register2.aspx");
            }
        }
        }
        catch(Exception ex)
        {

        }

    }

    private List<T> ConvertDataTable<T>(DataTable dt)
    {
        List<T> data = new List<T>();
        foreach (DataRow row in dt.Rows)
        {
            T item = GetItem<T>(row);
            data.Add(item);
        }
        return data;
    }

    private T GetItem<T>(DataRow dr)
    {
        Type temp = typeof(T);
        T obj = Activator.CreateInstance<T>();

        foreach (DataColumn column in dr.Table.Columns)
        {
            foreach (PropertyInfo pro in temp.GetProperties())
            {
                if (pro.Name == column.ColumnName)
                    pro.SetValue(obj, dr[column.ColumnName], null);
                else
                    continue;
            }
        }
        return obj;
    }

    public class user_login
    {
        public long user_id { get; set; }
        public string user_pass { get; set; }
        public string firstname { get; set; }
        public string lastname { get; set; }
        public string user_name { get; set; }
    }
}
