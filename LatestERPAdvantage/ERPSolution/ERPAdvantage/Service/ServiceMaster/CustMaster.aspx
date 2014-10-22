<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustMaster.aspx.cs" Inherits="ERPAdvantage.MST.CustMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p style="text-align:right;"><asp:Button ID="btnAdd" runat="Server" Text="Add New Record" OnClick="AddNewRecord" CssClass="textbox"/></p>

<asp:GridView ID="gvCustomerDetails" runat="Server" AutoGenerateColumns="False" CssClass="textbox"

BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" ShowHeaderWhenEmpty="true"

CellPadding="4" ForeColor="Black" GridLines="Vertical" SkinID="RecordList" Width="5%"

OnRowCommand="gvCustomerDetails_OnRowCommand1" ShowFooter="False" 
        AutoGenerateEditButton="true" OnRowEditing="EditRecord" OnRowCancelingEdit="CancelRecord"

OnRowUpdating="UpdateRecords" DataKeyNames="Cust_No" EnableViewState="True">

<Columns>

<%--<asp:BoundField DataField="AutoID" HeaderText="AutoID" ReadOnly="True" />--%>
<asp:BoundField DataField="CUST_NO" HeaderText="Cust No" SortExpression="CUST_NO" Visible="false" />
     
<asp:TemplateField HeaderText=" First name">

<ItemTemplate>

<%# Eval("CustomerName")%>


</ItemTemplate>

<EditItemTemplate>

<%--<asp:TextBox ID="txtUserName" runat="Server" Text='<%# Eval("UserName") %>'></asp:TextBox>--%>
<asp:DropDownList ID="ddlPrefix" runat="server" CssClass="textbox"  SelectedValue='<%# Eval("Prefix").ToString() %>' AutoPostBack="true" >
</asp:DropDownList>
<asp:TextBox ID="txtFname"  CssClass="textbox" Text='<%# Eval("CustomerName") %>'  runat="server" Width="123px"></asp:TextBox>

</EditItemTemplate>

<FooterTemplate>

<asp:DropDownList ID="ddlPrefix" runat="server" CssClass="textbox" AutoPostBack="true" >
</asp:DropDownList>
<asp:TextBox ID="txtFname"  CssClass="textbox" runat="server" Width="123px"></asp:TextBox>

</FooterTemplate>


</asp:TemplateField>

<asp:TemplateField HeaderText="Inv Address">

<ItemTemplate>

<%# Eval("InvoiceAddress")%>


</ItemTemplate>

<EditItemTemplate>
<textarea id="txtInAddress" cols="20" name="S5"  CssClass="textbox"  value='<%# Eval("InvoiceAddress")%>' runat="server"></textarea>

<%--<asp:TextBox ID="txtPassword" runat="Server" Text='<%# Eval("Password") %>'></asp:TextBox>--%>
</EditItemTemplate>

<FooterTemplate>

<%--<asp:TextBox ID="txtPassword" runat="Server"></asp:TextBox>--%>
<textarea id="txtInAddress" cols="20" name="S5"  CssClass="textbox" runat="server"></textarea>

</FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="Ser Address">

<ItemTemplate>

<%# Eval("ServiceAddress")%>


</ItemTemplate>

<EditItemTemplate>
<%--<asp:TextBox ID="txtSuperPassword" runat="Server" Text='<%# Eval("SuperPassword") %>'></asp:TextBox>
--%>    
<textarea id="txtSerAddress" CssClass="textbox" cols="20" name="S4" value='<%# Eval("ServiceAddress")%>' runat="server"></textarea>
 </EditItemTemplate>
 <FooterTemplate>
<%--<asp:TextBox ID="txtSuperPassword" runat="Server"></asp:TextBox>--%>
<textarea id="txtSerAddress" CssClass="textbox" cols="20" name="S4" runat="server"></textarea>
</FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="Area Name">

<ItemTemplate>

<%# Eval("AreaName")%>


</ItemTemplate>

