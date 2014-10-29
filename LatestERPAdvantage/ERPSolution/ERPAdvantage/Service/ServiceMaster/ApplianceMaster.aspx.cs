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
    public partial class ApplianceMaster : System.Web.UI.Page
    {
        


        private void GetAppliancecategory()
        {
            UIControl uic = new UIControl();
            ADTWebService wser = new ADTWebService();
            Appliancemst objapp = new Appliancemst();
            objapp.pOrgCode = ERPSystemData.COM_DOM_ORG_CODE.AEL.ToString();
            objapp.pAppCategory = ERPSystemData.COM_DOM_TYPE.APPLIANCE_CATEGORY.ToString();
            List<gDropdownlist> droplist = wser.pMsGetAppliancecategory(objapp);
            uic.FillDropdownList(ddlappcategory, droplist, "COM_DOM_CODE", "COM_DOM_DESC");
        
        }

        private void GetAppliance()
        {
            UIControl ui = new UIControl();
            ADTWebService wser = new ADTWebService();
            Appliancemst app = new Appliancemst();
            app.pOrgCode = ERPSystemData.COM_DOM_ORG_CODE.AEL.ToString();
            app.pApplianceCode = txtappliancecode.Text.Trim();
            app.pApplianceName = txtappliancedesc.Text.Trim();
            DataSet ds = wser.GetApplianceList(app);
            GridVapplist.DataSource = ds;
            GridVapplist.DataBind();
        }


        private void GetApplianceDetails()
        {
            UIControl uic = new UIControl();
            ADTWebService ws = new ADTWebService();
            Appliancemst objapp = new Appliancemst();
            objapp.pOrgCode = ERPSystemData.COM_DOM_ORG_CODE.AEL.ToString();
            objapp.pApplianceCode = txtappliancecode.Text.ToString();
            IDataReader  mydata = ws.GetApplianceDatabyAppCode(objapp);
            while (mydata.Read())
            {
                txtappliancedesc.Text = mydata[1].ToString();
                txtstoragecost.Text = mydata[2].ToString();
                txtestimationcost.Text = mydata[3].ToString();
                ddlappcategory.SelectedValue = mydata[4].ToString();
            }
        }

        private bool CreateAppliance()
        {
            UIControl uic = new UIControl();
            ADTWebService wser = new ADTWebService();
            Appliancemst objapp = new Appliancemst();
            objapp.pOrgCode = ERPSystemData.COM_DOM_ORG_CODE.AEL.ToString();
            objapp.pApplianceCode = txtappliancecode.Text.ToString();
            objapp.pApplianceName = txtappliancedesc.Text.ToString();
            objapp.pStorageCost = Convert.ToDouble(txtstoragecost.Text.Trim());
            objapp.pEstimateCost =Convert.ToDouble(txtestimationcost.Text.Trim());
            objapp.pAppCategory = ddlappcategory.SelectedItem.Text;
            wser.CreateAppliance(objapp);
            return true;
        }

        private bool UpdateAppliance()
        {
            UIControl uic = new UIControl();
            ADTWebService wser = new ADTWebService();
            Appliancemst objapp = new Appliancemst();
            objapp.pOrgCode = ERPSystemData.COM_DOM_ORG_CODE.AEL.ToString();
            objapp.pApplianceCode = txtappliancecode.Text;
            objapp.pApplianceName = txtappliancedesc.Text;
            objapp.pStorageCost =Convert.ToDouble(txtstoragecost.Text);
            objapp.pEstimateCost = Convert.ToDouble(txtestimationcost.Text);
            objapp.pAppCategory = ddlappcategory.SelectedItem.Text;
            wser.UpdateAppliance(objapp);
            return true;
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetAppliancecategory();
                GetAppliance();
            }
        }

        protected void cmdgetlist_Click(object sender, EventArgs e)
        {
            GetAppliance();
        }

        protected void cmdselectapp_Click(object sender, EventArgs e)
        {
            
           
        }

        protected void txtappliancecode_TextChanged(object sender, EventArgs e)
        {
            GetApplianceDetails();
        }

      

        protected void cmdsave_Click(object sender, EventArgs e)
        {
            if (CreateAppliance() == true)
            {
                lblstatus.Text = Resources.UIMessege.msgSaveOk;
            }
            else
            {
                lblstatus.Text = Resources.UIMessege.msgSaveError;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (UpdateAppliance() == true)
            {
                lblstatus.Text = Resources.UIMessege.msgSaveOk;
            }
            else
            {
                lblstatus.Text = Resources.UIMessege.msgSaveError;
            }
        }

        

     
    }
}