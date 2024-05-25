<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   

    <table class="w-100" style="background-color: #99CCFF">
        <tr>
            <td colspan="2" style="font-family: 'MV Boli'; font-size: x-large; font-weight: bold; color: #000000; height: 37px; text-align: center;">Complete CRUD operations in Asp.Net with sql&nbsp;with stored procedure</td>
        </tr>
        <tr>
            <td style="width: 179px; height: 8px;"></td>
            <td style="height: 8px"></td>
        </tr>
        <tr>
            <td style="padding-left: 400px;">
                <asp:Label ID="Label1" runat="server" Text="Employee_Id" Font-Size="Medium"></asp:Label>
            </td>
            <td style="text-align: center; padding-right: 250px;">
                <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td style="padding-left: 400px;">
                <asp:Label ID="Label2" runat="server" Text="EmployeeName" Font-Size="Medium"></asp:Label>
            </td>
            <td style="text-align: center; padding-right: 250px;">
                <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 400px;">
                <asp:Label ID="Label3" runat="server" Text="Address" Font-Size="Medium"></asp:Label>
            </td>
            <td style="text-align: center; padding-right: 250px;">
                <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 400px;">
                <asp:Label ID="Label4" runat="server" Text="Salary"></asp:Label>
            </td>
            <td style="text-align: center; padding-right: 250px;">
                <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 38px; padding-left: 400px;">
                <asp:Label ID="Label5" runat="server" Text="Role"></asp:Label>
            </td>
            <td style="height: 38px; text-align: center; padding-right: 250px;">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="150px" Height="33px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Backend Developer</asp:ListItem>
                    <asp:ListItem>Frontend Developer</asp:ListItem>
                    <asp:ListItem>Automation Tester</asp:ListItem>
                    <asp:ListItem>TeamLead</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 179px; height: 29px;"></td>
            <td style="height: 29px"></td>
        </tr>
        <tr>
            <td style="width: 179px; height: 21px;"></td>
            <td style="height: 21px"></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 12px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button10" runat="server" BackColor="#6600CC" BorderColor="White" ForeColor="White" OnClick="Button10_Click" Text="FetchByName" Width="111px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Insert" Width="112px" BackColor="#669999" Font-Size="Medium" ForeColor="White" OnClick="Insert_Button" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button6" runat="server" Text="Update" Width="112px" BackColor="Blue" Font-Size="Medium" ForeColor="White" OnClick="Update_Button" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button7" runat="server" Text="Delete" Width="112px" BackColor="Red" Font-Size="Medium" ForeColor="White" OnClick="Delete_Button" OnClientClick="return confirm(' are you want to delete?');" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button8" runat="server" Text="Fetch" Width="112px" BackColor="Lime" Font-Size="Medium" ForeColor="White" OnClick="Fetch_Button" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button9" runat="server" Text="Clear" Width="112px" BackColor="#FF9900" Font-Size="Medium" ForeColor="White" OnClick="Clear_Button" />
                &nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 36px;" colspan="2"></td>
        </tr>
        <tr>
            <td style="height: 33px;" colspan="2">
                <asp:GridView ID="GridView1" runat="server" Width="846px" BackColor="#CCCCCC" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <HeaderStyle BackColor="#FF99FF" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="height: 31px;" colspan="2"></td>
        </tr>
        <tr>
            <td style="height: 36px;" colspan="2"></td>
        </tr>
    </table>

   

</asp:Content>
