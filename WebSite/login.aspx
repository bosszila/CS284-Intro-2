<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .auto-style1 {
            height: 176px;
            width: 308px;
        }
        
        .auto-style3 {
            width: 798px;
            height: 305px;
            margin-right: 0px;
            margin-top: 0px;
        }
        
        .auto-style4 {
            width: 308px;
        }
        
        .auto-style5 {
            width: 308px;
            height: 37px;
        }
        
    </style>
</head>
<body >
    <form id="form1" style="background-image:url('bg.jpg')" runat="server">
    <div>
       <table align ="center" Width="1200px" Height="900px">
           <tr>
               <td Width="800px">
                   <img alt="" class="auto-style3" src="logoweb_cs.jpg" /></td>
               <td>




    <table align ="center" style="background-color:#ffffff" border="1" Width="250px" Height="300px">
        <tr>
            <td  align ="center" class="auto-style1" >
                                <asp:Image ID="Image1" runat="server" Height="146px" ImageUrl="ตรามธ.jpg" style="text-align: right" Width="150px" />
            

            </td>
            </tr>
    <tr>
    <td class="auto-style5" >Username 
        <asp:TextBox ID="tbUsername" runat="server" OnTextChanged="Button1_Click"></asp:TextBox>
        </td>
    </tr>
    
    <td class="auto-style4" >Password&nbsp; 
        <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" OnTextChanged="Button1_Click"></asp:TextBox>
        </td>
    </tr>

    <tr>
    <td align ="center" class="auto-style4" >
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ยืนยัน" />
        <asp:Button ID="Button2" runat="server" Text="ลงทะเบียน" OnClick="Button2_Click1" />
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
