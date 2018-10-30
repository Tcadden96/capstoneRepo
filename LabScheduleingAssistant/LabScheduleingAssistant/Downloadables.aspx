<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.Master" AutoEventWireup="true" CodeBehind="Downloadables.aspx.cs" Inherits="LabScheduleingAssistant.Downloadables" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- File Explorer opens when button is pressed to select download location for selected file -->
    <form id="form1" runat="server">
    <h4 style="text-align:center">Weekly Schedules</h4>            
<p style="text-align:center">
            <asp:Button ID="btnLab1" runat="server" Text="Lab 1" ForeColor="Black" Width="100px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLab2" runat="server" ForeColor="Black" Text="Lab 2" width="100px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLab3" runat="server" ForeColor="Black" Text="Lab 3" width="100px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLab4" runat="server" ForeColor="Black" Text="Lab 4" width="100px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLab5" runat="server" ForeColor="Black" Text="Lab 5" width="100px" />
    </p>
        <p style="text-align:center">
            &nbsp;</p>
        <h4 style="text-align:center">Yearly Audit Data</h4>
        <p style="text-align:center">
            <asp:Button ID="btn2014" runat="server" Text="2014" ForeColor="Black" Width="100px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn2015" runat="server" ForeColor="Black" Text="2015" width="100px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn2016" runat="server" ForeColor="Black" Text="2016" width="100px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn2017" runat="server" ForeColor="Black" Text="2017" width="100px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn2018" runat="server" ForeColor="Black" Text="2018" width="100px" />
            </p>
            <br />
        </div>

    </form>
</asp:Content>
