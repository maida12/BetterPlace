using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class MyVenue : System.Web.UI.Page
    {

        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.AutoGenerateColumns = false;


            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("MyVenues", con);  //instantiate SQL command 
                cmd.Parameters.Add("@hostid", (String)Session["id"]);
                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                con.Close();
            }
            catch (SqlException ex)
            {
                //(String)Session["id"]
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }


        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int crow;
            crow = Convert.ToInt32(e.CommandArgument.ToString());
            string v = GridView1.Rows[crow].Cells[0].Text;

            if (e.CommandName == "del")
            {


                SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
                con.Open(); // open sql Connection
                SqlCommand cmd;
                try
                {
                    cmd = new SqlCommand("DeleteVenue", con);  //instantiate SQL command 
                    cmd.Parameters.Add("@vid", v);
                    cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                    SqlDataReader dr = cmd.ExecuteReader();
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                    con.Close();
                }
                catch (SqlException ex)
                {
                    //(String)Session["id"]
                    System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

                }
                Response.Redirect("HostHomePage.aspx");

            }
            if(e.CommandName=="edit")
            {
                Response.Redirect("EditVenue.aspx?vid="+v);
            }



        }
    }
}