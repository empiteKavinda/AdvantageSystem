﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DomainMaster.aspx.cs" Inherits="ERPAdvantage.Service.ServiceMaster.DomainMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            width: 156px;
        }
        .auto-style3
        {
            width: 405px;
        }
        .auto-style4
        {
            width: 137px;
        }
        .auto-style5
        {
            width: 444px;
        }
        .auto-style6
        {
            width: 74px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <asp:UpdatePanel runat ="server">
        <ContentTemplate>
            <asp:ScriptManager runat="server" />

            <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbldomtype" runat="server" Text="Domain Type"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtdomaintype" runat="server" Height="16px" Width="387px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btngetdomainlist" runat="server" Text="...." OnClick="btngetdomainlist_Click" />
            </td>
        </tr>
    </table>

    <asp:Panel  runat="server" ID="Domainlist" ScrollBars="Both" Height="200px" Width="400" Visible="false">
                         <asp:Label ID="Popup" runat="server" Text="Select Domain"></asp:Label>
                                          
                      <br />
                      <asp:Label ID="Label5" runat="server" Text="Domain Name"  BackColor="Wheat" ForeColor="Blue" />
                         &nbsp;<asp:TextBox runat="server" ID="txtsearchbydomname"  Text="%" Height="18px" Width="180px" />
                <asp:Button runat="server" ID ="cmdsearch" Text="Search.." OnClick="cmdsearch_Click" Height="23px" Width="52px" />
                      <br/>                      
                      <asp:GridView ID="GridVdomlist" runat="server" AutoGenerateSelectButton="true"  ShowHeader="true" Width="329px" style="overflow:auto" OnSelectedIndexChanged="GridVdomlist_SelectedIndexChanged"  />                                            
                      

            </asp:Panel>


    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label6" runat="server" Text="Domain Code"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label7" runat="server" Text="Domain Description"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label8" runat="server" Text="Prefix"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:TextBox ID="txtdomcode" runat="server" Height="18px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="420px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" Height="18px" Width="74px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnadd" runat="server" Text="+" OnClick="btnadd_Click" />
            </td>
        </tr>
    </table>
    <br />

    <asp:Panel  runat="server" ID="addeddom" ScrollBars="Both" Height="150px" Width="700" Visible="false">
                       
         <asp:GridView ID="gvaddeddomain" runat="server" AutoGenerateSelectButton="true"  ShowHeader="true" Width="650px" style="overflow:auto" />                                            
                 
         </asp:Panel>
        
    <br />
    <br />

        </ContentTemplate>

    </asp:UpdatePanel>

    
    
    
</asp:Content>
