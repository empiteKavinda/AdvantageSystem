using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web.UI.HtmlControls;
using Advantage.ERP.DAL.DataContract;
using ERPAdvantage;
//using ERPAdvantage.MST;
using Advantage.ERP.BLL;

namespace ERPAdvantage.MST
{
    public partial class CustMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CustomMaster objMst = new CustomMaster();
            ADTWebService wsoj = new ADTWebService();
            objMst.pCustCode = "A12283";
            objMst.pOrgCode = ERPSystemData.COM_DOM_ORG_CODE.AEL.ToString();
            wsoj.getCustDetails(objMst, gvCustomerDetails);


        }


        /// <summary>

        /// Show Add new record

        /// </summary>

        /// <param name="sender"></param>

        /// <param name="e"></param>

        protected void AddNewRecord(object sender, EventArgs e)
        {
            gvCustomerDetails.ShowFooter = true;
            //BindCurrentUsers();
        }


        /// <summary>

        /// Insert records into datbase

        /// </summary>

        /// <param name="sender"></param>

        /// <param name="e"></param>

        protected void gvCustomerDetails_OnRowCommand1(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName.Equals("EmptyInsert"))
            {

                TextBox u = gvCustomerDetails.Controls[0].Controls[0].FindControl("txtUserName") as TextBox;

                TextBox p = gvCustomerDetails.Controls[0].Controls[0].FindControl("txtPassword") as TextBox;

                TextBox sp = gvCustomerDetails.Controls[0].Controls[0].FindControl("txtSuperPassword") as TextBox;

                DropDownList dT = gvCustomerDetails.Controls[0].Controls[0].FindControl("dropType") as DropDownList;

                TextBox ad = gvCustomerDetails.Controls[0].Controls[0].FindControl("txtAdminDesc") as TextBox;

                DropDownList dA = gvCustomerDetails.Controls[0].Controls[0].FindControl("dropActive") as DropDownList;





               // new AdminBAL().Insert(u.Text, p.Text, sp.Text, dT.SelectedValue, ad.Text, bool.Parse(dA.SelectedValue));

               // lblError.Text = "<br />Record inserted successfully<br />";

              //  BindCurrentUsers(); // rebind the dat


            }

            if (e.CommandName.Equals("Insert"))
            {

                TextBox u = gvCustomerDetails.FooterRow.FindControl("txtUserName") as TextBox;

                TextBox p = gvCustomerDetails.FooterRow.FindControl("txtPassword") as TextBox;

                TextBox sp = gvCustomerDetails.FooterRow.FindControl("txtSuperPassword") as TextBox;

                DropDownList dT = gvCustomerDetails.FooterRow.FindControl("dropType") as DropDownList;

                TextBox ad = gvCustomerDetails.FooterRow.FindControl("txtAdminDesc") as TextBox;

                DropDownList dA = gvCustomerDetails.FooterRow.FindControl("dropActive") as DropDownList;



               // new AdminBAL().Insert(u.Text, p.Text, sp.Text, dT.SelectedValue, ad.Text, bool.Parse(dA.SelectedValue));

               /// lblError.Text = "<br />Record inserted successfully<br />";

              //  BindCurrentUsers(); // rebind the data


            }


        }

        protected void UpdateRecords(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void EditRecord(object sender, GridViewEditEventArgs e)
        {

        }

        protected void CancelRecord(object sender, GridViewCancelEditEventArgs e)
        {

        }



    }
}