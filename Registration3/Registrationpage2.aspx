<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrationpage2.aspx.cs" Inherits="Registration3.Registrationpage2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Document Uploads</title>
    <link rel="stylesheet" href="StyleSheet1.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
                <label for="heading">Education Details</label><br />
                <div class="col-sm-6 form-group">
                    <label for="name-f"> HSC Institute Name</label>
                    <input type="text" class="form-control" name="hscinstitutename" id="hscinstitute" placeholder="HSC institute Name" required />
                </div>
                                <div class="col-sm-6 form-group">
                    <label for="HSC Board Name">Board Name</label>
                    <select class="form-control custom-select browser-default" id="selecthscboard">
                        <option value="">Select Board</option>
                        <option value="CBSE">CBSE</option>
                        <option value="ICSC">ICSC</option>
                        <option value="State Board">State Board</option>
                     
                       
                    </select>
                </div>
                <div class="col-sm-12 form-group">
                    <label for="Date">HSC Percentage *</label>
                    <input type="number" name="hscpercentage" class="form-control" id="hscpercent" placeholder="Enter Percentage" required />
                </div>
                
                <div class="col-sm-6 form-group">
                    <label for="name-f">SSC Institute Name *</label>
                    <input type="text" class="form-control" name="sscinstitutename" id="sscinstitute" placeholder="SSC institute Name" required />
                </div>
                                <div class="col-sm-6 form-group">
                    <label for="SSC Board Name">Board Name *</label>
                    <select class="form-control custom-select browser-default" id="selectsscboard">
                        <option value="">Select Board</option>
                        <option value="CBSE">CBSE</option>
                        <option value="ICSC">ICSC</option>
                        <option value="State Board">State Board</option>
                       
                    </select>
                </div>
                <div class="col-sm-6 form-group">
                    <label for="name-f">SSC Percentage *</label>
                    <input type="number" class="form-control" name="sscpercentage" id="sscpercent" placeholder="Enter Percentage" required />
                </div>
                <div class="col-sm-6 form-group">
                    <label for="name-f">Currently Pursuing</label>
                    <input type="text" class="form-control" name="currentlypursuing" id="currentpursuing" placeholder="Enter pursuing" / >
                </div>
                
                
                <div class="col-sm-12 form-group">
                    <label for="name-f">Current Educational Intitute Name</label>
                    <input type="text" class="form-control" name="currentinstitutename" id="currentinstitute" placeholder="Enter Current Institute Name"  />
                </div>
                <div class="col-sm-12 form-group">
                    <label for="name-f">Overall Percentage *</label>
                    <input type="number" class="form-control" name="overallpercentage" id="overallpercent" placeholder="Enter Overall Percentage"
                        required />
                </div>
               
                
                <div class="col-sm-12 form-group" style="padding-bottom: 30px;">
                    <label for="name-f">Current Backlog if any</label>
                    <input type="text" class="form-control" name="currentbacklogifany" id="currentbacklog" placeholder="Enter Backlog"
                         />
                </div>
                
            </div><br />
            <div class="col-sm-12 form-group mb-0">
                <button class="btn btn-primary float-right">Next</button>
            </div>
          

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
    
    


        $('#hscinstitute').removeClass("validationclass");
        if ($('#hscinstitute').val() === "") {
            $('#hscinstitute').after('<span class="error errormsg"> Please enter FirstName</span>');
            $('#hscinstitute').addClass("validationclass");
            flag = false;
        }
        
        $('#selecthscboard').removeClass("validationclass");
        if ($('#selecthscboard').val() === "") {
            $('#selecthscboard').after('<span class="error errormsg"> Please Select One</span>');
            $('#selecthscboard').addClass("validationclass");
            flag = false;
        }
        $('#hscpercent').removeClass("validationclass");
        if ($('#hscpercent').val() === "") {
            $('#hscpercent').after('<span class="error errormsg"> Please enter HSC percentage</span>');
            $('#hscpercent').addClass("validationclass");
            flag = false;
        }
       
        $('#sscinstitute').removeClass("validationclass");
        if ($('#sscinstitute').val() === "") {
            $('#sscinstitute').after('<span class="error errormsg"> Please enter SSC institute</span>');
            $('#sscinstitute').addClass("validationclass");
            flag = false;
        }
        $('#selectsscboard').removeClass("validationclass");
        if ($('#selectsscboard').val() === "") {
            $('#selectsscboard').after('<span class="error errormsg"> Please Choose one</span>');
            $('#selectsscboard').addClass("validationclass");
            flag = false;
        }
        $('#sscpercent').removeClass("validationclass");
        if ($('#sscpercent').val() === "") {
            $('#sscpercent').after('<span class="error errormsg"> Please enter SSC percentage</span>');
            $('#sscpercent').addClass("validationclass");
            flag = false;
        }
       
        $('#currentpursuing').removeClass("validationclass");
        if ($('#currentpursuing').val() === "") {
            $('#currentpursuing').after('<span class="error errormsg"> Please enter if you pursuing</span>');
            $('#currentpursuing').addClass("validationclass");
            flag = false;
        }
        $('#currentinstitute').removeClass("validationclass");
        if ($('#currentinstitute').val() === "") {
            $('#currentinstitute').after('<span class="error errormsg"> Please enter your current institute</span>');
            $('#currentinstitute').addClass("validationclass");
            flag = false;
        }
        $('#overallpercent').removeClass("validationclass");
        if ($('#overallpercent').val() === "") {
            $('#overallpercent').after('<span class="error errormsg"> Please enter your overall percentage</span>');
            $('#overallpercent').addClass("validationclass");
            flag = false;
        }
        $('#currentbacklog').removeClass("validationclass");
        if ($('#currentbacklog').val() === "") {
            $('#currentbacklog').after('<span class="error errormsg"> Please enter if any backlog</span>');
            $('#currentbacklog').addClass("validationclass");
            flag = false;
        }
       
        return flag;

    }

    function btnclick() {
        var isvalid = validateForm();
        if (isvalid !== "false") {
            window.location = "/Registrationpage3.aspx";
        }
        
    }
</script>