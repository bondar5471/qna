$(document).ready(function () {
    $('.edit-question-link').click( function (e) {
      e.preventDefault();
      $(this).hide();
      var question_id = $(this).parents('.question').data('questionId');
      $('#delete-question-link-' + question_id).hide();
      $('#show-question-link-' + question_id).hide();
      $('form#edit-question-' + question_id).show();
    });
  });

  App.cable.subscriptions.create("QuestionsChannel", {
    connected: function () {
      this.perform("follow");
    },
    received: function (data) {
      var current_user_id = $('.user').data('currentUserId');
      var question = JSON.parse(data["question"]);
      var user_id = question.user_id;
      if( current_user_id !== user_id ) {
        $('.questions').append(JST["templates/question"]({
          question: question,
          current_user: current_user_id
        }));
      }}});
      