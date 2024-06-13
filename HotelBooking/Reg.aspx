
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="HotelBooking.Reg" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        body {
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 800px;
        }
        .header-image {
            width: 100%;
            height: auto;
            border-radius: 10px;
            object-fit: cover;
        }
        .form-title {
            color: #333333;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-label {
            font-weight: bold;
        }
        .btn-custom {
            background-color: lime;
            border: none;
            font-weight: bold;
            color: black;
        }
        .background-image {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('img/hh.jpg') no-repeat center center/cover;
            z-index: -1;
        }
        .auto-style1 {
            position: absolute;
            margin-top: .3rem;
            margin-left: -1.25rem;
            left: 214px;
            top: 5px;
        }
        .auto-style2 {
            position: absolute;
            margin-top: .3rem;
            margin-left: -1.25rem;
            left: 115px;
            top: 4px;
        }
        .auto-style3 {
            position: absolute;
            margin-top: .3rem;
            margin-left: -1.25rem;
            left: 114px;
            top: 1px;
        }
        .auto-style4 {
            position: absolute;
            margin-top: .3rem;
            margin-left: -1.25rem;
            left: 15px;
            top: -2px;
        }
    </style>
</head>
<body>
    <div class="background-image"></div>
    <form id="form1" runat="server">
          <div class="form-container">
            <h2 class="text-center form-title" style="color: #FF0000; text-decoration: underline;">Registration Form</h2>
            <div class="form-group row">
                <label for="TextBox1" class="col-sm-2 col-form-label form-label">First Name</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First Name is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
                <label for="TextBox2" class="col-sm-2 col-form-label form-label">Last Name</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last Name is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group row">
                <label for="TextBox3" class="col-sm-2 col-form-label form-label">Username</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Username is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
                <label for="TextBox4" class="col-sm-2 col-form-label form-label">Password</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Password is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Passwords must be at least 6 characters" ValidationExpression="^.*(?=.{6,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group row">
                <label for="TextBox5" class="col-sm-2 col-form-label form-label">Confirm Password</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Confirm Password is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox5" ControlToCompare="TextBox4" ErrorMessage="Passwords do not match." CssClass="text-danger" Display="Dynamic"></asp:CompareValidator>
                </div>
                <label for="TextBox6" class="col-sm-2 col-form-label form-label">Email</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Email is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Invalid email format." CssClass="text-danger" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group row">
                <label for="TextBox7" class="col-sm-2 col-form-label form-label">Phone Number</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Phone Number is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="Invalid phone number format." CssClass="text-danger" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </div>
                <label for="TextBox8" class="col-sm-2 col-form-label form-label">Address</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Address is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group row">
                <label for="DropDownList1" class="col-sm-2 col-form-label form-label">Country</label>
                <div class="col-sm-4">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem Value="" Text="Select a country"></asp:ListItem>
                        <asp:ListItem>INDIA</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>PAK</asp:ListItem>
                        <asp:ListItem>Malaysia</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>Rasia</asp:ListItem>
                        <asp:ListItem>Ukraine</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList1" InitialValue="" ErrorMessage="Country is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
                 <label class="col-sm-2 col-form-label form-label">Gender</label>
                <div class="col-sm-4 d-flex align-items-center">
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gen" Text="Male" CssClass="form-check-input" />
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gen" Text="Female" CssClass="auto-style2" />
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label form-label">Language Known</label>
                <div class="col-sm-10 d-flex align-items-center">
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="English" CssClass="auto-style4" />
                    &nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="Marathi" CssClass="auto-style1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Hindi" CssClass="auto-style3" />
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-12 text-center">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-custom" OnClick="Button1_Click" Text="REGISTER" />
                </div>
            </div>
        </div>
    </form>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

