<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="testModel01.BackEnd.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/Multi-Column-Select.css" rel="stylesheet" />
    <script src="../Scripts/Multi-Column-Select.js"></script>
        <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
      
        <title>Multi-Column-Select Demo</title>
	<meta name="description" content="Multi Column Jquery Select Replacement" />
	<meta name="author" content="Dan Smith">
      
        <link rel="stylesheet" href="Multi-Column-Select/Multi-Column-Select.css">
        <link href='http://fonts.googleapis.com/css?family=Ubuntu+Condensed|Ubuntu' rel='stylesheet' type='text/css'>

        <style>
            .clear{
                margin-bottom: 10px;
            }
        </style>

</head>
<body>
 
    <div class="wrapper">
    

        <form action="test.php" method="get">

            <div id="selectcontrolm">
          <select name="cassr" multiple="">
                <option value="Audi" data-img-src="
                    ">Audi22</option>
                <option value="Bugatti">Bugatti</option>
                <option value="Chrysler">Chrysler</option>
                <option value="Daihatsu">Daihatsu</option>
                <option value="Ford">Ford</option>
                <option value="GM">General Motors</option>
                <option value="Honda">Honda</option>
                <option value="Infiniti">Infiniti</option>
     </select>
    <a class="mcs-open mcs open">Choose an Option...</a><div class="Multi mcs-container" style="display: block;"><a class="mcs-item" data="Audi" id="yourOwnID-NaN">Audi22</a><a class="mcs-item" data="Bugatti" id="yourOwnID-NaN">Bugatti</a><a class="mcs-item" data="Chrysler" id="yourOwnID-NaN">Chrysler</a><a class="mcs-item" data="Daihatsu" id="yourOwnID-NaN">Daihatsu</a><a class="mcs-item" data="Ford" id="yourOwnID-NaN">Ford</a><a class="mcs-item" data="GM" id="yourOwnID-NaN">General Motors</a><a class="mcs-item" data="Honda" id="yourOwnID-NaN">Honda</a><a class="mcs-item" data="Infiniti" id="yourOwnID-NaN">Infiniti</a></div></div>
            <div class="clear"></div>
    </form>
    
    </div>

    <script>
     $(document).ready(function(){
        $('#selectcontrol').MultiColumnSelect({
            menuclass : 'mcs', 
            openmenuClass : 'mcs-open',
            openmenuText : 'Choose an Option...',
            containerClass : 'mcs-container',
            itemClass : 'mcs-item',
            duration : 200,
            onOpen: function() {
                // some action
            },
            onClose: function() {
                // some action
            },
            onItemSelect: function() {
                // some action
              
            }
        });
        
        $('#selectcontrolm').MultiColumnSelect({
            multiple: true,
            menuclass : 'mcs', 
            openmenuClass : 'mcs-open',
            openmenuText : 'Choose an Option...',
            containerClass : 'mcs-container',
            itemClass : 'mcs-item',
	    idprefix : 'yourOwnID-',
            hideclass : 'hidden',
            openclass : 'open',
            duration : 200,
            hideselect : false,
                     
        });
        
        // $('#selectcontrolm').MultiColumnSelectDestroy();
        $('#selectcontrolm').MultiColumnSelectAddItem('New','New Item');
       
     });  
    </script>
    
</body>
</html>
