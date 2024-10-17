<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="OperationApp.Demo" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Demo</title>
    <style>
        .container {
            display: flex;
        }
        .section {
            padding: 20px;
            border: 1px solid black;
            margin: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!-- Left Section -->
            <div class="section" style="width: 40%;">
                <h3>Single Number Operations</h3>
                
                <asp:Label ID="lblNo" runat="server" Text="No: "></asp:Label>
                <asp:TextBox ID="txtNo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNo" runat="server" ControlToValidate="txtNo" ErrorMessage="Please enter a number." ValidationGroup="LeftGroup" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
                
                <asp:Label ID="lblOperator" runat="server" Text="Operator: "></asp:Label>
                <asp:DropDownList ID="ddlOperator" runat="server">
                    <asp:ListItem Text="Sum of" Value="Sum"></asp:ListItem>
                    <asp:ListItem Text="Factorial" Value="Factorial"></asp:ListItem>
                </asp:DropDownList><br /><br />
                
                <asp:Button ID="btnSubmitLeft" runat="server" Text="Submit" OnClick="btnSubmitLeft_Click" ValidationGroup="LeftGroup" />
                <asp:ValidationSummary ID="vsLeft" runat="server" ValidationGroup="LeftGroup" ForeColor="Red" /><br /><br />
                
                <asp:Label ID="lblAnswerLeft" runat="server" Text="Answer: "></asp:Label>
            </div>

            <!-- Right Section -->
            <div class="section" style="width: 40%;">
                <h3>Two Number Operations</h3>
                
                <asp:Label ID="lblNo1" runat="server" Text="No1: "></asp:Label>
                <asp:TextBox ID="txtNo1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNo1" runat="server" ControlToValidate="txtNo1" ErrorMessage="Please enter No1." ValidationGroup="RightGroup" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
                
                <asp:Label ID="lblNo2" runat="server" Text="No2: "></asp:Label>
                <asp:TextBox ID="txtNo2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNo2" runat="server" ControlToValidate="txtNo2" ErrorMessage="Please enter No2." ValidationGroup="RightGroup" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
                
                <asp:Label ID="lblOperation" runat="server" Text="Operation: "></asp:Label>
                <asp:DropDownList ID="ddlOperation" runat="server">
                    <asp:ListItem Text="Addition" Value="Addition"></asp:ListItem>
                    <asp:ListItem Text="Subtraction" Value="Subtraction"></asp:ListItem>
                    <asp:ListItem Text="Multiplication" Value="Multiplication"></asp:ListItem>
                    <asp:ListItem Text="Division" Value="Division"></asp:ListItem>
                    <asp:ListItem Text="Min" Value="Min"></asp:ListItem>
                    <asp:ListItem Text="Max" Value="Max"></asp:ListItem>
                    <asp:ListItem Text="Equals" Value="Equals"></asp:ListItem>
                </asp:DropDownList><br /><br />
                
                <asp:Button ID="btnSubmitRight" runat="server" Text="Submit" OnClick="btnSubmitRight_Click" ValidationGroup="RightGroup" />
                <asp:ValidationSummary ID="vsRight" runat="server" ValidationGroup="RightGroup" ForeColor="Red" /><br /><br />
                
                <asp:Label ID="lblAnswerRight" runat="server" Text="Answer: "></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
