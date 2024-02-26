﻿<%@ Page Language="C#" CodeBehind="~/Exercise2.aspx.cs" Inherits="Module1Exercise1.Exercise2" %>

<%-- Exercise 2: Exploring ASP.NET Form Controls --%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Festival Registration</title>
</head>
<body>
    <h1>Malayan Music Festival Registration</h1>
    <form runat="server">
        <%-- DONE 3.1 Create two text boxes for the first name and last name --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Text%20Boxes%20and%20Labels --%>
        <asp:TextBox ID="TextBox1" runat="server" Text="First Name"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Text="Last Name"></asp:TextBox>
       
        <%-- DONE 3.2 Create a text box for inputting the age of the user. Make sure to set the TextMode to the proper value--%>
        <asp:TextBox ID="TextBox3" runat="server" Text="Age" TextMode="SingleLine"></asp:TextBox>

        <%-- DONE 3.3 Create a DropDownList for the ticket type. It must have the following options: Starter, General Admissions, Gold, VIP --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=DropDownList --%>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="Starter"></asp:ListItem>
            <asp:ListItem Text="General Admissions"></asp:ListItem>
            <asp:ListItem Text="Gold"></asp:ListItem>
            <asp:ListItem Text="VIP"></asp:ListItem>
        </asp:DropDownList>

        <%-- DONE 3.4 Create a Radio Button List for selecing which days they are planning to attend. It must have following options: Day 1 Only, Day 2 Only, Both Day 1 and 2--%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.radiobuttonlist?view=netframework-4.8.1#:~:text=RadioButtonList%20id=%22RadioButtonList1%22 --%>
        <asp:RadioButtonList ID="RadioButton1" runat="server">
            <asp:ListItem Text="Day 1 Only"></asp:ListItem>
            <asp:ListItem Text="Day 2 Only"></asp:ListItem>
            <asp:ListItem Text="Both Day 1 and Day 2"></asp:ListItem>
        </asp:RadioButtonList>

        <%-- DONE 3.5 Create a Checkbox List for the performances they are planning to attend. List down your favorite arists for the options. --%>
        <%-- It must look something like --%>
        <%-- Which performances are you planning to attend? --%>
        <%-- <Artist Name 1> - [ ] --%>
        <%-- <Artist Name 2> - [x] --%>
        <%-- <Artist Name 3> - [ ] --%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.checkboxlist?view=netframework-4.8.1#:~:text=CheckBoxList%20id=%22checkboxlist1%22 --%>
        <h4>Which performances are you planning to attend?</h4>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem Text="SB19"></asp:ListItem>
            <asp:ListItem Text="Moira"></asp:ListItem>
            <asp:ListItem Text="Juan Karlos"></asp:ListItem>
        </asp:CheckBoxList>

        <%-- DONE 3.6 Create a FileUpload for their proof of payment. It must only accept JPG and PNG files. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_file_uploading.htm#:~:text=%3Ch3%3E%20File%20Upload:%3C/h3%3E --%>
      <br/>
      <asp:FileUpload ID="FileUpload1" runat="server" accept=".png,.jpg"/>
      <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click"  Text="Save" style="width:85px" />
    
    </form>
</body>
</html>
