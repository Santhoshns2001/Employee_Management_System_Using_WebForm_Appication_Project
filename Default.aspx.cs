using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class _Default : Page
    {

        SqlConnection sqlConnection = new SqlConnection(@"Data Source=DELL\SQLEXPRESS;Initial Catalog=WindowForm;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) 
            {
                GetEmployee_List();
            }
        }

       
        protected void Insert_Button(object sender, EventArgs e)
        {
            sqlConnection.Open();
            string insert = "exec usp_Insert " + TextBox1.Text + ", '" + TextBox2.Text + "', '" + TextBox3.Text + "', " + TextBox4.Text + ", '" + DropDownList1.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(insert, sqlConnection);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this,this.GetType(),"script","alert ('Insertion data is succuss');",true);
            GetEmployee_List();
            sqlConnection.Close();
        }

        protected void Update_Button(object sender, EventArgs e)
        {
            string UpdateQuery = "exec usp_Update " + TextBox1.Text + ", '" + TextBox2.Text + "', '" + TextBox3.Text + "', " + TextBox4.Text + ", '" + DropDownList1.SelectedValue + "'";
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand(UpdateQuery, sqlConnection);
            sqlCommand.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert ('Updated  data is succussfully');", true);
            GetEmployee_List();
            sqlConnection.Close();
        }

        protected void Delete_Button(object sender, EventArgs e)
        {
            sqlConnection.Open();
            string deleteQuery = "exec usp_Delete  " + TextBox1.Text + "  ";
            SqlCommand command = new SqlCommand(deleteQuery, sqlConnection);
            command.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert ('Deleted  data  succussfully');", true);
            GetEmployee_List();
            sqlConnection.Close();
        }

        protected void Fetch_Button(object sender, EventArgs e)
        { 
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("exec usp_Fetch  " +TextBox1.Text+" ",sqlConnection);
            sqlCommand.ExecuteNonQuery();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            sqlDataAdapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            sqlConnection.Close();
        }

        protected void Clear_Button(object sender, EventArgs e)
        {
            TextBox1.Text= TextBox2.Text =  TextBox3.Text=  TextBox4.Text = DropDownList1.SelectedValue = "";
        }

        void GetEmployee_List()
        {
            SqlDataAdapter sqlDataAdapter   = new SqlDataAdapter("select * from Employee",sqlConnection); 
            DataTable dt = new DataTable();
            sqlDataAdapter.Fill(dt);    
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            sqlConnection.Open();
            SqlCommand command = new SqlCommand("exec usp_FetchByName '"+ TextBox2.Text +"' ",sqlConnection);
            command.ExecuteNonQuery();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sqlDataAdapter.Fill(dt);
            GridView1.DataSource=dt;
            GridView1.DataBind();
            sqlConnection.Close();
        }
    }
}