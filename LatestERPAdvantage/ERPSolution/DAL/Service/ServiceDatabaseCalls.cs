using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using Microsoft.Practices.EnterpriseLibrary.Common;


namespace Advantage.ERP.DAL
{
   public class ServiceDatabaseCalls : IServiceDatabaseCalls
   {

       #region frmAreaMaster

       /// <summary>
       /// Ps the ms get customer service center.
       /// </summary>
       /// <param name="orgCode">The org code.</param>
       /// <returns>SqlDataReader.</returns>
       public SqlDataReader PMsGetCustomerServiceCenter(string orgCode)
       {

           Database db = DatabaseFactory.CreateDatabase();
           const string sqlCommand = "GenGetBranchList";
           DbCommand dbCommand = db.GetStoredProcCommand(sqlCommand);
           db.AddInParameter(dbCommand, "@vOrgCode", DbType.String, orgCode);
           var iDr = db.ExecuteReader(dbCommand);
           return (SqlDataReader)((RefCountingDataReader)iDr).InnerReader;
       }

       #endregion

       #region frmCustomerMaster definitions
       public SqlDataReader pMsGetCategory(DAL.DataContract.CustomMaster objMst)
        {
           
            // Create the Database object, using the default database service. The
            // default database service is determined through configuration.
            Database db = DatabaseFactory.CreateDatabase();
            string sqlCommand = "gMsGetDomainType";
            DbCommand dbCommand = db.GetStoredProcCommand(sqlCommand);
            //Retrieve daata
            db.AddInParameter(dbCommand, "@pOrgCode", DbType.String, objMst.pOrgCode);
            db.AddInParameter(dbCommand, "@pDomType", DbType.String, objMst.pDomType);
            // DataSet that will hold the returned results		
           // DataSet myDataSet = null;
           // myDataSet = db.ExecuteDataSet(dbCommand);
            // Note: connection was closed by ExecuteDataSet method call 
           // return myDataSet;
            IDataReader iDR = db.ExecuteReader(dbCommand);
            // Note: connection was closed by ExecuteDataSet method call 
            return (SqlDataReader)((RefCountingDataReader)iDR).InnerReader;

        }

        public string GenerateCustomerCode(DAL.DataContract.CustomMaster objMst)
        {
            
            // string custName = string.Empty;
            // Create the Database object, using the default database service. The
            // default database service is determined through configuration.
            Database db = DatabaseFactory.CreateDatabase();
            string sqlCommand = "GetLastCustCode";
            DbCommand dbCommand = db.GetStoredProcCommand(sqlCommand);
            db.AddInParameter(dbCommand, "@CustName", DbType.String, objMst.pCustName);
            using (IDataReader dataReader = db.ExecuteReader(dbCommand))
            {
                // Processing code
                StringBuilder readerData = new StringBuilder();
                while (dataReader.Read())
                {
                    // Get the value of the Name column in the DbDataReader.
                    readerData.Append(dataReader["LASTCUSTCODE"]);
                    // readerData.Append(Environment.NewLine);
                    //if (dataReader != null)
                    //  dataReader.Close();
                }
                return readerData.ToString();
            }
        }

