<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisitingRequest.aspx.cs" Inherits="ERPAdvantage.Service.ServiceTransaction.VisitingRequest" %>

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
            width: 125px;
        }
        .auto-style11
        {
            width: 102px;
        }
        .auto-style12
        {
            width: 247px;
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

    <asp:TabContainer ID="tcontvisitingrequest" runat="server" ActiveTabIndex="0" Height="600px" Width="752px">
        
        <asp:TabPanel ID="tpheader" runat="server" HeaderText="Header Data">
            <ContentTemplate>
                <table class="auto-style3"><tr><td class="auto-style5"><asp:Label ID="Label1" runat="server" Text="Visiting No"></asp:Label></td><td class="auto-style7">
                <asp:TextBox ID="txtvisitingno" runat="server" Width="150px"></asp:TextBox>
                <asp:Button runat="server" ID="cmdgetlist" Text="..." OnClick="cmdgetlist_Click" /></td><td class="auto-style8">
                    <asp:Label ID="Label2" runat="server" Text="Visiting Date"></asp:Label></td>
                <td class="auto-style4"><asp:TextBox ID="txtvisitingdate" runat="server" Width="150px"></asp:TextBox>
                    <asp:Button runat="server" ID="cmdgetcalendar" Text="..." /><asp:CalendarExtender ID="calvrdate" runat="server" PopupButtonID="cmdgetcalendar" PopupPosition="BottomRight" TargetControlID="txtvisitingdate" Enabled="True"></asp:CalendarExtender></td></tr></table>
                
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
                
   <asp:Label ID="Label4" runat="server" Text="TEST" />       
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
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            <asp:Label ID="Label8" runat="server" Text="Instruction"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
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
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label11" runat="server" Text="Serial No"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            <asp:Label ID="Label12" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label13" runat="server" Text="Mobile No"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            <asp:Label ID="Label14" runat="server" Text="TP Number"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label15" runat="server" Text="Department"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="txtdepratment" runat="server"></asp:TextBox>
                            <asp:Button runat="server" Text=".." ID="cmdgetdeptlist" />
                        </td>
                        <td class="auto-style11">
                            <asp:Label ID="Label16" runat="server" Text="Warranty No"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                            <asp:Button runat="server" ID="cmdgetwarrantyno" Text="..." />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ContentTemplate></asp:TabPanel><asp:TabPanel ID="tpcustomer" runat="server" HeaderText="Customer Data">



            <ContentTemplate></ContentTemplate>
        </asp:TabPanel>
     
        <asp:TabPanel ID="tpitem" runat="server" HeaderText="Item Data">
            
        </asp:TabPanel>

     </asp:TabContainer>
     
    </ContentTemplate>
    </asp:UpdatePanel>
        
    
</asp:Content>
