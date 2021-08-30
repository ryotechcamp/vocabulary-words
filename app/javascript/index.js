$(function () {
  // トップ画像表示
  $('.top-contents').fadeIn(3000);
  $('.service-title').slideDown(7000);

  // ヘッダー白線
  $('.footer-list-content').hover(
    function(){
      $(this).css('border-bottom', '1px solid white');
    },
    function(){
      $(this).css('border-bottom','none');
    }
  );

  // もーだる表示
  $('#modal').click(function(){
    $('#how-to-modal').fadeIn();
  });
  $('.close-modal').click(function(){
    $('#how-to-modal').fadeOut();
  });
});