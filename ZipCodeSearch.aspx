<%@ Page Title="Zip Code Search" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ZipCodeSearch.aspx.cs" Inherits="ZipCodeApp.ZipCodeSearch" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style type="text/css">
        .result_font{
            font-weight:bold;
            font-size:18pt;
            color:#7A1315;
        }
        .error_text{
            font-weight:bold;
            font-size:18pt;
            color:red;
        }
    </style>

    <div class="row">
        <table runat="server" class="col-md-12" style="text-align:center" id="tblMainTable" visible="true">
            <tr>
                <td>
                    <asp:Label runat="server" ID="lblStatusText" CssClass="error_text" Text="" Visible="false"></asp:Label><br />
                    <asp:TextBox runat="server" ID="txtStatusText" Text="" TextMode="MultiLine" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 165px">
                    <asp:Label runat="server" Text="Enter a zip code and select Submit"></asp:Label><br />
                    <asp:TextBox runat="server" ID="txtZipInput" Text=""></asp:TextBox>
                    <br /><br />
                    <asp:Label runat="server" Font-Bold="true" CssClass="result_font" ID="lblState" Text="" Visible="true"></asp:Label><br />
                    <asp:Label runat="server" ID="lblCity" CssClass="result_font" Font-Bold="true" Text="" Visible="true"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button runat="server" ID="btnSubmit" Text="Submit" CssClass="btn btn-primary btn-sm" OnClick="btnSubmit_Click" />
                </td>
            </tr>
            
        </table>
    </div>

</asp:Content>
