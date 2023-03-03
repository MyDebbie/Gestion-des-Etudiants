<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Gestion_des_Etudiants.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="icon" href="icon.svg" type="image/svg" sizes="192x192"/>
    <style type="text/css">
        .auto-style7 {
            height: 22px;
            width: 399px;
        }
        .auto-style8 {
            width: 399px;
        }
        .auto-style9 {
            height: 22px;
            width: 19px;
        }
        .auto-style10 {
            width: 19px;
        }
        .auto-style11{
            width: 19px;
            
        }
        #btnAdd{
            position: absolute;
            width: 172px;
            height: 50px;
            left: 20px;
            top: 190px;

            background: #034C8C;
            border-radius: 30px;
        }
        #btnDelete{
           position: absolute;
            width: 172px;
            height: 50px;
            left: 20px;
            top: 401px;

            background: #034C8C;
            border-radius: 30px;
        }
        #btnModify{
            position: absolute;
            width: 172px;
            height: 50px;
            left: 20px;
            top: 573px;

            background: #034C8C;
            border-radius: 30px;
        }
        #lbstudent{
            position: absolute;
            width: 693px;
            height: 174px;
            left: 247px;
            top: 115px;

            background: #D9A38F;
            border-radius: 24px;

            
            display: flex;
            align-items: center;
            text-align: center;
            justify-content: center;
            letter-spacing: 0.05em;

            color: #1E1E1E;
        }
        form {
          color: #555;
          display: flex;
          border: 1px solid currentColor;
          border-radius: 30px;
            width: 250px;
            height: 43px;
            right: 960px;
            top: 54px;
        }
        input[type="search"] {
          border: none;
          background: transparent;
          margin: 0;
          padding: 7px 8px;
          font-size: 14px;
          color: inherit;
          border: 1px solid transparent;
          border-radius: inherit;
        }

        input[type="search"]::placeholder {
          color: #bbb;
        }
        button[type="submit"] {
          text-indent: -999px;
          overflow: hidden;
          width: 40px;
          padding: 0px;
          margin-top: 0;
          border: 1px solid transparent;
          border-radius: inherit;
          background: transparent url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' class='bi bi-search' viewBox='0 0 16 16'%3E%3Cpath d='M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z'%3E%3C/path%3E%3C/svg%3E") no-repeat center;
          cursor: pointer;
          opacity: 0.7;
        }

        button[type="submit"]:hover {
          opacity: 1;
        }
        button[type="submit"]:focus,
        input[type="search"]:focus {
          box-shadow: 0 0 3px 0 #1183d6;
          border-color: #1183d6;
          outline: none;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
         
 
         <table style="width:100%;">
             <tr>
                 <td class="auto-style7">
                     
                     <asp:Button ID="btnAdd" runat="server" Text="Add" Font-Bold="True" Font-Size="Medium" ForeColor="White" BorderStyle="None" />
                    <asp:Panel ID="ModalPanel" runat="server" Width="500px">
                         ASP.NET AJAX is a free framework for quickly creating a new generation of more 
                         efficient, more interactive and highly-personalized Web experiences that work 
                         across all the most popular browsers.<br />
                         <asp:Button ID="OKButton" runat="server" Text="Close" />
                        </asp:Panel>
                     <ajaxToolkit:ModalPopupExtender ID="mpe" runat="server" TargetControlId="btnAdd" 
                            PopupControlID="ModalPanel" OkControlID="OKButton" />
                     <asp:ScriptManager ID="asm" runat="server" />


                 </td>
               
                 <td class="auto-style9">
                     <asp:Label ID="lbstudent" runat="server" Text="Student List" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                 </td>
                 <td class="auto-style11" rowspan="3">
                        <form>
                          <input type="search" placeholder="Search..."/>
                          <button type="submit">Search</button>
                        </form>
                  </td>
             </tr>
                
             <tr>

                 <td class="auto-style8">
                     <asp:Button ID="btnDelete" runat="server" Text="Delete" BackColor="#034C8C" Font-Bold="True" Font-Size="Medium" ForeColor="White" BorderStyle="None" />
                 </td>
                 <td class="auto-style10" rowspan="2">
                      <asp:GridView ID="gvStudent" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="654px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style8">
                     <asp:Button ID="btnModify" runat="server" Text="Modify" BackColor="#034C8C" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="44px" BorderStyle="None" />
                 </td>
             </tr>
         </table>
         
    </form>
    </body>
</html>