        public void gMsCreateCustDetails(DAL.DataContract.CustomMaster objMst)
        {
            
            // Create the Database object, using the default database service. The
            // default database service is determined through configuration.
            Database db = DatabaseFactory.CreateDatabase();
            string sqlCommand = "gMsCreateCustDetails";
            DbCommand dbCommand = db.GetStoredProcCommand(sqlCommand);
            db.AddInParameter(dbCommand, "@pOrgCode", DbType.String, objMst.pOrgCode);
            db.AddInParameter(dbCommand, "@pCustPrefix", DbType.String, objMst.pCustPrefix);
            db.AddInParameter(dbCommand, "@pCustName", DbType.String, objMst.pCustName);
            db.AddInParameter(dbCommand, "@pCustAdd", DbType.String, objMst.pCustAdd);
            db.AddInParameter(dbCommand, "@pCustServiceAddress", DbType.String, objMst.pCustServiceAddress);
            db.AddInParameter(dbCommand, "@pCustArea", DbType.String, objMst.pCustArea);
            db.AddInParameter(dbCommand, "@pCustPhone1", DbType.String, objMst.pCustPhone1);
            db.AddInParameter(dbCommand, "@pCustPhone2", DbType.String, objMst.pCustPhone2);
            db.AddInParameter(dbCommand, "@pCustFax", DbType.String, objMst.pCustFax);
            db.AddInParameter(dbCommand, "@pCustCellNo", DbType.String, objMst.pCustCellNo);
            db.AddInParameter(dbCommand, "@pCustEmail", DbType.String, objMst.pCustEmail);
            db.AddInParameter(dbCommand, "@pCustCreditLimit", DbType.Double, objMst.pCustCreditLimit);
            db.AddInParameter(dbCommand, "@pCustVATNo", DbType.String, objMst.pCustVATNo);
            db.AddInParameter(dbCommand, "@pVATApplicable", DbType.String, objMst.pVATApplicable);
            db.AddInParameter(dbCommand, "@pCustCreditGiven", DbType.Double, objMst.pCustCreditGiven);
            db.AddInParameter(dbCommand, "@pCustCategory", DbType.String, objMst.pCustCategory);
            db.AddInParameter(dbCommand, "@pCustContactPerson_Technical", DbType.String, objMst.pCustContactPerson_Technical);
            db.AddInParameter(dbCommand, "@pCustContactPerson_PhoneNo3", DbType.String, objMst.pCustContactPerson_PhoneNo3);
            db.AddInParameter(dbCommand, "@pCustContactPerson_Invoice", DbType.String, objMst.pCustContactPerson_Invoice);
            db.AddInParameter(dbCommand, "@pCustContactPerson_PhoneNo4", DbType.String, objMst.pCustContactPerson_PhoneNo4);
            db.AddInParameter(dbCommand, "@pCustSpecicalCustomer", DbType.String, objMst.pSpeCust);
            db.AddInParameter(dbCommand, "@pCustomerNo", DbType.String, objMst.pCustCode);
            db.AddInParameter(dbCommand, "@pUserId", DbType.String, objMst.pUserId);
            db.AddInParameter(dbCommand, "@pCat_No", DbType.String, objMst.pCat_No);
            db.AddInParameter(dbCommand, "@pCat_Desc", DbType.String, objMst.pCat_Desc);
            
            db.ExecuteNonQuery(dbCommand);
        }


