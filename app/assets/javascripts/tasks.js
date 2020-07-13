$(function() {
  // -----flash_message(new)-----
  // クリックで発火
  $(function() {
    $('.new_task').click(function() {
      $('.new_task').slideUp(500);
    });
  });
  
  // 5秒後に自動発火
  $(function() {
    setTimeout(function() {
      $('.new_task').slideUp();
    }, 5000);
  });
  // -------------------------------
  
  
  // -----flash_message(update)-----
  // クリックで発火
  $(function() {
    $('.update_task').click(function() {
      $('.update_task').slideUp(500);
    });
  });
  
  // 5秒後に自動発火
  $(function() {
    setTimeout(function() {
      $('.update_task').slideUp();
    }, 5000);
  });
  // -------------------------------
  
  
  // -----flash_message(update)-----
  // クリックで発火
  $(function() {
    $('.delete_task').click(function() {
      $('.delete_task').slideUp(500);
    });
  });
  
  // 5秒後に自動発火
  $(function() {
    setTimeout(function() {
      $('.delete_task').slideUp();
    }, 5000);
  });
  // -------------------------------
  
  
  // -----ページの先頭へボタン-----
  $(function() {
    $('#pagetop').click(function() {
      $("html, body").animate({scrollTop: 0}, "300");
    });
    $('#pagetop').hide();
    $(window).scroll(function() {
      if($(window).scrollTop() > 0) {
        $('#pagetop').slideDown(600);
      } else {
        $('#pagetop').slideUp(600);
      }
    });
    $("#pagetop").mouseover(function() {
      $(this).animate({
        bottom: "0px"
      }, 300);
    });
    $("#pagetop").mouseover(function() {
      $(this).animate({
        bottom: "-60px"
      }, 300);
    });
  });
  // -------------------------------
})