using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Alivio_UI_Mockup.UserContols
{
    public partial class modalCaseNote : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSaveCaseNote_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "SuccessToast", "showToast('success', 'Successfully Saved', 'The Case Note Was Successfuly Saved!')", true);
        }
    }
}