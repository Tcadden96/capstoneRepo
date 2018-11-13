<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="LabScheduleingAssistant.Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script src="UploadingSchedule.js"></script>
    <link rel="stylesheet" href="scheduleUpload.css" />
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
                <h1>Upload Class Schedule</></h1>
                <br>
            </div>
            <div class="col-md-12 uploadfrm">
                <p>
                    <span class="btn btn-primary btn-file">browse file
                        <input type="file" onchange="readURL(this);" />
                    </span>
                </p>
            </div>

            <div class="preview">

                <img id="blah" src="" alt="" class="img-thumbnail border-0">
            </div>
        </div>
    </div>
</asp:Content>
