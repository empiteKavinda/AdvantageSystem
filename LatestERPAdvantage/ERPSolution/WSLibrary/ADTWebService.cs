using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Web.Services;
using Advantage.ERP.BLL;
using System.Web.UI.HtmlControls;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

[WebService(Namespace = "http://tempuri2.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class ADTWebService : WebServiceBase
{

    #region AreaMaster.aspx definitions

    //[WebMethod]
    //public List<gDropdownlist> PMsGetCustomerServiceCenter(string orgCode)
    //{
    //    IServiceBusinessCalls bsOj = new ServiceBusinessCalls();
    //    return bsOj.PMsGetCustomerServiceCenter(orgCode);
    //}

    #endregion

    #region CustomerMaster.aspx definitions
    [WebMethod()]
public string HelloWorld()
{
    return "Hello World";
}
    
[WebMethod]
public List<gDropdownlist> pMsGetCategory(Advantage.ERP.DAL.DataContract.CustomMaster objMst)
{
    Advantage.ERP.BLL.ServiceBusinessCalls bsOj = new Advantage.ERP.BLL.ServiceBusinessCalls();

    return bsOj.pMsGetCategory(objMst);
}

[WebMethod]
public string GenerateCustomerCode(Advantage.ERP.DAL.DataContract.CustomMaster objMst)
{
    Advantage.ERP.BLL.ServiceBusinessCalls bsOj = new Advantage.ERP.BLL.ServiceBusinessCalls();

    return bsOj.GenerateCustomerCode(objMst);
}

[WebMethod]
public void gMsCreateCustDetails(Advantage.ERP.DAL.DataContract.CustomMaster objMst)
{
    Advantage.ERP.BLL.ServiceBusinessCalls bsOj = new Advantage.ERP.BLL.ServiceBusinessCalls();

    bsOj.gMsCreateCustDetails(objMst);
}
[WebMethod]
public void gMsUpdateCust(Advantage.ERP.DAL.DataContract.CustomMaster objMst)
{
    Advantage.ERP.BLL.ServiceBusinessCalls bsOj = new Advantage.ERP.BLL.ServiceBusinessCalls();

    bsOj.gMsUpdateCust(objMst);
}
    

[WebMethod]
public DataSet getCustDetails(Advantage.ERP.DAL.DataContract.CustomMaster objMst)
{
    Advantage.ERP.BLL.ServiceBusinessCalls bsOj = new Advantage.ERP.BLL.ServiceBusinessCalls();
   return bsOj.gMsCustDetails(objMst);
}
 [WebMethod]
public DataSet gMsGetCustomerList(Advantage.ERP.DAL.DataContract.CustomMaster objMst)
{
    Advantage.ERP.BLL.ServiceBusinessCalls bsOj = new Advantage.ERP.BLL.ServiceBusinessCalls();
   return bsOj.gMsGetCustomerList(objMst);
}
     

#endregion

[WebMethod]
public bool gMsGetUserPermissioncheck(Advantage.ERP.DAL.DataContract.UserSpecificData objuMst)
{
   
    Advantage.ERP.BLL.ServiceBusinessCalls bsOj = new Advantage.ERP.BLL.ServiceBusinessCalls();
    return bsOj.gMsGetUserPermissioncheck(objuMst);
}


[WebMethod]
public bool gMsCheckPassword(Advantage.ERP.DAL.DataContract.UserSpecificData objuMst)
{
   Advantage.ERP.BLL.ServiceBusinessCalls bsOj = new Advantage.ERP.BLL.ServiceBusinessCalls();
   return bsOj.gMsCheckPassword(objuMst);
}


#region Login.aspx definitions
[WebMethod]
public List<gDropdownlist> gMsGetBranchData(Advantage.ERP.DAL.DataContract.UserSpecificData objMst)
{
    Advantage.ERP.BLL.ServiceBusinessCalls obj = new Advantage.ERP.BLL.ServiceBusinessCalls();
    return obj.gMsGetBranchData(objMst);
}

[WebMethod]
public List<TSEC_USR_OBJ> gMsCheckSpecifiedModulepermission(Advantage.ERP.DAL.DataContract.UserSpecificData objMst)
{
    Advantage.ERP.BLL.ServiceBusinessCalls obj = new Advantage.ERP.BLL.ServiceBusinessCalls();
    return obj.gMsCheckSpecifiedModulepermission(objMst);
}

#endregion

    #region Branchdata
//[WebMethod]
//public string GetBranchName(Advantage.ERP.DAL.DataContract.UserSpecificData objMst)
//{
//    Advantage.ERP.BLL.ServiceBusinessCalls obj = new Advantage.ERP.BLL.ServiceBusinessCalls();
//    return obj.GetBranchName(objMst);
    
//}



    #endregion

}

