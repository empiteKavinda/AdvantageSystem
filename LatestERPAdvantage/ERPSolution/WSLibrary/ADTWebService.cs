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
using Advantage.ERP.DAL.DataContract;

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

    #region ApplianceMaster
    [WebMethod]

public List<gDropdownlist> pMsGetAppliancecategory(Advantage.ERP.DAL.DataContract.Appliancemst apm)
{
    ServiceBusinessCalls bsobj = new Advantage.ERP.BLL.ServiceBusinessCalls();
    return bsobj.pMsGetAppliancecategory(apm);
}
   
    [WebMethod]
    public DataSet GetApplianceList(Advantage.ERP.DAL.DataContract.Appliancemst apm)
    {
        ServiceBusinessCalls objapp = new ServiceBusinessCalls();
        return objapp.gMsGetApplianceList(apm);
    }

    [WebMethod]
    public SqlDataReader GetApplianceDatabyAppCode(Advantage.ERP.DAL.DataContract.Appliancemst objapp)
    {
        ServiceBusinessCalls objbservice = new ServiceBusinessCalls();
        return objbservice.gMsGetApplianceByAppCode(objapp);
        
    }

    [WebMethod]
    public void CreateAppliance(Advantage.ERP.DAL.DataContract.Appliancemst objapp)
    {
        ServiceBusinessCalls objnewapp = new ServiceBusinessCalls();
        objnewapp.gMsCreateAppliance(objapp);
    }

    [WebMethod]

    public void UpdateAppliance(Advantage.ERP.DAL.DataContract.Appliancemst objapp)
    {
        ServiceBusinessCalls objeditapp = new ServiceBusinessCalls();
        objeditapp.gMsUpdateAppliance(objapp);

    }


    #endregion
    
    #region DomainMaster
    [WebMethod]
    public DataSet gMsGetDomainTypes(Advantage.ERP.DAL.DataContract.Domainmst objdomain)
    {
        ServiceBusinessCalls obj = new ServiceBusinessCalls();
        return obj.gMsGetDomainTypes(objdomain);
    }

    [WebMethod]
    public DataSet gMsGetDomainDetails(Advantage.ERP.DAL.DataContract.Domainmst objdomain)
    {
        ServiceBusinessCalls obj = new ServiceBusinessCalls();
        return obj.gMsGetDomainDetails(objdomain);
    }
    [WebMethod]
    public void gMsCreateDomain(Advantage.ERP.DAL.DataContract.Domainmst objdom)
    {
        ServiceBusinessCalls obj = new ServiceBusinessCalls();
        obj.gMsCreateDomain(objdom);
    }

    #endregion DomainMaster


}