<EditItemTemplate>

<%--<asp:DropDownList ID="dropType" runat="server" SelectedValue='<%# Eval("UserType").ToString() %>'>

<asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>

<asp:ListItem Text="Maint" Value="Maint"></asp:ListItem>

</asp:DropDownList>--%>

 <asp:DropDownList ID="ddlAreaName" CssClass="textbox" runat="server" SelectedValue='<%# Eval("AreaName").ToString() %>'  AutoPostBack="True">
 </asp:DropDownList>
</EditItemTemplate>

<FooterTemplate>

<%--<asp:DropDownList ID="dropType" runat="server">

<asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>

<asp:ListItem Text="Maint" Value="Maint"></asp:ListItem>

</asp:DropDownList>--%>
 <asp:DropDownList ID="ddlAreaName" CssClass="textbox" runat="server" AutoPostBack="True">
 </asp:DropDownList>

</FooterTemplate>


</asp:TemplateField>

<asp:TemplateField HeaderText="Category">
<ItemTemplate>
<%# Eval("Category")%>
</ItemTemplate>

<EditItemTemplate>
<%--<asp:TextBox ID="txtAdminDesc" Columns="30" runat="Server" Text='<%# Eval("AdminDesc") %>'></asp:TextBox>--%>
<asp:DropDownList ID="ddlCatogory" runat="server" CssClass="textbox"  SelectedValue='<%# Eval("Category").ToString() %>' AutoPostBack="True">
 </asp:DropDownList>
 </EditItemTemplate>
 <FooterTemplate><%--
 <asp:TextBox ID="txtAdminDesc" runat="Server" Text='<%# Eval("AdminDesc") %>'></asp:TextBox>--%>
 <asp:DropDownList ID="ddlCatogory" runat="server" CssClass="textbox" AutoPostBack="True">
 </asp:DropDownList>
 </FooterTemplate>
 </asp:TemplateField>

<asp:TemplateField HeaderText=" Spl.Cust">

<ItemTemplate>

<%# Eval("SpecicalCustomer")%>


</ItemTemplate>

<EditItemTemplate>

<%--<asp:DropDownList ID="dropActive" runat="server" SelectedValue='<%# Eval("Active").ToString().ToLower().Equals("true") ? "True" : "False" %>'>

<asp:ListItem Text="Yes" Value="True"></asp:ListItem>

<asp:ListItem Text="No" Value="False"></asp:ListItem>

</asp:DropDownList>--%>

<asp:DropDownList ID="ddlSplcust" runat="server" CssClass="textbox" SelectedValue='<%# Eval("SpecicalCustomer").ToString() %>' Height="18px" Width="76px">
<asp:ListItem>SELECT</asp:ListItem>
 <asp:ListItem>Y</asp:ListItem>
  <asp:ListItem>N</asp:ListItem>
 </asp:DropDownList>
</EditItemTemplate>

<FooterTemplate>

<%--<asp:DropDownList ID="dropActive" runat="server">

<asp:ListItem Text="Yes" Value="True"></asp:ListItem>

<asp:ListItem Text="No" Value="False"></asp:ListItem>

</asp:DropDownList> <br />--%>
<asp:DropDownList ID="ddlSplcust" runat="server" CssClass="textbox" Height="18px" Width="76px">
<asp:ListItem>SELECT</asp:ListItem>
 <asp:ListItem>Y</asp:ListItem>
  <asp:ListItem>N</asp:ListItem>
 </asp:DropDownList>
<asp:Button ID="btnInsert" runat="Server" Text="Insert" CommandName="Insert" UseSubmitBehavior="False" />

</FooterTemplate>
</asp:TemplateField>


<asp:TemplateField HeaderText="Credit Limit">

<ItemTemplate>

<%# Eval("CreditLimit")%>

</ItemTemplate>

