<%@ Page language="C#" MasterPageFile="~masterurl/default.master" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-3.5.0.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Add your CSS styles to the following file -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />

    <!-- Add your JavaScript to the following file -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Employees Form
  </asp:Content> 
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
    
     <html>
         <head>
              <style>
            body {
                font-family: Arial;
            }

            /* Style the tab */
            .tab {
                overflow: hidden;
                border: 1px solid #ccc;
                background-color: #f1f1f1;
            }

                /* Style the buttons inside the tab */
                .tab button {
                    background-color: inherit;
                    float: left;
                    border: none;
                    outline: none;
                    cursor: pointer;
                    padding: 14px 16px;
                    transition: 0.3s;
                    font-size: 17px;
                }

                    /* Change background color of buttons on hover */
                    .tab button:hover {
                        background-color: #ddd;
                    }

                    /* Create an active/current tablink class */
                    .tab button.active {
                        background-color: #ccc;
                    }

            /* Style the tab content */
            .tabcontent {
                padding: 6px 12px;
                border: 1px solid #ccc;
            }
             .btn{       
                 height: 40px;
                 width: 15%; 

             }
        </style>
         </head>
    

        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <br>
        <br>
      
        <div style="margin: 10px; margin-left:1000px; margin-top:-50px">

            <button  id="btnADD" type="submit" class="btn btn-primary">Save</button>
            <button id="btnCancel" type="button" class="btn btn-default" onclick="window.location.href='Default.aspx'">Cancel</button>

         
        </div>
         <br>
       
        <div id="EmployeeForm" class="tabcontent">
            <form>
                <table id="t0">
                    <tbody class="table table-hover small-text">
                         <tr>
                            <td>
                                <h4>1.ID Number:</h4>
                            </td>
                            <td>
                                <input name="idnum" id="idnum" type="text"  class="form-control" />
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <br />
                            </td>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>

                            <td>
                                <h4>1.First Name:</h4>
                            </td>
                            <td>
                                <input name="fname" id="fname" type="text"  class="form-control" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h4>2.Last Name:</h4>
                            </td>
                            <td>
                                <input name="lname" id="lname" type="text"  class="form-control" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <br />


    <h3>3.Job Information:</h3>
            <table id="t3" class="printer-row" style="border-collapse: separate; border-spacing: 20px;">
                <tbody class="table table-hover small-text">
                      <tr>
                            <td>
                                <strong>Government ID:</strong>
                            </td>
                           <td>
                                <input name="govid" id="govid" type="text"  class="form-control" />
                            </td>
                        </tr>
                    <br>
                    <br />
                    <tr>
                        <th scope="col">Company</th>
                        <th scope="col">Labor Category</th>
                        <th scope="col">Employment Type</th>
                        <th scope="col">Start Date</th>
                        <th scope="col">End Date</th>

                    </tr>
                    <tr>
                        <td>
                              
                            <select class="form-control" id="company">
                            <option value="1">Afamia</option>
                            <option value="2">Google</option>
                            <option value="3">Deloitte</option>
                            <option value="3">Microsoft</option>
                            </select>
                        </td>
                        
                     <td>
                          <select class="form-control" id="labcategory">
                            <option value="1">Managment</option>
                            <option value="2">Finance</option>
                            <option value="3">Tech</option>
                            </select>
                        </td>
                        <td>
                             <select class="form-control" id="emptype">
                            <option value="1">CTO</option>
                            <option value="2">Manager</option>
                            <option value="3">Intern</option>
                            </select>
                        </td>
                        <td>
                            <input name="start" id="start" type="Date" title="start" class="timepicker form-control" required />
                        </td>
                        <td>
                            <input name="end" id="end" type="Date" title="end"  class="timepicker form-control" required />
                        </td>
                    </tr>
               
                    <tr>
                        <th scope="col">Job Title EN</th>
                        <th scope="col">Group</th>
                        <th scope="col">Function</th>
                        <th scope="col">Annual Salary TND (DCOP)</th>
                        <th scope="col">Assigned Office</th>
                        <th scope="col">TADAEEM Supervisor</th>

                    </tr>
                    <tr>
                        <td>
                            <input name="jobtitleen" id="jobtitleen" type="text" class="form-control" required />
                        </td>
                        <td>
                              <select class="form-control" id="group">
                            <option value="1">Info</option>
                            <option value="2">Finance</option>
                            <option value="3">Managment</option>
                            </select>
                        </td>
                         <td>
                            <input name="exp" id="expertise" type="text" class="form-control"  required />
                        </td>
                        <td>
                            <input name="annsalary" id="annsalary" type="number" min="0.01" step="0.01" max="5000" value="3.000" class="form-control" required />
                        </td>
                        <td>
                             <select class="form-control" id="office">
                            <option value="1">Info</option>
                            <option value="2">Finance</option>
                            <option value="3">Managment</option>
                            </select>
                        </td>
                         <td>
                            <input name="supervisor" id="supervisor" type="text" class="form-control"   required />
                        </td>
                    </tr>
                      
                    <tr>
                        <th scope="col">Job Title FR</th>
                        <th scope="col">GS</th>
                        <th scope="col">Work Phone</th>
                        <th scope="col">PTO Balance</th>
                        <th scope="col">Sick Balance</th>
                        <th scope="col">CNSS</th>

                    </tr>
                    <tr>
                        <td>
                            <input name="jobtitlefr" id="jobtitlefr" type="text" class="form-control" required />
                        </td>
                        <td>
                              <select class="form-control" id="gs">
                            <option value="1">group 1</option>
                            <option value="2">group 2</option>
                          
                            </select>
                        </td>
                        <td>
                            <input name="workphone" id="workphone" type="text" class="form-control" required />
                        </td>
                        <td>
                            <input name="pto" id="pto" type="text" class="form-control"  required />
                        </td>
                         <td>
                            <input name="sickb" id="sickb" type="text" class="form-control"  required />
                        </td>
                         <td>
                            <input name="cnss" id="cnss" type="text" class="form-control"  required />
                        </td>
                    </tr>
              
                </tbody>
            </table>
            <br />
            <br /> 
              <%-- 
            <h3>4.Personal Information:</h3>
            <table id="t3" class="printer-row" style="border-collapse: separate; border-spacing: 20px;">
                <tbody class="table table-hover small-text">
                     
                   
                    <tr>
                        <th scope="col">Home Address</th>
                        <th scope="col">Date Of Birth</th>
                        <th scope="col">Gender</th>
                        <th scope="col">Citizenship</th>
                        <th scope="col">Civil Status</th>

                    </tr>
                    <tr>
                        <td>
                            <input name="home" id="homeadd" type="text" class="form-control" required />
                        </td>
                      <td>
                            <input name="birth" id="datebirth" type="date" title="datebirth" class="form-control" required />
                        </td>
                        <td>
                            <select class="form-control" id="gender">
                            <option value="1">Male</option>
                            <option value="2">Female</option>
                          
                            </select>
                        </td>
                        <td>
                            <select class="form-control" id="citiz">
                            <option value="1">Tunisian</option>
                            <option value="2">French</option>
                            <option value="2">American</option>

                            </select>
                        </td>
                        <td>
                            <select class="form-control" id="civil">
                            <option value="1">Married</option>
                            <option value="2">Single</option>
                            <option value="2">Divorsed</option>

                            </select>
                        </td>
                    </tr>
             
                    <tr>
                        <th scope="col">Emergency Contact Name</th>
                        <th scope="col">Emergency Contact Number</th>
                        <th scope="col">Work Email</th>
                        <th scope="col">Personal Phone</th>
                        <th scope="col">HR Manual Certification Date</th>
                        <th scope="col">Training Certification Date</th>

                    </tr>
                    <tr>
                        <td>
                            <input name="jobtitlefr" id="cname" type="text" class="form-control" required />
                        </td>
                        <td>
                            <input name="gs" id="cnumber" type="text" class="form-control" required />
                        </td>
                        <td>
                            <input name="mail" id="workmail" type="mail" class="form-control" required />
                        </td>
                        <td>
                            <input name="pto" id="pphone" type="text" class="form-control"  required />
                        </td>
                         <td>
                            <input name="sickb" id="hrdate" type="date" title="HRDate" class="form-control"  required />
                        </td>
                         <td>
                            <input name="cnss" id="traindate" type="date" title="TrainDate" class="form-control"  required />
                        </td>
                    </tr>
                  
                    <tr>
                        <th scope="col">Prior Rating</th>
                        <th scope="col">Spouse First Name</th>
                        <th scope="col">Spouse Last Name</th>
                        <th scope="col">Bank RIB</th>
                        <th scope="col">Children</th>
                        <th scope="col">Educational Level</th>

                    </tr>
                    <tr>
                        <td>
                            <input name="ratibg" id="rating" type="text" class="form-control" required />
                        </td>
                        <td>
                            <input name="sfname" id="sfname" type="text" class="form-control" required />
                        </td>
                        <td>
                            <input name="slname" id="slname" type="text" class="form-control" required />
                        </td>
                        <td>
                            <input name="rib" id="rib" type="text" class="form-control"  required />
                        </td>
                         <td>
                            <input name="child" id="children" type="text" class="form-control"  required />
                        </td>
                         <td>
                             <select class="form-control" id="level">
                            <option value="1">Bachelors</option>
                            <option value="2">Master</option>
                            <option value="2">Doctorat</option>

                            </select>
                        </td>
                    </tr>
               
                    <tr>
                        <th scope="col">Total Experience per M</th>
                        <th scope="col">Total Experience per Y</th>
                        <th scope="col">Tech/Ops/CC</th>
                        <th scope="col">Trail Period Extension</th>
                       
                    </tr>
                    <tr>
                        <td>
                            <input name="ttm" id="ttm" type="text" class="form-control" required />
                        </td>
                        <td>
                            <input name="tty" id="tty" type="text" class="form-control" required />
                        </td>
                        <td>
                            <input name="tech" id="tech" type="text" class="form-control" required />
                        </td>
                        <td>
                            <input name="period" id="period" type="text" class="form-control"  required />
                        </td>
                       
                    </tr>
                    </tbody>
           </table>--%>
        </div>

        </html>
  
</asp:Content>
