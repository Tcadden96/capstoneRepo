<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.Master" AutoEventWireup="true" CodeBehind="Messenger.aspx.cs" Inherits="LabScheduleingAssistant.ShiftTrade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="messengerStyles.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <div class="ChatTable">
        <asp:Table ID="tblChat" runat="server" Width="1118px" Height="189px">
     <%--  //chat    --%>    

            <asp:TableHeaderRow>
                <asp:TableHeaderCell Style="width:100%;">LIVE CHAT</asp:TableHeaderCell>
            </asp:TableHeaderRow>
                    
           
            <asp:TableRow>
              
                <asp:TableCell Wrap="False" >
                    
                     <asp:TextBox ID="txtChatText" runat="server"  TextMode="MultiLine" Width="807px" ReadOnly="True" Rows="10" Wrap="False" style="overflow:scroll" >
                         Marah : Hi Guys!!!
                         Lisa : Hi Marah!!!
                         Tommy : Good Morning!!!!
                     </asp:TextBox>

       
                </asp:TableCell>
                     
                <asp:TableCell>
                     <asp:DropDownList ID="ddlChatUsers" runat="server" Width="300px">
                         <asp:ListItem>Live Chat Members</asp:ListItem>
                         <asp:ListItem>Marah</asp:ListItem>
                         <asp:ListItem>Lisa</asp:ListItem>
                         <asp:ListItem>Tommy</asp:ListItem>
                         <asp:ListItem>Harsha</asp:ListItem>
        </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableFooterRow>
                <asp:TableCell>
                    <asp:TextBox ID="txtChatInput" runat="server" Width="400px" TextMode="MultiLine" Rows="5" style="overflow:scroll; width:100%"></asp:TextBox>
                     
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnEnterChatInput" runat="server" Text="Send" style="width:100%; height:100%"/>
                </asp:TableCell>
                
                   
               
            </asp:TableFooterRow>
           
            </asp:Table>
             </div>
    </form>

</asp:Content>
