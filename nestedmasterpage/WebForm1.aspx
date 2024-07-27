<%@ Page Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="nestedmasterpage.WebForm1" %>
<%@ MasterType VirtualPath="~/NestedMasterPage1.master" %>

<asp:Content ID="c1" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <div>hello from webpage.</div>
</asp:Content>
