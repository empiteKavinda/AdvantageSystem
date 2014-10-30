using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Advantage.ERP.BLL;
using Advantage.ERP.DAL.DataContract;
using System.Data;
using System.Data.SqlClient;

namespace ERPAdvantage.Service.ServiceMaster
{
    public partial class DomainMaster : System.Web.UI.Page
    {

        private void GetDomainTypes()
        {
            UIControl uic = new UIControl();
            ADTWebService ws = new ADTWebService();
            Domainmst objdomain = new Domainmst();
            objdomain.pDomType = txtsearchbydomname.Text;
            DataSet ds=ws.gMsGetDomainTypes(objdomain);
            GridVdomlist.DataSource = ds;
            GridVdomlist.DataBind();
        }

        private void GetDomainDetails()
        {
            UIControl uic = new UIControl();
            ADTWebService ws = new ADTWebService();
            Domainmst objdomain = new Domainmst();
            objdomain.pOrgCode = ERPSystemData.COM_DOM_ORG_CODE.AEL.ToString(); ;
            objdomain.pDomType = txtdomaintype.Text;
            DataSet ds = ws.gMsGetDomainDetails(objdomain);
            gvaddeddomain.DataSource = ds;
            gvaddeddomain.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btngetdomainlist_Click(object sender, EventArgs e)
        {
            if (Domainlist.Visible == false)
            {
                GetDomainTypes();
                Domainlist.Visible = true;
            }
            else
            {
                Domainlist.Visible = false;
            }
        }

        protected void cmdsearch_Click(object sender, EventArgs e)
        {
            GetDomainTypes();
        }

        protected void GridVdomlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtsearchbydomname.Text = GridVdomlist.SelectedRow.Cells[1].Text;
            txtdomaintype.Text = GridVdomlist.SelectedRow.Cells[1].Text;
            Domainlist.Visible = false;
            GetDomainDetails();
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            GetDomainDetails();
        }
    }
}