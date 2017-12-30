using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Week11
{
    public partial class NewAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_click(object sender, EventArgs e)
        {
            try
            {
                string name = txtName.Text;
                string type = txtType.Text;
                double amount = Convert.ToDouble(txtAmount.Text);
                string country = txtCountry.Text;
                string image = "/Image/" + txtImage.Text;

                Account account = new Account(name, type, amount, country, image);
                Connection.AddAcount(account);
                lblResult.Text = "upload successful";
            }
            catch (Exception)
            {
                lblResult.Text = "Fail";
            }
             
        }
    }
}