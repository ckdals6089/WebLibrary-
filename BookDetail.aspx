﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookDetail.aspx.cs" Inherits="BookDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentbody" Runat="Server">
    <div>
    <h1>Book Detail Page</h1>
    <h3><a href="Book.aspx">To go Book Page</a><br />
           </h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
            DataKeyNames="Nameofbook" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Width="289px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
            <Columns>
                <asp:BoundField DataField="Nameofbook" HeaderText="Nameofbook" SortExpression="Nameofbook" />
                <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
                <asp:BoundField DataField="ISBNNumber" HeaderText="ISBNNumber" SortExpression="ISBNNumber" />
                <asp:CheckBoxField DataField="Lent" HeaderText="Lent" SortExpression="Lent" />
                <asp:BoundField DataField="FriendName" HeaderText="FriendName" SortExpression="FriendName" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNETConnectionString3 %>" 
            SelectCommand="SELECT [Nameofbook], [AuthorName], [ISBNNumber], [Genre], [Page], [Lent], [FriendName] FROM [BOOK] WHERE ([Nameofbook] = @Nameofbook)" 
            DeleteCommand="DELETE FROM [BOOK] WHERE ([Nameofbook] = @Nameofbook)" >
            <SelectParameters>
                <asp:QueryStringParameter Name="Nameofbook" QueryStringField="Nameofbook" Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="Nameofbook" Type="String" />
            </DeleteParameters>
        </asp:SqlDataSource>
        </div>
</asp:Content>