        public void gMsUpdateCust(DAL.DataContract.CustomMaster objMst)
        {
            // Create the Database object, using the default database service. The
            // default database service is determined through configuration.
            Database db = DatabaseFactory.CreateDatabase();
            string sqlCommand = "gMsUpdateCust";
            DbCommand dbCommand = db.GetStoredProcCommand(sqlCommand);
            db.AddInParameter(dbCommand, "@pOrgCode", DbType.String, objMst.pOrgCode);
            db.AddInParameter(dbCommand, "@pCustPrefix", DbType.String, objMst.pCustPrefix);
            db.AddInParameter(dbCommand, "@pCustFName", DbType.String, objMst.pCustName);
            db.AddInParameter(dbCommand, "@pCustAdd", DbType.String, objMst.pCustAdd);
            db.AddInParameter(dbCommand, "@pCustServiceAddress", DbType.String, objMst.pCustServiceAddress);
            db.AddInParameter(dbCommand, "@pCustArea ", DbType.String, objMst.pCustArea);
            db.AddInParameter(dbCommand, "@pCustPhone1", DbType.String, objMst.pCustPhone1);
            db.AddInParameter(dbCommand, "@pCustPhone2", DbType.String, objMst.pCustPhone2);
            db.AddInParameter(dbCommand, "@pCustFax", DbType.String, objMst.pCustFax);
            db.AddInParameter(dbCommand, "@pCustCellNo", DbType.String, objMst.pCustCellNo);
            db.AddInParameter(dbCommand, "@pCustEmail", DbType.String, objMst.pCustEmail);
            db.AddInParameter(dbCommand, "@pCustCreditLimit", DbType.Double, objMst.pCustCreditLimit);
            db.AddInParameter(dbCommand, "@pCustVATNo", DbType.String, objMst.pCustVATNo);
            db.AddInParameter(dbCommand, "@pVATApplicable", DbType.String, objMst.pVATApplicable);
            db.AddInParameter(dbCommand, "@pCustCreditGiven", DbType.Double, objMst.pCustCreditGiven);
            db.AddInParameter(dbCommand, "@pCustCategory", DbType.String, objMst.pCustCategory);
            db.AddInParameter(dbCommand, "@pCustContactPerson_Technical", DbType.String, objMst.pCustContactPerson_Technical);
            db.AddInParameter(dbCommand, "@pCustContactPerson_PhoneNo3", DbType.String, objMst.pCustContactPerson_PhoneNo3);
            db.AddInParameter(dbCommand, "@pCustContactPerson_Invoice", DbType.String, objMst.pCustContactPerson_Invoice);
            db.AddInParameter(dbCommand, "@pCustContactPerson_PhoneNo4", DbType.String, objMst.pCustContactPerson_PhoneNo4);
            db.AddInParameter(dbCommand, "@pCustSpecicalCustomer", DbType.String, objMst.pSpeCust);
          //  db.AddInParameter(dbCommand, "@pCustomerCode", DbType.String, objMst.pCustCode);
            db.AddInParameter(dbCommand, "@pUserId", DbType.String, objMst.pUserId);
            db.AddInParameter(dbCommand, "@pSVAT", DbType.String, objMst.pSVAT);
            db.AddInParameter(dbCommand, "@pCustomerNo", DbType.String, objMst.pCustCode);
            db.AddInParameter(dbCommand, "@pCat_No", DbType.String, objMst.pCat_No);
            db.AddInParameter(dbCommand, "@pCat_Desc", DbType.String, objMst.pCat_Desc);
                  
            db.ExecuteNonQuery(dbCommand);
        }
       public DataSet gMsCustDetails(DAL.DataContract.CustomMaster objMst)
        {
            // Create the Database object, using the default database service. The
            // default database service is determined through configuration.
            Database db = DatabaseFactory.CreateDatabase();
            string sqlCommand = "gMsCustDetails";
            DbCommand dbCommand = db.GetStoredProcCommand(sqlCommand);
            //Retrieve daata
            db.AddInParameter(dbCommand, "@pCustomerNo", DbType.String, objMst.pCustCode);
            db.AddInParameter(dbCommand, "@pOrgCode", DbType.String, objMst.pOrgCode);
            // DataSet that will hold the returned results		
             DataSet myDataSet = null;
             myDataSet = db.ExecuteDataSet(dbCommand);
           //  Note: connection was closed by ExecuteDataSet method call 
             return myDataSet;
           
        }

       public DataSet gMsGetCustomerList(DAL.DataContract.CustomMaster objMst)
       {
           //SqlDataAdapter da = null;
          // DataSet ds = null;

           // Create the Database object, using the default database service. The
           // default database service is determined through configuration.
           Database db = DatabaseFactory.CreateDatabase();
           string sqlCommand = "gMsGetCustomerList";
           DbCommand dbCommand = db.GetStoredProcCommand(sqlCommand);
           //Retrieve daata
           db.AddInParameter(dbCommand, "@pOrgCode", DbType.String, objMst.pOrgCode);
           db.AddInParameter(dbCommand, "@pCustomerName", DbType.String, objMst.pCustName);
           db.AddInParameter(dbCommand, "@pCustomerPhone", DbType.String, objMst.pCustPhone1);
           db.AddInParameter(dbCommand, "@pCustomerArea", DbType.String, objMst.pCustArea);
           db.AddInParameter(dbCommand, "@pCustomerAdd", DbType.String, objMst.pCustAdd);
           db.AddInParameter(dbCommand, "@pCustomerNo", DbType.String, objMst.pCustCode);
           dbCommand.Connection = db.CreateConnection();
           DbDataAdapter da = (SqlDataAdapter)db.GetDataAdapter();
           da.SelectCommand = dbCommand;
           DataSet ds = new DataSet(); 
           da.Fill(ds, 0, 20, "table");
          // da.Fill(ds);
           return ds;
       }
      
#endregion

#region User  definitions
        public SqlDataReader gMsGetUserPermission(DAL.DataContract.UserSpecificData objuMst)
        {
            // IDataReader reader;
            // Create the Database object, using the default database service. The
            // default database service is determined through configuration.
            Database db = DatabaseFactory.CreateDatabase();
            string sqlCommand = "gMsGetUserPermission";
            DbCommand dbCommand = db.GetStoredProcCommand(sqlCommand);
            db.AddInParameter(dbCommand, "@pUserId", DbType.String, objuMst.pUserId);
            db.AddInParameter(dbCommand, "@pObjId", DbType.Int16, objuMst.pObjId);
            db.AddInParameter(dbCommand, "@pBrnCode", DbType.String, objuMst.pBrnCode);
            db.AddInParameter(dbCommand, "@pModType", DbType.String, objuMst.pModType);
            //return db.ExecuteDataSet(dbCommand);
            IDataReader iDR = db.ExecuteReader(dbCommand);
            //Convefrt IDatareader to  SqlDataReader
            //SqlDataReader dr = iDR as SqlDataReader;
           return (SqlDataReader)((RefCountingDataReader)iDR).InnerReader;
        }

#endregion

