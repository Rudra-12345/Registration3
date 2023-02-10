<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrationpage3.aspx.cs" Inherits="Registration3.Registrationpage3" %>

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
                  <div class="col-sm-12 form-group">
                    <label for="name-f">Upload Recent Photo *</label>
                    <input type="file" class="form-control" name="uploadphoto" id="photoupload" placeholder="
                        " required />
                </div>
                <div class="col-sm-12 form-group">
                    <label for="name-f">Upload HSC Mark *</label>
                    <input type="file" class="form-control" name="uploadhscmark" id="hscmarkupload" placeholder=""
                        required />
                </div>
               
                                <div class="col-sm-12 form-group">
                    <label for="name-f">Upload SSC Mark *</label>
                    <input type="file" class="form-control" name="uploadsscmark" id="sscmarkupload" placeholder=""
                        required />
                </div>
                <div class="col-sm-12 form-group">
                    <label for="name-f">Upload All Semester Mark *</label>
                    <input type="file" class="form-control" name="uploadallsemester" id="allmarkupload" placeholder=""
                        required />
                </div><br />
             <div class="col-sm-12 form-group mb-0">
                <button class="btn btn-primary float-right" onclick="btnclick();">Submit</button>
            </div>

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
 
        $('#photoupload').removeClass("validationclass");
        if ($('#photoupload').val() === "") {
            $('#photoupload').after('<span class="error errormsg">  Please upload file</span>');
            $('#photoupload').addClass("validationclass");
            flag = false;
        }
        else {
            if ($("#photoupload")[0].files[0].size > 4000000) {
                $('#photoupload').after('<span class="error errormsg"> Please upload file less than 4MB. Thanks!!</span>');
                $('#photoupload').addClass("validationclass");
                flag = false;
            }
        }
        
        $('#hscmarkupload').removeClass("validationclass");
        if ($('#hscmarkupload').val() === "") {
            $('#hscmarkupload').after('<span class="error errormsg"> Please Select One</span>');
            $('#hscmarkupload').addClass("validationclass");
            flag = false;
        }
        else {
            if ($("#hscmarkupload")[0].files[0].size > 4000000) {
                $('#hscmarkupload').after('<span class="error errormsg"> Please upload file less than 4MB. Thanks!!</span>');
                $('#hscmarkupload').addClass("validationclass");
                flag = false;
            }
        }
  
       
        $('#sscmarkupload').removeClass("validationclass");
        if ($('#sscmarkupload').val() === "") {
            $('#sscmarkupload').after('<span class="error errormsg"> Please enter if you pursuing</span>');
            $('#sscmarkupload').addClass("validationclass");
            flag = false;
        }
        else {
            if ($("#sscmarkupload")[0].files[0].size > 4000000) {
                $('#sscmarkupload').after('<span class="error errormsg"> Please upload file less than 4MB. Thanks!!</span>');
                $('#sscmarkupload').addClass("validationclass");
                flag = false;
            }
        }
        $('#allmarkupload').removeClass("validationclass");
        if ($('#allmarkupload').val() === "") {
            $('#allmarkupload').after('<span class="error errormsg"> Please enter your current institute</span>');
            $('#allmarkupload').addClass("validationclass");
            flag = false;
        }
        else {
            if ($("#allmarkupload")[0].files[0].size > 10000000) {
                $('#allmarkupload').after('<span class="error errormsg"> Please upload file less than 10MB. Thanks!!</span>');
                $('#allmarkupload').addClass("validationclass");
                flag = false;
            }
        }
   
       
        return flag;

    }

    function btnclick() {
        var isvalid = validateForm();
        if (isvalid !== false) {
            window.location = "/Registrationpage4.aspx";
        }
       
        
    }
</script>
