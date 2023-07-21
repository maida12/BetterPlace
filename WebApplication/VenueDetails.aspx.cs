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
    public partial class WebForm4 : System.Web.UI.Page
    {

        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("VenueDetails", con);  //instantiate SQL command 
                cmd.Parameters.Add("@vid", Request.QueryString["vid"].ToString());

                System.Diagnostics.Debug.WriteLine(Request.QueryString["vid"].ToString());
                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                SqlDataReader dr = cmd.ExecuteReader();
                DetailsView1.DataSource = dr;
                DetailsView1.DataBind();
                con.Close();
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Checkout", con);  //instantiate SQL command 
                cmd.Parameters.Add("@vid", (String)Session["vid"]);
                cmd.Parameters.Add("@gid", 1);

                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                SqlDataReader dr = cmd.ExecuteReader();
                Response.Redirect("rating.aspx");
                con.Close();
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }

        }
    }
}