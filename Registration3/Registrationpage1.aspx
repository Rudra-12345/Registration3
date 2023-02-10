<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrationpage1.aspx.cs" Inherits="Registration3.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Document Uploads</title>
    <link rel="stylesheet" href="StyleSheet1.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        var emailReg = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        var numberReg = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im;
</script>

</head>

<body>
    <style>
        .validationclass
        {
            border-color: red;
            border-width: 2px;
        }
        .errormsg{
             color:red;
            font-weight:bold;
        }
    </style>
    <form id="form1" runat="server">
        <div style="padding-top: 68px;">
           <div class="container mt-3">
        
            <div class="row jumbotron box8">

                <div class="col-sm-6 form-group">
                    <label for="name-f"> Name *</label>
                    <input type="text" runat="server" class="form-control" id="fname" placeholder="first" required />
                </div>
                <div class="col-sm-6 form-group">
                    <label for="name-f"></label>
                    <input type="text" class="form-control" name="lname" id="lname" placeholder="Last" required />
                </div>
                <div class="col-sm-12 form-group">
                    <label for="Date">Date Of Birth *</label>
                    <input type="date" name="dob" class="form-control" id="Date" placeholder="" required />
                </div>
                <div class="col-sm-12 form-group">
                    <label for="email">Email *</label>
                    <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email."
                        required />
                </div>
                <div class="col-sm-6 form-group">
                    <label for="name-f">Father's Name *</label>
                    <input type="text" class="form-control" name="fname" id="fathername" placeholder="first" required />
                </div>
                <div class="col-sm-6 form-group">
                    <label for="name-f"></label>
                    <input type="text" class="form-control" name="lname" id="fatherslname" placeholder="Last" required />

                </div>
                <div class="col-sm-6 form-group">
                    <label for="name-f">Mother's Name *</label>
                    <input type="text" class="form-control" name="fname" id="motherfname" placeholder="first" required />
                </div>
                <div class="col-sm-6 form-group">
                    <label for="name-f"></label>
                    <input type="text" class="form-control" name="lname" id="motherlname" placeholder="Last" required />
                </div>
                <label class="form-check-label" for="flexRadioDefault2">Gender *</label>
                <div class="form-check">
                    <label for="name-f"></label>
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" />
                    <label class="form-check-label" for="flexRadioDefault1">
                        M
                    </label>
                </div>
                <div class="form-check">
                    <label for="name-f"></label>
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2"  />
                    <label class="form-check-label" for="flexRadioDefault2">
                        F
                    </label>
                </div>
                <div class="col-sm-12 form-group">
                    <label for="name-f">Nationality *</label>
                    <input type="text" class="form-control" name="fname" id="nationality" placeholder="Nationality" required />
                </div>
                <div class="col-sm-12 form-group">
                    <label for="name-f">Home Address *</label>
                    <input type="text" class="form-control" name="fname" id="homeaddress" placeholder="Street Address"
                        required />
                </div>
                <div class="col-sm-6 form-group">
                    <label for="name-f"></label>
                    <input type="text" class="form-control" name="fname" id="city" placeholder="City" required />
                </div>
                <div class="col-sm-6 form-group">
                    <label for="Country"></label>
                    <select class="form-control custom-select browser-default" id="dropdowncountry" required>
                        <option value="">Country</option>
                        <option value="India">India</option>
                        <option value="Russian Federation">Russian Federation</option>
                        <option value="USA">USA</option>
                        <option value="Srilanka">Srilanka</option>
                        <option value="Bangladesh">Bangladesh</option>
                        
                       
                    </select>
                </div>
                <div class="col-sm-12 form-group">
                    <label for="name-f">Telephone Home *</label>
                    <input type="number" class="form-control" id="telephone" placeholder="Street Address"
                        required />
                </div>
                <div class="col-sm-12 form-group=" style="padding-bottom: 30px;">
                    <label for="name-f">Telephone Mobile *</label>
                    <input type="number" class="form-control" id="telephonemobile" placeholder="Street Address"
                        required />
                </div>
            </div><br />
            <div class="col-sm-12 form-group mb-0">
                <button class="btn btn-primary float-right" onclick="btnclick();">Next</button>
            </div>
            <br />
    </div>
        </div>
    </form>
</body>
</html>

