<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Temperature Convertor.aspx.cs" Inherits="TemperatureConversionApp.Temperature_Convertor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            color: #000099;
        }
        .auto-style3 {
            text-align: left;
            width: 931px;
            position: absolute;
            z-index: inherit;
            left: 12px;
            top: 1px;
            margin-bottom: 0px;
        }
        .auto-style4 {
            width: 211px;
        }
        .auto-style5 {
            width: 932px;
            height: 278px;
        }
        .auto-style13 {
            width: 483px;
        }
        .auto-style15 {
            width: 211px;
            height: 60px;
        }
        .auto-style16 {
            width: 93px;
            height: 60px;
        }
        .auto-style17 {
            width: 483px;
            height: 60px;
        }
        .auto-style18 {
            width: 93px;
        }
        .auto-style19 {
            width: 210px;
        }
        .auto-style23 {
            margin-bottom: 0px;
        }
        .auto-style24 {
            width: 211px;
            height: 9px;
        }
        .auto-style25 {
            width: 93px;
            height: 9px;
        }
        .auto-style26 {
            width: 483px;
            height: 9px;
        }
        .auto-style27 {
            width: 211px;
            height: 37px;
        }
        .auto-style28 {
            width: 93px;
            height: 37px;
        }
        .auto-style29 {
            width: 483px;
            height: 37px;
        }
        .auto-style30 {
            width: 211px;
            height: 23px;
        }
        .auto-style32 {
            width: 483px;
            height: 23px;
        }
        .auto-style33 {
            height: 23px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 class="auto-style3" style="font-family: 'Arial Black'; background-color: #C0C0C0; color: #FFFFFF"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Temperature Converter</strong></h1>
            <br />
            <br />
            <br />
            <br />
        </div>
        <table class="auto-style5" draggable="true">
            <tr>
                <td class="auto-style19" rowspan="6">
                    <asp:Image ID="Thermometer" runat="server" DescriptionUrl="~/Images/Thermometer0.jfif" Height="274px" ImageUrl="~/Images/thermometer.jpg" Width="156px" />
                </td>
                <td class="auto-style24">From:</td>
                <td class="auto-style25">To:</td>
                <td class="auto-style26"></td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:DropDownList ID="DropList1" runat="server">
                        <asp:ListItem>Celsius</asp:ListItem>
                        <asp:ListItem>Fahrenheit</asp:ListItem>
                        <asp:ListItem>Kelvin</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style28">
                    <asp:DropDownList ID="DropList2" runat="server">
                        <asp:ListItem>Fahrenheit</asp:ListItem>
                        <asp:ListItem>Celsius</asp:ListItem>
                        <asp:ListItem>Kelvin</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style29"></td>
            </tr>
            <tr>
                <td class="auto-style15">Input Temperature</td>
                <td class="auto-style16">
                    <asp:TextBox ID="inputTempBox" runat="server" CssClass="auto-style23" Height="20px"></asp:TextBox>
                </td>
                <td class="auto-style17">
                    <asp:RangeValidator ID="RangeValidator1" runat="server" BackColor="White" ControlToValidate="inputTempBox" CultureInvariantValues="True" Display="Dynamic" ErrorMessage="Values must be between -1000 and 1000" Font-Size="Medium" ForeColor="#CC0000" MaximumValue="1000" MinimumValue="-1000" Type="Integer"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputTempBox" Display="Dynamic" ErrorMessage="Please add a number" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style30">Output Temperature</td>
                <td class="auto-style33" style="border-width: 1px; border-style: solid;">
                    <asp:Label ID="outoutLabel" runat="server" BorderColor="White"></asp:Label>
                </td>
                <td class="auto-style32"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="convertbtn" runat="server" OnClick="Button1_Click" Text="Convert" Width="128px" Font-Bold="False" Font-Size="Medium" />
                </td>
                <td class="auto-style18">
                    <asp:Button ID="clearBtn" runat="server" OnClick="Button2_Click" Text="Clear" Width="128px" Font-Bold="False" Font-Size="Medium" />
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
