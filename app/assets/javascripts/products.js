
$(document).on("ready page:load", function() {
  $('#search-form').submit(function(event) {
      event.preventDefault();
      var searchValue = $('#search').val();

      $.getScript('/products.js?search=' + searchValue);
    }
  );  

  if ($('.pagination').length) {
    $(window).scroll(function() {
        var url = $('.pagination span.next').children().attr('href');
        var heightDiff = $(document).height() - $(window).height();

        if (url && $(window).scrollTop() >  heightDiff - 50) {
          $('.pagination').text("Fetching more products..."); 
          return $.getScript(url + "&infinite=1");
        }
        else if (!url && $(window).scrollTop() == heightDiff) {
          // url is undefined if there is no 'next' page to go to
          // and we know we're at the bottom if scrollTop == heightDiff
          $('.pagination').html("<strong>No more products</strong>"); 
        }
    });
  }
});
