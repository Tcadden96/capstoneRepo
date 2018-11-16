<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="LabScheduleingAssistant.AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h2>Admin Controls</h2>
    </div>
    <br /><br />
    <div class="row">
        <div class="col-12">
            <h4>Create New Account</h4><br />
        </div>
        <div class="col-6">
            <label>First Name</label><br />
            <input type="text" /><br /><br />
            <label>TU ID</label><br />
            <input type="text" /><br /><br />
            <label>Manager</label>
            <input type="radio" />
        </div>
        <div class="col-6">
            <label>Last Name</label><br />
            <input type="text" /><br /><br />
            <label>Major</label><br />
            <input type="text" /><br /><br />
            <input type="button" value="Create Account" class="btn btn-primary" />
        </div>
    </div>
    <br />
    <br />
    <div class="row">
        <div class="col-12">
            <h4>Update Account</h4><br />
        </div>
        <div class="col-12" >
            <label>Select Account</label><br />
            <input type="search" />
            <input type="button" value="Select" /><br />
        </div>
        <div class="col-12" style="text-align: center;">
            <h5>Account Name:</h5>
        </div>
        <div class="row col-12" style="background-color: lightgray; border: solid #222222 3px">
            <div class="col-3" style="text-align: center;">
               
                <label style="margin-top:5px;">Major</label>
                <input type="text" />
            </div>
            <div class="col-3" style="text-align: center;">
                <br />
                <label>Manager</label>
                <input type="radio" /><br />
                 <br />
              
            </div>
            <div class="col-3" style="text-align: center;">
                <br />
                <label>Admin</label>
                <input type="radio" /><br />
                 <br />
              
            </div>
            <div class="col-3" style="text-align: center;">
                <br />
                <input type="button" value="Update" /><br />
                 <br />
              
            </div>
        </div>
    </div>
    <br />
</asp:Content>
