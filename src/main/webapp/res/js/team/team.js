
$(document).ready(function () {
    //$('.editBtn').click(editBtnClick);
});

function editBtnClick(event) {
    console.log('click edit');
    const btnId = $(this).attr('id');
    const teamId = btnId.substring(4);
    console.log(teamId);
    // $.get( "/getTeam", { teamId: teamId } );
    sessionStorage.setItem("teamId", teamId);
    //location.href("/teamInfo");
}