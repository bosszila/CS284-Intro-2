<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        
    </title>
    <style type="text/css">
        
        .auto-style1 {
            width: 561px;
        }
        .auto-style2 {
            width: 561px;
            height: 26px;
        }
        .auto-style3 {
            width: 561px;
            height: 13px;
        }
        </style>
    </head>
<body>
    <form id="form1" runat="server" style="background-image:url('bg.jpg')" >
    <div>
        <table align="center" Height="1200px"; Width="900px" >
            <tr>
                <td>

    <table align ="center" style="background-color:#ffffff" 121px; width: 596px">
        <tr>
            <td style="text-align: center">
                
                <asp:Label ID="lb" runat="server" Text=""></asp:Label>
                
            </td>
        </tr>
        <tr>
        <td class="auto-style1" align ="center">
            ปีที่ต้องการจะรีเกรด</td>
        </tr>

        <tr>
        <td class="auto-style1" align ="center">
        <asp:RadioButton ID="R1" runat="server" Text="ปี1" GroupName="ปี" />  <asp:RadioButton ID="R2" runat="server" Text="ปี2" GroupName="ปี" />  <asp:RadioButton ID="R3" runat="server" Text="ปี3" GroupName="ปี" />  <asp:RadioButton ID="R4" runat="server" Text="ปี4" GroupName="ปี" />    
        </td>
        </tr>
        
        <tr>
        <td class="auto-style3" align ="center">
         <asp:RadioButton ID="RT1" runat="server" Text="เทอม 1" GroupName="เทอม" /><asp:RadioButton ID="RT2" runat="server" Text="เทอม 2" GroupName="เทอม" />
        </td>
        </tr>
        

                  <tr>
        <td class="auto-style2" align ="center">
            <asp:Button ID="Accept" runat="server" Text="ยืนยัน" OnClick="Button1_Click" />
            <asp:Button ID="Back" runat="server" Text="ย้อนกลับ" OnClick="Button2_Click" />
        </td>
        </tr>

    </table>

                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