<script type="text/javascript">
    $(document).ready(function () {
       
    });

    function validateForm() {
        $('.error').text('');
        var flag = true;


        $('#fname').removeClass("validationclass");
        if ($('#fname').val() === "") {
            $('#fname').after('<span class="error errormsg"> Please enter FirstName</span>');
            $('#fname').addClass("validationclass");
            flag = false;
        }
        
        $('#lname').removeClass("validationclass");
        if ($('#lname').val() === "") {
            $('#lname').after('<span class="error errormsg"> Please enter last name</span>');
            $('#lname').addClass("validationclass");
            flag = false;
        }
        $('#Date').removeClass("validationclass");
        if ($('#Date').val() === "") {
            $('#Date').after('<span class="error errormsg"> Please enter Date</span>');
            $('#Date').addClass("validationclass");
            flag = false;
        }
        $('#email').removeClass("validationclass");
        if ($('#email').val() === "") {
            $('#email').after('<span class="error errormsg"> Please enter Email</span>');
            $('#email').addClass("validationclass");
            flag = false;
        }
        else if (!emailReg.test($('#email').val())) {
            $('#email').after('<span class="error errormsg"> Please enter a valid email address</span>');
            $('#email').addClass("validationclass");
            flag = false;
        }
        $('#fathername').removeClass("validationclass");
        if ($('#fathername').val() === "") {
            $('#fathername').after('<span class="error errormsg"> Please enter fathers first name</span>');
            $('#fathername').addClass("validationclass");
            flag = false;
        }
        $('#fatherslname').removeClass("validationclass");
        if ($('#fatherslname').val() === "") {
            $('#fatherslname').after('<span class="error errormsg"> Please enter fathers last name</span>');
            $('#fatherslname').addClass("validationclass");
            flag = false;
        }
        $('#motherfname').removeClass("validationclass");
        if ($('#motherfname').val() === "") {
            $('#motherfname').after('<span class="error errormsg"> Please enter Mothers first name</span>');
            $('#motherfname').addClass("validationclass");
            flag = false;
        }
       
        $('#motherlname').removeClass("validationclass");
        if ($('#motherlname').val() === "") {
            $('#motherlname').after('<span class="error errormsg"> Please enter Mothers last name</span>');
            $('#motherlname').addClass("validationclass");
            flag = false;
        }
        $('#flexRadioDefault1').removeClass("validationclass");
        if ($('#flexRadioDefault1').val() === "") {
            $('#flexRadioDefault1').after('<span class="error errormsg"> Please select</span>');
            $('#flexRadioDefault1').addClass("validationclass");
            flag = false;
        }
        $('#flexRadioDefault2').removeClass("validationclass");
        if ($('#flexRadioDefault2').val() === "") {
            $('#flexRadioDefault2').after('<span class="error errormsg"> Please select</span>');
            $('#flexRadioDefault2').addClass("validationclass");
            flag = false;
        }
        $('#nationality').removeClass("validationclass");
        if ($('#nationality').val() === "") {
            $('#nationality').after('<span class="error errormsg"> Please enter your Nationality</span>');
            $('#nationality').addClass("validationclass");
            flag = false;
        }
        $('#homeaddress').removeClass("validationclass");
        if ($('#homeaddress').val() === "") {
            $('#homeaddress').after('<span class="error errormsg"> Please enter your home adress</span>');
            $('#homeaddress').addClass("validationclass");
            flag = false;
        }
        $('#city').removeClass("validationclass");
        if ($('#city').val() === "") {
            $('#city').after('<span class="error errormsg"> Please enter City</span>');
            $('#city').addClass("validationclass");
            flag = false;
        }
        $('#dropdowncountry').removeClass("validationclass");
        if ($('#dropdowncountry').val() === "") {
            $('#dropdowncountry').after('<span class="error errormsg"> Please enter Country</span>');
            $('#dropdowncountry').addClass("validationclass");
            flag = false;
        }
        if (!numberReg.test($('#telephone').val())) {
            $('#telephone').after('<span class="error errormsg"> Please enter A Valid Number</span>');
            $('#telephone').addClass("validationclass");
            flag = false;
        }
        if (!numberReg.test($('#telephonemobile').val())) {
            $('#telephonemobile').after('<span class="error errormsg"> Please enter A Valid Number</span>');
            $('#telephonemobile').addClass("validationclass");
            flag = false;
        }
        return flag;

    }

    function btnclick() {
        var isvalid = validateForm();
        if (isvalid !== false) {
            window.location = "/Registrationpage2.aspx";
        }
        
        
    }
</script>