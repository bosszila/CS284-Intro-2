<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 168px;
            text-align: center;
        }
        
        .auto-style4 {
            width: 390px;
        }
        .auto-style5 {
            width: 800px;
        }
        
        .auto-style3 {
            width: 798px;
            height: 305px;
            margin-right: 0px;
            margin-top: 0px;
        }
        
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            width: 390px;
            text-align: center;
            height: 16px;
        }
        .auto-style8 {
            text-align: center;
            height: 30px;
        }
        
        .auto-style9 {
            text-align: center;
            height: 31px;
        }
        
        </style>
</head>
<body >
    <form id="form1" runat="server" style="background-image:url('bg.jpg')">
    <div>

    <table align ="center" Width="1200px" Height="900px">
      <tr>
          <td class="auto-style5">
                   <img alt="" class="auto-style3" src="logoweb_cs.jpg" /></td>
          <td class="auto-style4">
                <table align ="center" style="background-color:#ffffff " Width="300px" border="1" >
                 <tr>
            <td class="auto-style2" >
                <asp:Image ID="Image1" runat="server" Height="146px" ImageUrl="ตรามธ.jpg" style="text-align: right" Width="150px" />
            </td>
            </tr>
    <tr>
    <td class="auto-style7">ชื่อ&nbsp;&nbsp;&nbsp; <asp:TextBox ID="t1" runat ="server" style="margin-bottom: 0px" Width="123px" Height="16px" OnTextChanged="Button1_Click"></asp:TextBox></td>
    </tr>
    
    <td class="auto-style6" >สกุล&nbsp; <asp:TextBox ID="t2" runat ="server" Width="128px" OnTextChanged="Button1_Click"></asp:TextBox></td>
    </tr>
    
       <tr>
    <td class="auto-style6" >รหัสนักศึกษา&nbsp; <asp:TextBox ID="t3"  runat ="server" style="margin-bottom: 0px" Width="122px" OnTextChanged="Button1_Click"></asp:TextBox></td>
    </tr>
    <tr>
    <td class="auto-style9" >
        รหัสผ่าน<asp:TextBox ID="t4" TextMode="Password" runat="server" OnTextChanged="Button1_Click"></asp:TextBox>
        </td>
    </tr>
        <tr>
            <td style="text-align: center">
                เกรดเฉลี่ย <asp:TextBox ID="t5"  runat="server" OnTextChanged="Button1_Click"></asp:TextBox>
            </td>
        <//tr>

        <tr>

    <td class="auto-style8" >
        <asp:Button ID="Button1" runat="server" Text="ยืนยัน" Width="57px" OnClick="Button1_Click"  />
        <asp:Button ID="Button2" runat="server" Text="ย้อนกลับ" OnClick="Button2_Click"  />
    </td>
    </tr>
    </table>
          </td>
      </tr>  
    </table>
    </div>
    </form>
</body>
</html>
