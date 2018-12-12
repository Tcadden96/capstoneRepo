<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="LabScheduleingAssistant.Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    <script src="js/TimePicker.js"></script>
    <link rel="stylesheet" href="css/scheduleUpload.css" />
    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah')
                        .attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 style="color:#222222">Upload Class Schedule</h1>
                <br />
            </div>
            <div class="col-md-12 uploadfrm">
                <p>
                    <span class="btn btn-primary btn-file">Upload Weekly Class Schedule Screenshot
                        <input type="file" onchange="readURL(this);" />
                    </span>
                </p>
            </div>

            <div class="preview">

                <img id="blah" src="" alt="" class="img-thumbnail border-0" width="600" height="600" />
            </div>
        </div>

        <p>Please select the times you are available:</p> <button style="background:red;border:0" >Unavailable</button><button style="background:green;border:0;">Available</button>
        <form runat="server">
            <asp:Table runat="server" CssClass="time-selector upload-table" ID="timeSelector">
                <asp:TableRow class="time-selector">
                    <asp:TableHeaderCell class="time-selector">Time/Day</asp:TableHeaderCell>
                    <asp:TableHeaderCell class="time-selector">Saturday</asp:TableHeaderCell>
                    <asp:TableHeaderCell class="time-selector">Saturday</asp:TableHeaderCell>
                    <asp:TableHeaderCell class="time-selector">Saturday</asp:TableHeaderCell>
                    <asp:TableHeaderCell class="time-selector">Saturday</asp:TableHeaderCell>
                    <asp:TableHeaderCell class="time-selector">Saturday</asp:TableHeaderCell>
                    <asp:TableHeaderCell class="time-selector">Saturday</asp:TableHeaderCell>
                    <asp:TableHeaderCell class="time-selector">Saturday</asp:TableHeaderCell>
                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">8:00AM</asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">8:30AM</asp:TableCell>
                   <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>

                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">9:00AM</asp:TableCell>
                  <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">9:30AM</asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">10:00AM</asp:TableCell>
                  <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>


                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">10:30AM</asp:TableCell>
                <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                </asp:TableRow>

                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">11:00AM</asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>


                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">11:30AM</asp:TableCell>
               <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>

                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">12:00PM</asp:TableCell>
                  <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>

                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">12:30PM</asp:TableCell>
                 <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>


                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">1:00PM</asp:TableCell>
                  <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>

                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">1:30PM</asp:TableCell>
                 <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>

                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">2:00PM</asp:TableCell>
               <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>


                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">2:30PM</asp:TableCell>
            <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>

                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">3:00PM</asp:TableCell>
                <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>


                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">3:30PM</asp:TableCell>
              <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>


                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">4:00PM</asp:TableCell>
             <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>


                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">4:30PM</asp:TableCell>
             <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>


                </asp:TableRow>
                <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">5:00PM</asp:TableCell>
                 <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>

                </asp:TableRow>
                 <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">5:30PM</asp:TableCell>
               <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>

                </asp:TableRow>
                 <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">6:00PM</asp:TableCell>
           <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>

                </asp:TableRow>
                 <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">6:30PM</asp:TableCell>
          <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>

                </asp:TableRow>
                 <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">7:00PM</asp:TableCell>
          <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>


                </asp:TableRow>
                 <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">7:30PM</asp:TableCell>
                <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>


                </asp:TableRow>
                 <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">8:00PM</asp:TableCell>
                 <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>

                </asp:TableRow>
                 <asp:TableRow class="time-selector">
                    <asp:TableCell class="time-selector">8:30PM</asp:TableCell>
                   <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);" style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>
                    <asp:TableCell class="time-selector"><asp:Button runat="server" class="true-false" BorderStyle="None" BackColor="Red" OnClientClick="return changeColor(this);"  style="background:red;"></asp:Button></asp:TableCell>

                </asp:TableRow>
            </asp:Table>
        </form>
        <br />
        <input type="radio" /><label>Are you sure none of the available times overlap with scheduled classes?</label><br />
        <input id="btnAddItem" type="button" value="Submit Availablity" style="margin-bottom:40px" />

        <div id="times"></div>
    </div>
   <script>
       function changeColor(e) {
           if (e.style.background == "red") {
               e.style.background = "green";
               
           }
           else {
               e.style.background = "red";
           }
           return false;
       }
</script>
</asp:Content>
