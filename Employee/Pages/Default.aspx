<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-3.5.0.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Add your CSS styles to the following file -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />

    <!-- Add your JavaScript to the following file -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Employee Management
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <div>
     
<%--       <table>
    <tr>
      <td>Note: </td>
      <td><input type="text" id="QuickNoteName" /></td>
              <td><input type="text" id="QuickNoteid" /></td>


      <td><input id="AddNoteButton" type="button" value="Add" /></td>
    </tr>
  </table>
  <br />
  <ul id="QuickNotes"></ul>--%>
       <%-- <h2>Information Form</h2>
Username:<br>
<input type="text" name="Username" id="id" />
<br>
Password:<br>
<input type="text" name="name" id="fname" />

<br /><br />
        <input type="text" name="name" id="lname" />

<input type="submit" value="Submit" id="btnSubmit" />
<br />
<p id="pTitle"></p>--%>


    </div>

 <h2><asp:HyperLink runat="server" NavigateUrl="JavaScript:window.location = _spPageContextInfo.webAbsoluteUrl + '/Pages/EmployeList.aspx';" 
    Text="ADD NEW EMPLOYEE ->" /></h2>
    <br />
    <br />
    <h2><asp:HyperLink runat="server" NavigateUrl="JavaScript:window.location = _spPageContextInfo.webAbsoluteUrl + '/Pages/Managment.aspx';" 
    Text="Employee Managment ->" /></h2>

            <script>
               
        $(function(){
            var requestUri = _spPageContextInfo.webAbsoluteUrl + "/_api/web/lists/getbytitle('ListEmployee')/items";
        $.ajax({
        url: requestUri,
        type: "GET",
        headers: {
        "accept":"application/json; odata=verbose"
        },
        success: onSuccess,
        error: onError
        });

        function onSuccess(data) {
        var objItems = data.d.results;
            var tableContent = '<table id="tableEmployee" style="width:100%" border="1 px solide" ><thead><tr><td>Title</td>' + '<td>FirstName</td>' + '<td>LastName</td>' + '<td>Governmetn ID</td>' + '<td>Actions</td>'+ '</tr></thead><tbody>';
         //   var delButton = '<input type="button" id="btnClick" value="Get Employee Records" />'
        for (var i = 0; i < objItems.length; i++) {
        tableContent += '<tr>';
        tableContent += '<td>' + objItems[i].Title+ '</td>';
        tableContent += '<td>' + objItems[i].FirstName + '</td>';
        tableContent += '<td>' + objItems[i].LastName + '</td>';
         tableContent += '<td>' + objItems[i].GovernmentID + '</td>' +
            "<td>" +
                "<button type='button' onclick='productDelete(this);' class='btn btn-default'>Delete" +
                "<span class='glyphicon glyphicon-remove' />" +
                "</button>" +
             
             
             "<button type='button' onclick='productDelete(this);' class='btn btn-default'>Update" +
             "<span class='glyphicon glyphicon-pencil' />" +
             "</button>" +
             "</td>"+
         '</tr>' ;
        }
            $('#employeeGrid').append(tableContent);

            }


        function onError(error) {
        alert('Error');
        }
       
        });
            </script>
<%--            <input type="button" id="btnClick" value="Get Employee Records"/>--%>
            <div id="CustomerPanel">
            <table id='tableEmployee' style="width: 100%;" border="1 px">
            <tr>
            <td> 
            <div id="employeeGrid" style="width: 100%"></div>
            </td>

            </tr>
            </table>
            </div>

</asp:Content>
