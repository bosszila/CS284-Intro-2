using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;
using System.Data;
using System.Reflection;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    public void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            const string pgConstring = "Server=localhost;Port=5432;Database=postgres;User Id=postgres;Password=1234;";
            NpgsqlConnection conx = new Npgsql.NpgsqlConnection(pgConstring);
            if (conx.State != ConnectionState.Open) { conx.Open(); }
            if (conx.State == ConnectionState.Open)
            {
                string cmd1 = string.Format("SELECT user_id, user_pass, firstname, lastname, user_name FROM public.user_login WHERE user_name ='{0}';"
             , t3.Text
             );

                var rder = new Npgsql.NpgsqlDataAdapter(cmd1, conx);
                DataSet ds = new DataSet();
                rder.Fill(ds);

                var usr = ConvertDataTable<user_login>(ds.Tables[0]);

                if (usr.Count <= 0 ||usr == null)
                {
                   
                    if (t1.Text == "" || t2.Text == "" || t3.Text == "" || t4.Text == "" || t5.Text == "") {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "กรุณากรอกข้อมูลให้ครบ" + "');", true);
                    }
                    else
                    {
                        string text = string.Format("INSERT INTO user_login( user_pass, firstname, lastname, user_name,user_grade) VALUES ('{0}','{1}','{2}','{3}','{4}');"
                 , t4.Text
                   , t1.Text
                     , t2.Text
                     , t3.Text
                    , t5.Text);
                        NpgsqlCommand cmd = new Npgsql.NpgsqlCommand(text, conx);
                     cmd.ExecuteNonQuery();
                        Response.Redirect("register2.aspx");

                    }
                    
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "มีuserนี้อยู่ในระบบอยู่แล้ว" + "');", true);
                }

    
   
                }
            

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void t1_TextChanged(object sender, EventArgs e)
    {

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