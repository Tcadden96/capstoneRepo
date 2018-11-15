<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.Master" AutoEventWireup="true" CodeBehind="Downloadables.aspx.cs" Inherits="LabScheduleingAssistant.Downloadables" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- File Explorer opens when button is pressed to select download location for selected file -->
    <form id="form1" runat="server">
    <h4 style="text-align:center">Weekly Schedules</h4>            
<p style="text-align:center">
            <asp:Button ID="btnLab1" runat="server" Text="Lab 1" ForeColor="Black" Width="100px" OnClick="btnLab1_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLab2" runat="server" ForeColor="Black" Text="Lab 2" width="100px" OnClick="btnLab2_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLab3" runat="server" ForeColor="Black" Text="Lab 3" width="100px" OnClick="btnLab3_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLab4" runat="server" ForeColor="Black" Text="Lab 4" width="100px" OnClick="btnLab4_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLab5" runat="server" ForeColor="Black" Text="Lab 5" width="100px" OnClick="btnLab5_Click" />
    </p>
        <p style="text-align:center">
            &nbsp;</p>
            <br />

                <div class="modal fade" id="DownloadDisplay" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        
                        <h3 class="register_header"><strong>Your download is Now starting</strong></h3>
                        <h6>The weekly schedule for this lab will now be downloaded</h6>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <a class="btn btn-success" data-dismiss="modal" style="background-color:grey; border-color:black">Close</a>
                    </div>
                </div>
            </div>
        </div>
        

    </form>
</asp:Content>
