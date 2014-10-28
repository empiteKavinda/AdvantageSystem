using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Advantage.ERP.BLL;
using Advantage.ERP.DAL.DataContract;



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
            uic.FillDropdownList(cboappcategory, droplist, "COM_DOM_CODE", "COM_DOM_DESC");
        
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GetAppliancecategory();
        }

        public string pOrgCode { get; set; }
    }
}