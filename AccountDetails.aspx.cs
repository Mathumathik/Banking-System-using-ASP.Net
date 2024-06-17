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
    public partial class AccountDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        
        public int amt = 0;
      
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void txtAccountNo_TextChanged(object sender, EventArgs e)
        {
            try
            {

                
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT AccountNumber,CustomerName, MainBalance FROM AccountTransaction WHERE AccountNumber = " + txtAccountNo.Text, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    txtAccountNo.Text = sdr["AccountNumber"].ToString();
                    txtName.Text = sdr["CustomerName"].ToString();
                    txtbal.Text = sdr["MainBalance"].ToString();

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
        protected void butSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string bal =txtbal.Text.ToString();
                string man = txtamt.Text.ToString();
                Double amt = 0;
                if (drpAccountType.SelectedValue == "Saving")
                {
                    if (drpTransactionType.SelectedValue == "Credit")
                    {

                        amt = Convert.ToDouble(bal) + Convert.ToDouble(man);

                    }
                    else
                    {

                        amt = Convert.ToDouble(bal) - Convert.ToDouble(man);
                    }
                }
                else
                {
                    //amt = Convert.ToDouble(man);
                }
              con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO AccountTransaction ( AccountNumber,CustomerName,TransactionDate," + drpTransactionType.SelectedValue.ToString() + ",MainBalance,TransactionType,AccountType) VALUES ( "+ txtAccountNo.Text +", '" + txtName.Text+ "','"+DateTime.UtcNow.ToString()+ "', " + txtamt.Text + "," + amt.ToString() + ", '" + drpTransactionType.SelectedValue.ToString() + "',' " + drpAccountType.Text.Trim()+ "')", con);
                int a = cmd.ExecuteNonQuery();
                if(a > 0)
                {
                    string script = "alert(\"Transaction successfully Completed \");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

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