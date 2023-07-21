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
    public partial class HomePage : System.Web.UI.Page
    {

        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((String)Session["type"] == "HOST" || (String)Session["type"] == "Host")
                Response.Redirect("HostHomePage.aspx");


            GridView1.AutoGenerateColumns = false;
            if (Session["id"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("HomePageAll", con);  //instantiate SQL command 
            
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


            protected void btn_Click(object sender, EventArgs e)
        {
            rep_bind();
            //SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            //con.Open(); // open sql Connection
            //SqlCommand cmd;
            //try
            //{
            //    cmd = new SqlCommand("HomePageFilters", con);  //instantiate SQL command 
            //    cmd.Parameters.Add("@city", txtCity.Text.Trim());
            //    cmd.Parameters.Add("@rating", txtrating.Text.Trim());
            //    cmd.Parameters.Add("@noOfGuests", txtGuests.Text.Trim());
            //    cmd.Parameters.Add("@minprice", txtMinPrice.Text.Trim());
            //    cmd.Parameters.Add("@maxprice", txtMaxPrice.Text.Trim());
            //    cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
            //    SqlDataReader dr = cmd.ExecuteReader();
            //    if (dr.Read())
            //    {
            //        System.Diagnostics.Debug.WriteLine("HomePage!!!");
            //    }
            //     GridView1.DataSource = dr;
            //    GridView1.DataBind();
            //    con.Close();
            //}
            //catch (SqlException ex)
            //{
            //    //(String)Session["id"]
            //    System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            //}
        }
        protected void linkButton(object sender, EventArgs e)
        {
            Response.Redirect("VenueDetails.aspx?Venueid");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int crow;
            crow = Convert.ToInt32(e.CommandArgument.ToString());
            string v = GridView1.Rows[crow].Cells[0].Text;
            Session["vid"] = v;
            direct(v);
           

            
        }
        protected void direct(string a)
        {

            Response.Redirect("VenueDetails.aspx?vid=" + a);
        }


        private void rep_bind()
        {
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter adp = new SqlDataAdapter();
            try
            {

                cmd = new SqlCommand("HomePageFilters", con);  //instantiate SQL command
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@city", txtCity.Text.Trim());
                cmd.Parameters.AddWithValue("@rating", txtrating.Text.Trim());
                cmd.Parameters.AddWithValue("@noOfGuests", txtGuests.Text.Trim());
                cmd.Parameters.AddWithValue("@minprice", txtMinPrice.Text.Trim());
                cmd.Parameters.AddWithValue("@maxprice", txtMaxPrice.Text.Trim());
                adp.SelectCommand = cmd;
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                else
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
            }
            finally
            {
                dt.Clear();
                dt.Dispose();
                cmd.Dispose();
                con.Close();
            }
        }
    

    }
}