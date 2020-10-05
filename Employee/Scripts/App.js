//'use strict';

//ExecuteOrDelayUntilScriptLoaded(initializePage, "sp.js");

//function initializePage()
//{
//    var context = SP.ClientContext.get_current();
   
//    var collListItem = '';

//    $(document).ready(function () {
//        //var oList = context.get_web().get_lists().getByTitle('MyNotes');
//        //var itemCreateInfo = new SP.ListItemCreationInformation();
//        //// var oListItem = oList.addItem(itemCreateInfo);
//        //var item = oList.getItemById(id);
//        //item.deleteObject();
//        //loadNotes();
//        $("#AddNoteButton").click(function () {
//            var quickNoteName = $("#QuickNoteName").val();
//            var QuickNoteid = $("#QuickNoteid").val();

//            if (quickNoteName != null) {
//                var oList = context.get_web().get_lists().getByTitle('ListEmployee');
//                var itemCreateInfo = new SP.ListItemCreationInformation();
//                var oListItem = oList.addItem(itemCreateInfo);
//                oListItem.set_item('Title', quickNoteName);
//                oListItem.set_item('Name', QuickNoteid);


//                oListItem.update();
//                context.load(oListItem);
//                context.executeQueryAsync(noteAddingSuccess, noteAddingFail);
//            }
//            else {
//                alert("Title cannot be empty.");
//            }
//        });
//    });

//    function noteAddingSuccess() {
//        $("#QuickNoteName").text('');
//        loadNotes();
//    }

//    function noteAddingFail(sender, args) {
//        alert("Failed adding note" + args.get_message());
//    }

//    function loadNotes() {
//        var oList = context.get_web().get_lists().getByTitle('EmployeeList');
//        var camlQuery = new SP.CamlQuery();
//        camlQuery.set_viewXml('<View><RowLimit>100</RowLimit></View>');
//        collListItem = oList.getItems(camlQuery);
//        context.load(collListItem);
//        context.executeQueryAsync(onNotesLoadSucceeded,);
//    }

//    function onNotesLoadSucceeded() {
//        var listItemInfo = '';

//        var listItemEnumerator = collListItem.getEnumerator();

//        while (listItemEnumerator.moveNext()) {
//            var oListItem = listItemEnumerator.get_current();
//            listItemInfo = listItemInfo + '<li>' + oListItem.get_item('Title') + oListItem.get_item('Name') +  '</li>';
//        }

//        $('#QuickNotes').html(listItemInfo);
//    }

//    function onNotesLoadFailed(sender, args) {
//        alert("Failed loading notes" + args.get_message());
//    }

//}


$(document).ready(function () {
    $("#btnADD").click(function () {
        insertitemtolist();
    });
    GetEmployeeDetails();  

});
function insertitemtolist() {
    var username = $("#idnum").val();
    var fname = $("#fname").val();
    var lname = $("#lname").val();
    var gov = $("#govid").val();
    var company = $("#company option:selected").text();
    var laborcat = $("#labcategory option:selected").text();
    var emtype = $("#emptype option:selected").text();
    var start = new Date($("input[title='start']").val());
    var end = new Date($("input[title='end']").val());
    var joben = $("#jobtitleen").val();
    var group = $("#group option:selected").text();
    var expertise = $("#expertise").val();
    var annsalary = $("#annsalary").val();
    var office = $("#office option:selected").text();
    var supervisor = $("#supervisor").val();
    var jobtitlefr = $("#jobtitlefr").val();
    var gs = $("#gs option:selected").text();
    var workphone = $("#workphone").val();
    var pto = $("#pto").val();
    var sickb = $("#sickb").val();
    var cnss = $("#cnss").val();
    //var homeAddress = $("#homeadd").val();
    //var datebirth = new Date($("input[title='datebirth']").val());
    //var gender = $("#gender option:selected").text();
    //var citiz = $("#citiz option:selected").text();
    //var civil = $("#civil option:selected").text();
    //var Contactname = $("#cname").val();
    //var contactnumber = $("#cnumber").val();
    //var workmail = $("#workmail").val();
    //var personalphone = $("#pphone").val();
    //var hrdate = new Date($("input[title='HRDate']").val());
    //var trainingdate = new Date($("input[title='TrainDate']").val());
    //var rating = $("#rating").val();
    //var sfname = $("#sfname").val();
    //var slname = $("#slname").val();
    //var rib = $("#rib").val();
    //var children = $("#children").val();
    //var level = $("#level option:selected").text();
    //var ttm = $("#ttm").val();
    //var tty = $("#tty").val();
    //var tech = $("#tech").val();
    //var period = $("#period").val();





    var clientContext = new SP.ClientContext.get_current();
    var oList = clientContext.get_web().get_lists().getByTitle('ListEmployee');
    var item = new SP.ListItemCreationInformation();
    var oListItem = oList.addItem(item);
    oListItem.set_item('Title', username);
    oListItem.set_item('FirstName', fname);
    oListItem.set_item('LastName', lname);
    oListItem.set_item('GovernmentID', gov);
    oListItem.set_item('Company', company);
    oListItem.set_item('LaborCategory', laborcat);
    oListItem.set_item('EmploymentType', emtype);
    oListItem.set_item('StartDate', start);
    oListItem.set_item('EndDate', end);
    oListItem.set_item('JobTitleEn', joben);
    oListItem.set_item('Group', group);
    oListItem.set_item('Expertise', expertise);
    oListItem.set_item('AnnualSalary', annsalary);
    oListItem.set_item('AssignedOffice', office);
    oListItem.set_item('TADAEEMSupervisor', supervisor);
    oListItem.set_item('JobTitleFr', jobtitlefr);
    oListItem.set_item('GS', gs);
    oListItem.set_item('WorkPhone', workphone);
    oListItem.set_item('PTOBalance', pto);
    oListItem.set_item('SickBalance', sickb);
    oListItem.set_item('CNSS', cnss);
    //oListItem.set_item('HomeAddress', homeAddress);
    //oListItem.set_item('DateofBirth', datebirth);
    //oListItem.set_item('Gender', gender);
    //oListItem.set_item('Citiznship', citiz);
    //oListItem.set_item('CivilStatus', civil);
    //oListItem.set_item('CivilStatus', Contactname);
    //oListItem.set_item('CivilStatus', contactnumber);
    //oListItem.set_item('CivilStatus', workmail);
    //oListItem.set_item('CivilStatus', personalphone);
    //oListItem.set_item('CivilStatus', hrdate);
    //oListItem.set_item('CivilStatus', trainingdate);
    //oListItem.set_item('PriorRating', rating);
    //oListItem.set_item('SpouseFirstName', sfname);
    //oListItem.set_item('SpouseLastName', slname);
    //oListItem.set_item('BankRIB', rib);
    //oListItem.set_item('Children', children);
    //oListItem.set_item('EducationalLevel', level);
    //oListItem.set_item('ExperiencePerM', ttm);
    //oListItem.set_item('ExperiencePerY', tty);
    //oListItem.set_item('Tech', tech);
    //oListItem.set_item('TrailPeriodExtension', period);







    oListItem.update();
    clientContext.load(oListItem);
    clientContext.executeQueryAsync(Function.createDelegate(this, this.onQuerySucceeded), Function.createDelegate(this, this.onQueryFailed));
}
function onQuerySucceeded(sender, args) {
   // alert('success')
}
function onQueryFailed(sender, args) {
    alert('request failed ' + args.get_message() + '\n' + args.get_stackTrace());
}