 #region LoginMeIn.aspx definitions
        public SqlDataReader gMsGetBranchData(DAL.DataContract.UserSpecificData objuMst)
        {
            // IDataReader reader;
            // Create the Database object, using the default database service. The
            // default database service is determined through configuration.
            Database db = DatabaseFactory.CreateDatabase();
            string sqlCommand = "GenGetBranchList";
            DbCommand dbCommand = db.GetStoredProcCommand(sqlCommand);
            db.AddInParameter(dbCommand, "@vOrgCode", DbType.String, objuMst.pOrgCode);
            IDataReader iDR = db.ExecuteReader(dbCommand);
           // Note: connection was closed by ExecuteDataSet method call 
            return (SqlDataReader)((RefCountingDataReader)iDR).InnerReader;
        }

        public SqlDataReader gMsValidateUser(DAL.DataContract.UserSpecificData objuMst)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sqlCommand = "gMsValidateUser";
            DbCommand dbCommand = db.GetStoredProcCommand(sqlCommand);
            db.AddInParameter(dbCommand, "@pModule", DbType.String, objuMst.pModType);
            db.AddInParameter(dbCommand, "@pUser", DbType.String, objuMst.pUserId);
            db.AddInParameter(dbCommand, "@pBranchStore", DbType.String, objuMst.pBrnCode);
            IDataReader iDR = db.ExecuteReader(dbCommand);
            return (SqlDataReader)((RefCountingDataReader)iDR).InnerReader;
        }

        public SqlDataReader gMsCheckPassword(DAL.DataContract.UserSpecificData objuMst)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sqlCommand = "gCheckThePassWord";
            DbCommand dbCommand = db.GetStoredProcCommand(sqlCommand);
            db.AddInParameter(dbCommand, "@pUser", DbType.String, objuMst.pUserId);
            string encryptedpassword = FormsAuthentication.HashPasswordForStoringInConfigFile(objuMst.pPwd, "MD5");
            db.AddInParameter(dbCommand, "@pPassowrd", DbType.String, encryptedpassword);
            IDataReader iDR = db.ExecuteReader(dbCommand);
            return (SqlDataReader)((RefCountingDataReader)iDR).InnerReader;
        }

        public SqlDataReader gMsCheckSpecifiedModulepermission(DAL.DataContract.UserSpecificData objuMst)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sqlCommand = "gMsCheckSpecifiedModulepermission";
            DbCommand dbCommand = db.GetStoredProcCommand(sqlCommand);
            db.AddInParameter(dbCommand, "@pUser", DbType.String, objuMst.pUserId);
            IDataReader iDR = db.ExecuteReader(dbCommand);
            return (SqlDataReader)((RefCountingDataReader)iDR).InnerReader;
        }


   //     public SqlDataReader GetBranchName(DAL.DataContract.UserSpecificData objuMst)
   //{
   //    Database db=DatabaseFactory.CreateDatabase();
   //    string sqlcommand = "GetBranchname";
   //    DbCommand dbcommand = db.GetStoredProcCommand(sqlcommand);
   //    db.AddInParameter(dbcommand, "@vOrgCode", DbType.String,objuMst.pOrgCode);
   //    db.AddInParameter(dbcommand, "@vBrnCode", DbType.String, objuMst.pBrnCode);
   //    IDataReader iDR = db.ExecuteReader(dbcommand);
   //    return (SqlDataReader)((RefCountingDataReader)iDR).InnerReader;
  
   //}

 #endregion
  }
}
