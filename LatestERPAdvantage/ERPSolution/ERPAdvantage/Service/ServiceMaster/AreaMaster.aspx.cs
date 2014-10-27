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
    public partial class AreaMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetArea();
                GetCustomerServiceCenter();
            }
        }

        private void GetArea()
        {
            var uicon = new UIControl();
            var wsoj = new ADTWebService();
            var objMst = new CustomMaster
            {
                pOrgCode = ERPSystemData.COM_DOM_ORG_CODE.AEL.ToString(),
                pDomType = ERPSystemData.COM_DOM_TYPE.AREA.ToString()
            };
            List<gDropdownlist> drplist = wsoj.pMsGetCategory(objMst);
            uicon.FillDropdownList(ddlArea, drplist, "COM_DOM_CODE", "COM_DOM_DESC");
        }

        private void GetCustomerServiceCenter()
        {
            var uicon = new UIControl();
            var wsoj = new ADTWebService();
            var orgCode = ERPSystemData.COM_DOM_ORG_CODE.AEL.ToString();
            var drplist = wsoj.PMsGetCustomerServiceCenter(orgCode);
            uicon.FillDropdownList(ddlCutomerServiceCenter, drplist, "COM_DOM_CODE", "COM_DOM_DESC");
        }
    }
}