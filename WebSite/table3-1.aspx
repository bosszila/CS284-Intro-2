<%@ Page Language="C#" AutoEventWireup="true" CodeFile="table3-1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 228px;
            height: 232px;
        }
        .auto-style3 {
            height: 77px;
        }
        .auto-style4 {
            height: 30px;
        }
        </style>
</head>
<body style="text-align: center" >
    <form id="form1" runat="server" style="background-image:url('bg.jpg')">
    <div>





    <table class="auto-style2" align ="center">
        <tr>
        <td align ="center">
            ปี 3 เทอม 1</td>
        </tr>
        <tr>
           
            <td align ="center" class="auto-style3" >
                <asp:Image ID="Image1" runat="server" ImageUrl="~/table3-1.png" />
            </td>
            </tr>
        <tr>
    <td align ="center" class="auto-style4">
        <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click"  />
            </td>
    </tr>
                        <tr>
    <td align ="center">
            สามารถรีเกรด CS101 ได้</td>
    </tr>

    </table>


    </div>
    </form>
</body>
</html>