<EditItemTemplate>
 <asp:TextBox ID="txtCreLimit" CssClass="textbox" value='<%# Eval("CreditLimit")%>' runat="server"></asp:TextBox>
 </EditItemTemplate>
 <FooterTemplate>
 <asp:TextBox ID="txtCreLimit" CssClass="textbox" runat="server"></asp:TextBox>
</FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="Credit Given">

<ItemTemplate>

<%# Eval("CreditGiven")%>

</ItemTemplate>

<EditItemTemplate>
 <asp:TextBox ID="txtCreGiven" CssClass="textbox" value='<%# Eval("CreditGiven")%>' runat="server"></asp:TextBox>
 </EditItemTemplate>
 <FooterTemplate>
 <asp:TextBox ID="txtCreGiven" CssClass="textbox" runat="server"></asp:TextBox>
</FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText=" Vat Number">

<ItemTemplate>

<%# Eval("VATNo")%>

</ItemTemplate>

<EditItemTemplate>
 <asp:TextBox ID="txtVatNo" CssClass="textbox" value='<%# Eval("VATNo")%>' runat="server"></asp:TextBox>
   <asp:CheckBox ID="cheVatnumber" CssClass="textbox" runat="server" />
 </EditItemTemplate>
 <FooterTemplate>
 <asp:TextBox ID="txtVatNo" CssClass="textbox" runat="server"></asp:TextBox>
   <asp:CheckBox ID="cheVatnumber" CssClass="textbox" runat="server" />
</FooterTemplate>
</asp:TemplateField>


<asp:TemplateField HeaderText="Vat Applicable">
<ItemTemplate>
<%# Eval("VAT_Applicable")%>
</ItemTemplate>
<EditItemTemplate>
   <asp:CheckBox ID="cheVatnumber" CssClass="textbox"  Checked='<%# Eval("VAT_Applicable")%>' runat="server" />
 </EditItemTemplate>
 <FooterTemplate>
   <asp:CheckBox ID="cheVatnumber" CssClass="textbox" runat="server" />
</FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="Telephone No1">
<ItemTemplate>
<%# Eval("TelephoneNo1")%>
</ItemTemplate>
<EditItemTemplate>
   <asp:TextBox ID="txttelNo1" CssClass="textbox" Text='<%# Eval("TelephoneNo1")%>' runat="server"></asp:TextBox>
 </EditItemTemplate>
 <FooterTemplate>
<asp:TextBox ID="txttelNo1" CssClass="textbox" runat="server"></asp:TextBox>
</FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="Telephone No2">
<ItemTemplate>
<%# Eval("TelephoneNo2")%>
</ItemTemplate>
<EditItemTemplate>
   <asp:TextBox ID="txtTelno2" CssClass="textbox" Text='<%# Eval("TelephoneNo2")%>' runat="server"></asp:TextBox>
 </EditItemTemplate>
 <FooterTemplate>
<asp:TextBox ID="txtTelno2" CssClass="textbox" runat="server"></asp:TextBox>
</FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="Fax No">
<ItemTemplate>
<%# Eval("FaxNo")%>
</ItemTemplate>
<EditItemTemplate>
   <asp:TextBox ID="txtFaxno" CssClass="textbox" Text='<%# Eval("FaxNo")%>' runat="server"></asp:TextBox>
 </EditItemTemplate>
 <FooterTemplate>
<asp:TextBox ID="txtFaxno" CssClass="textbox" runat="server"></asp:TextBox>
</FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="Mobile no">
<ItemTemplate>
<%# Eval("CellularNo")%>
</ItemTemplate>
<EditItemTemplate>
   <asp:TextBox ID="txtMobNo" CssClass="textbox" Text='<%# Eval("CellularNo")%>' runat="server"></asp:TextBox>
 </EditItemTemplate>
 <FooterTemplate>
<asp:TextBox ID="txtMobNo" CssClass="textbox" runat="server"></asp:TextBox>
</FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="Email Address">
<ItemTemplate>
<%# Eval("EmailId")%>
</ItemTemplate>
<EditItemTemplate>
   <asp:TextBox ID="txtEmailAddress"  CssClass="textbox"  Text='<%# Eval("EmailId")%>' runat="server"></asp:TextBox>
 </EditItemTemplate>
 <FooterTemplate>
