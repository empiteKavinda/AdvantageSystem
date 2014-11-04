using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERPAdvantage.Service.ServiceTransaction
{
    public partial class VisitingRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdgetlist_Click(object sender, EventArgs e)
        {
            if (panelvistitinglist.Visible == true)
            {
                panelvistitinglist.Visible = false;
            }
            else
            {
                panelvistitinglist.Visible = true;
            }
        }
    }
}