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
    public partial class Addcustomer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        public int accountNumber = 0;
        public int debit = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void FieldEmpty()
        {
            txtName.Text = " ";
            drpType.Text = " ";
            txtOpeningBal.Text = " ";
            drpGender.Text = " ";
            txtPhone.Text = " ";
            txtAddress.Text = " ";
            txtEmail.Text = " ";
            txtEmail.Text = " ";
        }

        public int getAccountNo()
        {

            con.Open();
            String query = "SELECT top 1 AccountNumber FROM CustomerDetails ORDER BY AccountNumber DESC";
            using (SqlCommand SDA = new SqlCommand(query, con))
            {
                SqlDataReader data = SDA.ExecuteReader();
                if (data.Read())
                {
                    accountNumber = (int)data.GetValue(0) + 1;

                }
            }

            con.Close();
            return accountNumber;
        }
        public int exixtingAccountNo()
        {

            con.Open();
            String query = "SELECT top 1 AccountNumber FROM CustomerDetails ORDER BY AccountNumber DESC";
            using (SqlCommand SDA = new SqlCommand(query, con))
            {
                SqlDataReader data = SDA.ExecuteReader();
                if (data.Read())
                {
                    accountNumber = (int)data.GetValue(0);

                }
            }

            con.Close();
            return accountNumber;
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            FieldEmpty();

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (txtName.Text == "")
            {
                string script = "alert(\"Please enter Customer Name  \");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

            }
            if (drpType.Text == "select")
            {
                string script = "alert(\"Please enter Account Type   \");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
            if (txtOpeningBal.Text == "")
            {
                string script = "alert(\"Please enter Account  opening balance amount \");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
            if (drpGender.Text == "select ")
            {
                string script = "alert(\"Please enter Gender \");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
            if (txtPhone.Text == " ")
            {
                string script = "alert(\"Please enter Your Phone Number \");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
            if (txtAddress.Text == " ")
            {
                string script = "alert(\"Please enter Your Address \");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
            if (txtEmail.Text == " ")
            {
                string script = "alert(\"Please enter Your Email ID \");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
            else
            {
                try
            {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                    con.Open();

                    SqlCommand cmd = new SqlCommand("INSERT INTO CustomerDetails(CustomerName,AccountType,AccountNumber,Gender,PhoneNumber,Address,EmailId) VALUES('" + txtName.Text + "','" + drpType.Text + "'," + getAccountNo().ToString() + ",'" + drpGender.Text + "', " + txtPhone.Text + " ,'" + txtAddress.Text + "','" + txtEmail.Text + "')", con); ; ;
                    int a = cmd.ExecuteNonQuery();
                    if (a > 0)
                    {
                        SqlCommand cmd1 = new SqlCommand("INSERT INTO AccountTransaction(AccountNumber,CustomerName, AccountType,TransactionType,Credit,TransactionDate,MainBalance)" +
                                                                           " VALUES('" + exixtingAccountNo().ToString() + "','" + txtName.Text + "','" + drpType.Text + "', ' Credit '," + txtOpeningBal.Text + ", " + DateTime.Now + "' ," + txtOpeningBal.Text + ")", con);
                        int b = cmd1.ExecuteNonQuery();


                        if (b > 0)
                        {


                            string script = "alert(\"Account Added Succesfully\");";
                            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                        }
                    }
                    else
                    {
                        string script = "alert(\" Can't Add new Account\");";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                    }

                    con.Close();
                }
                catch (SqlException sqlE)
                {
                    string script = "alert(" +sqlE.ToString()+");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
                this.DataBind();
            }
        }

        private static void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}