<asp:TextBox ID="txtEmailAddress"  CssClass="textbox" runat="server"></asp:TextBox>
</FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="Cont.Per Service">
<ItemTemplate>
<%# Eval("ContactPerson_Technical")%>
</ItemTemplate>
<EditItemTemplate>
    <asp:TextBox ID="txtContPerSer" CssClass="textbox" Text='<%# Eval("ContactPerson_Technical")%>' runat="server"></asp:TextBox>
 </EditItemTemplate>
 <FooterTemplate>
 <asp:TextBox ID="txtContPerSer" CssClass="textbox" runat="server"></asp:TextBox>
</FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText=" Telephone No">
<ItemTemplate>
<%# Eval("ContactPerson_PhoneNo3")%>
</ItemTemplate>
<EditItemTemplate>
    <asp:TextBox ID="txtTelnoSer"  CssClass="textbox" Text='<%# Eval("ContactPerson_PhoneNo3")%>'  runat="server"></asp:TextBox>
 </EditItemTemplate>
 <FooterTemplate>
 <asp:TextBox ID="txtTelnoSer"  CssClass="textbox" runat="server"></asp:TextBox>
</FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="Cont.Per Inv">
<ItemTemplate>
<%# Eval("ContactPerson_Invoice")%>
</ItemTemplate>
<EditItemTemplate>
   <asp:TextBox ID="txtConPerinv" CssClass="textbox"  Text='<%# Eval("ContactPerson_Invoice")%>' runat="server"></asp:TextBox> 
 </EditItemTemplate>
 <FooterTemplate>
 <asp:TextBox ID="txtConPerinv" CssClass="textbox" runat="server"></asp:TextBox>
</FooterTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="Telephone No">
<ItemTemplate>
<%# Eval("ContactPerson_PhoneNo4")%>
</ItemTemplate>
<EditItemTemplate>
   <asp:TextBox ID="txtTelnoInv" CssClass="textbox" Text='<%# Eval("ContactPerson_PhoneNo4")%>' runat="server"></asp:TextBox>
 </EditItemTemplate>
 <FooterTemplate>
 <asp:TextBox ID="txtTelnoInv" CssClass="textbox" runat="server"></asp:TextBox>
</FooterTemplate>
</asp:TemplateField>
</Columns>

<FooterStyle BackColor="#CCCC99" />

<RowStyle BackColor="#F7F7DE" />

<SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />

<PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />

<HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />

<AlternatingRowStyle BackColor="White" />

<EmptyDataTemplate >

<table class="style8">
<tr>
<td class="style14">
    First name</td>
<td class="style15">
    <asp:DropDownList ID="ddlPrefix" runat="server" CssClass="textbox" AutoPostBack="true" >
    </asp:DropDownList>
    <asp:TextBox ID="txtFname"  CssClass="textbox" runat="server" Width="123px"></asp:TextBox>
</td>
<td class="style13" CssClass="textbox">
    Telephone No1</td>
<td class="style13">
    <asp:TextBox ID="txttelNo1" CssClass="textbox" runat="server"></asp:TextBox>
