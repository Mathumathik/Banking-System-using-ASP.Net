<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="Project2.loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> WELCOME TO THE LOGIN PAGE  </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 327px;
        }
        .auto-style3 {
            height: 138px;
        }
        .auto-style4 {
            width: 201px;
        }
        .auto-style5 {
            width: 306px;
        }
        .auto-style6 {
            margin-left: 64px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
          <tr>
            <td colspan="6" style="text-align: center; vertical-align: top" class="auto-style3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Welcome to LKM Bank Login"></asp:Label>
             </td>
           </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td style="text-align: center" class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="UserId:"></asp:Label>
                    </td>
                    <td style="text-align: center" class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large"></asp:TextBox><br /> <br />
                    </td>
                    <td></td>
                    <td></td>
                    <td></td><br /> <br />
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td style="text-align: center" class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Password:"></asp:Label>
                    </td>
                    <td style="text-align: center" class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Large" TextMode="Password"></asp:TextBox>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr><br /> <br />
            <br /> <br />
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style4"></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style2"></td>
                    <td style="text-align: center" class="auto-style4">
                        &nbsp;</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" BorderStyle="None" Font-Size="X-Large" OnClick="Button1_Click" Text="Log In" CssClass="auto-style6" /> <br /> <br />
                         <asp:Label ID="Label4" runat="server" Font-Size="X-Large"></asp:Label>
                     </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
          </form>
   </body>
        
</html>
