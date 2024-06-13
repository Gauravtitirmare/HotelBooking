
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Room.aspx.cs" Inherits="HotelBooking.Room" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Room Booking</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .booking-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        body {
            background-image: url('img/Room5.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            height: 100vh;
        }
        .booking-title {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="d-flex justify-content-center align-items-center h-100">
        <div class="booking-container">
            <div class="booking-title" style="color: #FF0000; text-decoration: underline">Room Booking</div>
            <div class="form-group">
                <label for="TextBox1" style="color: #000000">Username</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" 
                    ErrorMessage="Username is required" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Room Type" ForeColor="Black"></asp:Label>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="r" Text="Deluxe" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="r" Text="Ordinary" />
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Room Type is required" 
                    CssClass="text-danger" Display="Dynamic" ClientValidationFunction="validateRoomType" 
                    ValidateEmptyText="true"></asp:CustomValidator>
            </div>
            
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Amenities" ForeColor="Black"></asp:Label>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="AC" />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Computer" />
                <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Select at least one amenity" 
                    CssClass="text-danger" Display="Dynamic" ClientValidationFunction="validateAmenities" 
                    ValidateEmptyText="true"></asp:CustomValidator>
            </div>

            <div class="text-center">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-block" OnClick="Button1_Click" Text="Book Room" />
                <br />
                <br />
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </div>
        </div>
    </form>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function validateRoomType(sender, args) {
            args.IsValid = document.querySelector('input[name="r"]:checked') != null;
        }

        function validateAmenities(sender, args) {
            args.IsValid = document.getElementById('<%= CheckBox1.ClientID %>').checked ||
                           document.getElementById('<%= CheckBox2.ClientID %>').checked;
        }
    </script>
</body>
</html>


