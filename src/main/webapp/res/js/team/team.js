
// $(document).ready(function () {
//     // $('#createTeam').click(clickCreateTeam);
// });

function clickCreateTeam() {
    console.log('click create team external js');
    setTimeout(function(){document.location.href = "/teamInfo"},50);
}

function editBtnClick(event) {
    console.log('click edit');
    const btnId = $(this).attr('id');
    const teamId = btnId.substring(4);
    console.log(teamId);
    // $.get( "/getTeam", { teamId: teamId } );
    sessionStorage.setItem("teamId", teamId);
    //location.href("/teamInfo");
}