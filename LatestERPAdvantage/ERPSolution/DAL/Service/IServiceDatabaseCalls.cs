﻿using System.Data;
using System.Data.SqlClient;

namespace Advantage.ERP.DAL
{
    public interface IServiceDatabaseCalls
    {
        SqlDataReader pMsGetCategory(DAL.DataContract.CustomMaster objMst);
        string GenerateCustomerCode(DAL.DataContract.CustomMaster objMst);
        void gMsCreateCustDetails(DAL.DataContract.CustomMaster objMst);
        void gMsUpdateCust(DAL.DataContract.CustomMaster objMst);
        DataSet gMsCustDetails(DAL.DataContract.CustomMaster objMst);
        DataSet gMsGetCustomerList(DAL.DataContract.CustomMaster objMst);
        SqlDataReader gMsGetUserPermission(DAL.DataContract.UserSpecificData objuMst);
        SqlDataReader gMsGetBranchData(DAL.DataContract.UserSpecificData objuMst);
        SqlDataReader gMsValidateUser(DAL.DataContract.UserSpecificData objuMst);
        SqlDataReader gMsCheckPassword(DAL.DataContract.UserSpecificData objuMst);
        SqlDataReader gMsCheckSpecifiedModulepermission(DAL.DataContract.UserSpecificData objuMst);
    }
}