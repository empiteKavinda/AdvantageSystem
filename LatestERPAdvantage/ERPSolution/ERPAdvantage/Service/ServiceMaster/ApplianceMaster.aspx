<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApplianceMaster.aspx.cs" Inherits="ERPAdvantage.Service.ServiceMaster.ApplianceMaster" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1
        {
            width: 66%;
        }
        .auto-style2
        {
            width: 144px;
        }
        .auto-style3
        {
            width: 144px;
            height: 21px;
        }
        .auto-style5
        {
            width: 341px;
        }
        .auto-style6
        {
            height: 21px;
            width: 341px;
        }
        .auto-style7
        {
            width: 144px;
            height: 26px;
        }
        .auto-style8
        {
            width: 341px;
            height: 26px;
        }
        .popupcontrol
        {
            
            height:50px;
            width:50px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

        <asp:Panel runat="server" ID ="Appliancepanel">
            <br />
            <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.9em" PathSeparator=" : ">
                <CurrentNodeStyle ForeColor="#333333" />
                <NodeStyle Font-Bold="True" ForeColor="#990000" />
                <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
                <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
            </asp:SiteMapPath>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label runat="server" Text ="Appliance Code" />
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtappliancecode" runat="server" Width="284px" OnTextChanged="txtappliancecode_TextChanged"></asp:TextBox>
                    <asp:Button ID="cmdgetlist" runat="server" Height="23px" Text="...." Width="26px" OnClick="cmdgetlist_Click" />

                     

                </td>
                
                  <asp:Panel ID="Appliancelist" runat="server" Height="18px" Width="88px" BackColor="Gray">
                        <asp:Label ID="Popup" runat="server" Text="Select Appliance"></asp:Label>
                      <br/>
                      <asp:Label runat="server" Text="Appliance Code" BackColor="YellowGreen" ForeColor="Blue"/>
                      <asp:TextBox runat="server" ID="txtsearchbyappcode"  Text="%" />
                      <br />
                      <asp:Label ID="Label5" runat="server" Text="Appliance Name"  BackColor="YellowGreen" ForeColor="Blue" />
                      <asp:TextBox runat="server" ID="txtsearchbyappname"  Text="%" />
                      <br/>                      
                      <asp:GridView ID="GridVapplist" runat="server" AutoGenerateSelectButton="true"  ShowHeader="true" />                                            

                      <asp:Button runat="server" ID ="cmdselectapp" Text="Select" />
                    </asp:Panel>

                    <asp:ModalPopupExtender  ID="Panel1_ModalPopupExtender"  PopupControlID="Appliancelist" runat="server"  Enabled="True" TargetControlID="cmdgetlist" OkControlID="cmdselectapp" BackgroundCssClass="popupcontrol">
                    </asp:ModalPopupExtender>
            </tr>
            <tr>
                <td class="auto-style7">
                 
                </td>
                <td class="auto-style8">
                    
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label runat="server" Text="Description" />
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtappliancedesc" runat="server" Width="284px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Storage Cost"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtstoragecost" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Estimation Cost"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtestimationcost" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Category"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:DropDownList ID="cboappcategory" runat="server" Height="16px" Width="290px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="cmdsave" runat="server" Height="26px" Text="Save" Width="101px" />
                </td>
            </tr>
        </table>
        <br />
            

        </asp:Panel>
            </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
