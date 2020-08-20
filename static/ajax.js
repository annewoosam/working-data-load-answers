"use strict";

$('#get-answer').on('submit', (evt) => {
  evt.preventDefault();

  const selectedId = $('#answer-id').val();

  $.get(`/api/answer/${selectedId}`, (res) => {
    $('#answer_id').html(res.answer_id);
    $('#checklistid').html(res.checklistid);
    $('#questionnumber').html(res.questionnumber);
    $('#role').html(res.role);
    $('#answer').html(res.answer);
    $('#timespent').html(res.timespent);
    $('#comment').html(res.comment);
  });
});

