function toggleStatementShow () {
  var statementText = $("#artist-statement-text");
  statementText.css("display", statementText.css("display") === "none" ? "inherit" : "none");
}

function setStatementOnClick () {
  console.log("doing it");
  $("#expand-artist-statement").click(toggleStatementShow);
}

$(document).ready(setStatementOnClick);
$(document).on('page:load', setStatementOnClick);
