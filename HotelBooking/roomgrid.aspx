

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="roomgrid.aspx.cs" Inherits="HotelBooking.roomgrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Room Grid</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .grid-view-container {
            background: linear-gradient(100deg, #f6d365 0%, #fda085 70%);
            padding: 15px;
            border-radius: 7px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            color: #ffffff;
        }
        .grid-view-container h2 {
            color: #ffffff;
            font-weight: bold;
        }
        .grid-view-container .form-label {
            color: #ffffff;
        }
        .table {
            background: #ffffff;
            border-radius: 10px;
            overflow: hidden;
        }
        .table thead {
            background: #6c757d;
            color: #ffffff;
        }
        .table tbody tr:nth-child(odd) {
            background: #f8f9fa;
        }
        .table tbody tr:nth-child(even) {
            background: #ffffff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="container">
        <div class="grid-view-container">
            <h2 class="text-center">Room Grid</h2>
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="form-label"></asp:Label>
        </div>
    </form>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