</td>

    <tr>
        <td class="style2" CssClass="textbox">
            Invoice Address</td>
        <td class="style4">
            <textarea id="txtInAddress" cols="20" name="S5" CssClass="textbox" runat="server"></textarea></td>
        <td class="style18">
            Telephone No2</td>
        <td>
            <asp:TextBox ID="txtTelno2" CssClass="textbox" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style23">
            Service Address</td>
        <td class="style25">
            <textarea id="txtSerAddress" CssClass="textbox" cols="20" name="S4" runat="server"></textarea></td>
        <td class="style24">
            Fax No</td>
        <td class="style11">
            <asp:TextBox ID="txtFaxno" CssClass="textbox" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style1">
            Area Name</td>
        <td class="style4">
            <asp:DropDownList ID="ddlAreaName" CssClass="textbox" runat="server"  AutoPostBack="True">

            </asp:DropDownList>
        </td>
        <td class="style18">
            Mobile no</td>
        <td>
            <asp:TextBox ID="txtMobNo" CssClass="textbox" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7" CssClass="textbox">
            Category</td>
        <td class="style10">
            <asp:DropDownList ID="ddlCatogory" runat="server" CssClass="textbox" AutoPostBack="True">
            </asp:DropDownList>
        </td>
        <td class="style9">
            Email Address</td>
        <td class="style9">
            <asp:TextBox ID="txtEmailAddress"  CssClass="textbox" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style1">
            Spl.Customer</td>
        <td class="style4">
        <%--     <asp:TextBox ID="txtSplcust" runat="server" Width="24px"></asp:TextBox>
        --%>      <asp:DropDownList ID="ddlSplcust" runat="server" CssClass="textbox" Height="18px" Width="76px">
                <asp:ListItem>SELECT</asp:ListItem>
                <asp:ListItem>Y</asp:ListItem>
                <asp:ListItem>N</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style18">
            Contact Person Service</td>
        <td>
            <asp:TextBox ID="txtContPerSer" CssClass="textbox" runat="server"></asp:TextBox>
        </td>
        <%-- <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
    </tr>
    <tr>
        <td class="style6">
            Credit Limit</td>
        <td class="style4">
            <asp:TextBox ID="txtCreLimit" CssClass="textbox" runat="server"></asp:TextBox>
        </td>
        <td class="style20">
            Telephone No</td>
        <td class="style17">
            <asp:TextBox ID="txtTelnoSer"  CssClass="textbox" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style16">
            Credit Given</td>
        <td class="style26">
            <asp:TextBox ID="txtCreGiven" CssClass="textbox" runat="server"></asp:TextBox>
            <br />
        </td>
        <td class="style22">
            Contact Person Invoice</td>
        <td class="style21">
            <asp:TextBox ID="txtConPerinv" CssClass="textbox" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style1">
            Vat Number</td>
        <td class="style4">
            <asp:TextBox ID="txtVatNo" CssClass="textbox" runat="server"></asp:TextBox>
            <br />
            <asp:CheckBox ID="cheVatnumber" CssClass="textbox" runat="server" />
        </td>
        <td class="style18">
            Telephone No</td>
        <td>
            <asp:TextBox ID="txtTelnoInv" CssClass="textbox" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            SVAT Number</td>
        <td class="style4">
            <asp:TextBox ID="txtSvatNo" CssClass="textbox" runat="server"></asp:TextBox>
                    
        </td>
        <td class="style20">
        </td>
        <td class="style17">
        </td>
    </tr>
    <tr>
        <td>
            SVAT Category</td>
        <td class="style4">
            <asp:DropDownList ID="ddlSvatcatogary" runat="server"   CssClass="textbox" AutoPostBack="True">
                <asp:ListItem Value="1">Exporters</asp:ListItem>
                <asp:ListItem Value="2">Specific Project</asp:ListItem>
                <asp:ListItem Value="3">Section 22(7)</asp:ListItem>
                <asp:ListItem Value="4">Manufacturer</asp:ListItem>
                <asp:ListItem Value="5">Value Added Supplier</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <%--<asp:Button ID="btnSave" runat="server"  CssClass="textbox" onclick="btnSave_Click" Text="Save" 
                Width="69px" />--%>
        </td>
        <td>
            <asp:Label ID="lblStates" CssClass="textbox" runat="server"></asp:Label>
        </td>
    </tr>
    </tr>
    <tr>
    <td>
    <asp:Button ID="btnInsert" runat="Server" Text="Insert" CommandName="EmptyInsert" UseSubmitBehavior="False" />
    </td>
    </tr>
</table>
</EmptyDataTemplate>

</asp:GridView>

</asp:Content>
