﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisitingRequest.aspx.cs" Inherits="ERPAdvantage.Service.ServiceTransaction.VisitingRequest" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style3
        {
            width: 100%;
        }
        .auto-style4
        {
            height: 21px;
            width: 275px;
        }
        .auto-style5
        {
            height: 21px;
            width: 116px;
        }
        .auto-style7
        {
            height: 21px;
            width: 204px;
        }
        .auto-style8
        {
            height: 21px;
            width: 119px;
        }
        .auto-style9
        {
            width: 107px;
        }
        .auto-style11
        {
            width: 100px;
        }
        .auto-style12
        {
            width: 227px;
        }
        .auto-style13
        {
            height: 21px;
        }
        .auto-style14
        {
            width: 125px;
            height: 30px;
        }
        .auto-style15
        {
            width: 247px;
            height: 30px;
        }
        .auto-style16
        {
            width: 102px;
            height: 30px;
        }
        .auto-style17
        {
            height: 30px;
        }
        .auto-style19
        {
            width: 104px;
        }
        .auto-style20
        {
            height: 21px;
            width: 115px;
        }
        .auto-style22
        {
            width: 103px;
        }
        .auto-style24
        {
            height: 21px;
            width: 224px;
        }
        .auto-style26
        {
            width: 117px;
        }
        .auto-style27
        {
            height: 21px;
            width: 117px;
        }
        .auto-style28
        {
            width: 90px;
        }
        .auto-style29
        {
            width: 124px;
        }
        .auto-style31
        {
            width: 194px;
        }
        .auto-style32
        {
            width: 105px;
        }
        .auto-style34
        {
            width: 106px;
        }
        .auto-style35
        {
            width: 154px;
        }
        .auto-style36
        {
            width: 241px;
        }
        .auto-style37
        {
            width: 106px;
            height: 21px;
        }
        .auto-style38
        {
            width: 241px;
            height: 21px;
        }
        .auto-style39
        {
            width: 154px;
            height: 21px;
        }
        .auto-style44
        {
            width: 393px;
        }
        .auto-style45
        {
            width: 245px;
        }
    </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.9em" PathSeparator=" : ">
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#990000" />
        <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
        <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
    </asp:SiteMapPath>
    
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>   
    
    <br/>
    

     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    
    <ContentTemplate>

    <asp:TabContainer ID="tcontvisitingrequest" runat="server" ActiveTabIndex="1" Height="800px" Width="752px">
        
        <asp:TabPanel ID="tpheader" runat="server" HeaderText="Header Data">
            <ContentTemplate>
                <table class="auto-style3"><tr><td class="auto-style5"><asp:Label ID="Label1" runat="server" Text="Visiting No"></asp:Label></td><td class="auto-style7">
                <asp:TextBox ID="txtvisitingno" runat="server" Width="150px"></asp:TextBox>
                <asp:Button runat="server" ID="cmdgetlist" Text="..." OnClick="cmdgetlist_Click" /></td><td class="auto-style8">
                    <asp:Label ID="Label2" runat="server" Text="Visiting Date"></asp:Label></td>
                <td class="auto-style4"><asp:TextBox ID="txtvisitingdate" runat="server" Width="150px"></asp:TextBox>
                    <asp:Button runat="server" ID="cmdgetcalendar" Text="..." /><asp:CalendarExtender ID="calvrdate" runat="server" PopupButtonID="cmdgetcalendar" PopupPosition="BottomRight" TargetControlID="txtvisitingdate" Enabled="True"></asp:CalendarExtender></td></tr></table>
                
                <br />
                <br />

            <asp:Panel runat="server" ID="panelvistitinglist" Height="200px" Width ="673px" style="overflow:auto"  Visible="False">
                    <asp:Label runat="server" Text="Visiting No" />
                    <asp:TextBox runat="server" ID="txtsearbyno" >%</asp:TextBox>
                    <asp:Label runat="server" Text="Customer Name" />
                    <asp:TextBox runat="server" ID="txtsearchbyname" >%</asp:TextBox>
                    <br />
                    <br/>
                    <asp:Label runat="server" Text="From" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:TextBox runat="server" ID="txtfromdate" Width="90px" /> 
                    <asp:Button runat="server" ID="cmdgetfromcal" Text="..." />
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtfromdate" PopupButtonID="cmdgetfromcal" PopupPosition="BottomRight" Enabled="True"></asp:CalendarExtender>


                    &nbsp;<asp:Label ID="Label3" runat="server" Text="To" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox runat="server" ID="txttodate" Width="90px" />
                    <asp:Button runat="server" ID="cmdgettocal" Text="..." />
                    <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txttodate" PopupButtonID="cmdgettocal" PopupPosition="BottomRight" Enabled="True"></asp:CalendarExtender>
                    <br />
                    <br />
                    <asp:GridView runat="server" ID="dgridvrlist" Width="419px" />
                    <br />                                                                                       
                                                          
                                 
                    
                </asp:Panel>
                
                <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label5" runat="server" Text="Category"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:DropDownList ID="ddlcategory" runat="server" Width="200px">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style11">
                            <asp:Label ID="Label6" runat="server" Text="Priority"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlpriority" runat="server" Width="200px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label7" runat="server" Text="Complain"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="txtcomplain" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            <asp:Label ID="Label8" runat="server" Text="Instruction"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtinstruction" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label9" runat="server" Text="Request Date"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="txtreqdate" runat="server"></asp:TextBox>
                            <asp:Button runat="server" Text=".." ID="cmdgetcal" />
                            <asp:CalendarExtender ID="CalendarExtender3" runat="server" PopupButtonID="cmdgetcal" TargetControlID="txtreqdate" Enabled="True"></asp:CalendarExtender>
                        </td>
                        <td class="auto-style11">
                            <asp:Label ID="Label10" runat="server" Text="Complain Taken By"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtcomplaintakenby" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label11" runat="server" Text="Serial No"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="txtserialno" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            <asp:Label ID="Label12" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label13" runat="server" Text="Mobile No"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="txtmobileno" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            <asp:Label ID="Label14" runat="server" Text="TP Number"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txttpno" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label15" runat="server" Text="Department"></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <asp:TextBox ID="txtdepratment" runat="server"></asp:TextBox>
                            <asp:Button runat="server" Text=".." ID="cmdgetdeptlist" OnClick="cmdgetdeptlist_Click" />
                        </td>
                        <td class="auto-style16">
                            <asp:Label ID="Label16" runat="server" Text="Warranty No"></asp:Label>
                        </td>
                        <td class="auto-style17">
                            <asp:TextBox ID="txtwarranttno" runat="server"></asp:TextBox>
                            <asp:Button runat="server" ID="cmdgetwarrantylist" Text="..." OnClick="cmdgetwarrantylist_Click" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Panel runat="server"  ID="panelsearchappliance" Height="200px" Width="700px" style="overflow:auto" Visible="False" >


                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style20">
                                <asp:Label ID="lbldeptname" runat="server" Text="Department Name"></asp:Label>
                            </td>
                            <td class="auto-style24">
                                <asp:TextBox ID="txtsearchbydeptname" runat="server" Width="200px" Enabled="False">%</asp:TextBox>
                            </td>
                            <td class="auto-style27">
                                <asp:Label ID="lblserialno" runat="server" Text="Serial No"></asp:Label>
                            </td>
                            <td class="auto-style13">
                                <asp:TextBox ID="txtsearchwarrbyserialno" runat="server" Width="200px" Enabled="False">%</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style19">
                                <asp:Label ID="lblwarrno" runat="server" Text="Warranty No"></asp:Label>
                            </td>
                            <td class="auto-style22">
                                <asp:TextBox ID="txtsearchbywarrbyno" runat="server" Width="200px" Enabled="False">%</asp:TextBox>
                            </td>
                            <td class="auto-style26">
                                <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtsearchbwarrbyname" runat="server" Width="200px" Enabled="False">%</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style19">
                                <asp:Label ID="lbladdress" runat="server" Text="Address"></asp:Label>
                            </td>
                            <td class="auto-style22">
                                <asp:TextBox ID="txtserachwarrbyaddress" runat="server" Width="200px" Enabled="False">%</asp:TextBox>
                            </td>
                            <td class="auto-style26">
                                <asp:Label ID="lblphoneno" runat="server" Text="Phone No"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtsearchbwarrbytp" runat="server" Width="200px" Enabled="False">%</asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <br />

                    <asp:GridView runat="server" ID="dgriddeptorwarranty" Width="600px" />


                    <br />
                    <br />



                </asp:Panel>
                <br/>



            </ContentTemplate></asp:TabPanel><asp:TabPanel ID="tpcustomer" runat="server" HeaderText="Customer Data">



            <ContentTemplate>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style22">
                            <asp:Label ID="Label17" runat="server" Text="Customer Name"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="txtcustomercode" runat="server" Enabled="false"></asp:TextBox>
                        </td>
                        <td class="auto-style28">
                            <asp:DropDownList ID="ddlprefix" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style44">
                            <asp:TextBox ID="txtcustomername" runat="server" Width="300px"></asp:TextBox>
                            <asp:Button runat="server" Text="..." ID="btngetcustlist" OnClick="btngetcustlist_Click1" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Panel runat="server" ID="panelsearchcustomer" Height="250px" Width="700px" style="overflow:auto" Visible="False" >


                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style29">
                                <asp:Label ID="Label18" runat="server" Text="Customer Name"></asp:Label>
                            </td>
                            <td class="auto-style31">
                                <asp:TextBox ID="txtsearchcustomername" runat="server" Width="200px">%</asp:TextBox>
                            </td>
                            <td class="auto-style32">
                                <asp:Label ID="Label20" runat="server" Text="Area"></asp:Label>
                            </td>
                            <td class="auto-style45">
                                <asp:TextBox ID="txtsearchcustomerarea" runat="server" Width="200px">%</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style29">
                                <asp:Label ID="Label19" runat="server" Text="Phone No"></asp:Label>
                            </td>
                            <td class="auto-style31">
                                <asp:TextBox ID="txtsearchphoneno" runat="server" Width="200px">%</asp:TextBox>
                            </td>
                            <td class="auto-style32">
                                <asp:Label ID="Label21" runat="server" Text="Address"></asp:Label>
                            </td>
                            <td class="auto-style45">
                                <asp:TextBox ID="txtsearchcustomeraddress" runat="server" Width="200px">%</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style29">&nbsp;</td>
                            <td class="auto-style31">
                                <asp:Button ID="dbtnsearchcustomer" runat="server" Text="Search" OnClick="dbtnsearchcustomer_Click" />
                            </td>
                            <td class="auto-style32">&nbsp;</td>
                            <td class="auto-style45">&nbsp;</td>
                        </tr>
                    </table>

                    <br />



                    <asp:GridView ID="gvcustomerlist" runat="server"  Height="100px" Width="688px" Font-Size="Smaller" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvcustomerlist_SelectedIndexChanged">
                    </asp:GridView>


                </asp:Panel>
                <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style34">
                            <asp:Label ID="Label22" runat="server" Text="Invoice Address"></asp:Label>
                        </td>
                        <td class="auto-style36">
                            <asp:TextBox ID="txtinvoiceaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td class="auto-style35">
                            <asp:Label ID="Label23" runat="server" Text="Service Address"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtserviceaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style34">
                            <asp:Label ID="Label24" runat="server" Text="Area"></asp:Label>
                        </td>
                        <td class="auto-style36">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style35">
                            <asp:Label ID="Label25" runat="server" Text="VAT No"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtvatno" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style37">
                            <asp:Label ID="Label26" runat="server" Text="Phone No"></asp:Label>
                        </td>
                        <td class="auto-style38">
                            <asp:TextBox ID="txtphoneno" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style39">
                            <asp:Label ID="Label27" runat="server" Text="Mobile No"></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <asp:TextBox ID="txtvatno1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style34">&nbsp;</td>
                        <td class="auto-style36">&nbsp;</td>
                        <td class="auto-style35">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />



                
            </ContentTemplate>
        </asp:TabPanel>
     
        <asp:TabPanel ID="tpitem" runat="server" HeaderText="Item Data">
            
        </asp:TabPanel>

     </asp:TabContainer>
     
    </ContentTemplate>
    </asp:UpdatePanel>
        
    
</asp:Content>
