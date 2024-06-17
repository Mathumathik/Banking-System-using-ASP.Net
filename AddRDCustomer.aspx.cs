using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPmini
{
    public partial class AddRDCustomer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        public int accountNumber = 0;
        public int debit = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                con.Open();

                SqlCommand cmd = new SqlCommand("INSERT INTO CustomerDetails(CustomerName,AccountType,AccountNumber,Gender,PhoneNumber,Address,EmailId,MainBalance) VALUES('" + txtCustomerName.Text + "','" + DropDownList1.Text + "','" + txtNumber + "','" + txtGender.Text + "', " + txtPhone.Text + " ,'" + txtAddress.Text + "','" + txtEmail.Text + "','" + txtOpeningBal.Text + "')", con); ; ;
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    
                        string script = "alert(\"RD Account Added Succesfully\");";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                    
                }
                else
                {
                    string script = "alert(\" Can't Add new Account\");";
                }

                con.Close();

            }
            catch (SqlException sqlE)
            {
                string script = "alert(\" sqlE.ToString()\");";
            }
            this.DataBind();
        }

        protected void txtNumber_TextChanged(object sender, EventArgs e)
        {
            try
            {


                con.Open();
                SqlCommand cmd = new SqlCommand("Select AccountNumber, Gender, PhoneNumber, EmailId, CustomerName, Address from CustomerDetails where Accounttype = 'RD'" + txtNumber.Text, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    txtNumber.Text = sdr["AccountNumber"].ToString();
                    txtCustomerName.Text = sdr["CustomerName"].ToString();
                    txtAddress.Text = sdr["Address"].ToString();
                    txtGender.Text = sdr["Gender"].ToString();
                    txtPhone.Text = sdr["PhoneNumber"].ToString();
                    txtEmail.Text = sdr["EmailId"].ToString();
                    
                }

                else
                {
                    string script = "alert(\"No data found\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
                con.Close();
            }
            catch (SqlException sqlE)
            {
                string script = "alert(\"sqlE.ToString()\");";
            }
        }
    }
}