<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ZipCodeApp._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="jumbotron">
        <h1>Search a zip code</h1>
        <p class="lead">Use our zip code search to identify the city and state </p>
        <p><a href="ZipCodeSearch.aspx" class="btn btn-primary btn-lg">Get started &raquo;</a></p>
        <%--<p><asp:Button runat="server" ID="btnGetStarted" Text="Get Started" OnClick="btnGetStarted_Click" CssClass="btn btn-primary btn-lg" /></p>--%>
        <%-- <a href="http://www.asp.net" class="btn btn-primary btn-lg">Get started &raquo;</a> --%>
    </div>

    <div class="row">
        <table runat="server" class="col-md-12" style="text-align:center" id="tblMainTable" visible="false">
            
        </table>
    </div>

</asp:Content>
