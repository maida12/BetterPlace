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
    public partial class EditProfile : System.Web.UI.Page
    {

        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }
        

        protected void btn_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            SqlParameter sp1 = new SqlParameter("@newFN", txtName.Text.Trim());
            SqlParameter sp2 = new SqlParameter("@id", (String)Session["id"]);
            SqlParameter sp3 = new SqlParameter("@newLN", txtCity.Text.Trim());
            SqlParameter sp4 = new SqlParameter("@newPW", txtUserType.Text.Trim());

            //   resolve hostemail and noOfnights

            try
            {
                if (txtName.Text.Trim() != "")
                {
                    cmd = new SqlCommand("EditUserFN", con);
                    cmd.Parameters.Add(sp1);
                    cmd.Parameters.Add(sp2);
                    cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        System.Diagnostics.Debug.WriteLine("First Name edited successfully");

                    }
                    cmd.Parameters.Clear();
                }
                if (txtCity.Text.Trim() != "")
                {
                    cmd = new SqlCommand("EditUserLN", con);
                    cmd.Parameters.Add(sp3);
                    cmd.Parameters.Add(sp2);
                    cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        System.Diagnostics.Debug.WriteLine("Last Name edited successfully");

                    }
                    cmd.Parameters.Clear();
                }
                if (txtUserType.Text.Trim() != "")
                {
                    cmd = new SqlCommand("EditUserPW", con);
                    cmd.Parameters.Add(sp4);
                    cmd.Parameters.Add(sp2);
                    cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        System.Diagnostics.Debug.WriteLine("Password edited successfully");

                    }
                    cmd.Parameters.Clear();
                }
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
                Label1.Visible = true;
            }

            return; //return 

        }
    }
}