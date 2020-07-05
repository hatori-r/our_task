$(function() {
  // -----flash_message(new)-----
  // クリックで発火
  $(function() {
    $('.notice').click(function() {
      $('.notice').slideUp(500);
    });
  });
  
  // 5秒後に自動発火
  $(function() {
    setTimeout(function() {
    $('.notice').slideUp();
  }, 5000);
});
// -------------------------------
})