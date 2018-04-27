 $("#clickMe").rotate({
   bind:
   {
     click: function() {
     $(this).rotate({
       duration: 3000,
      angle: 0,
       animateTo:360
    },
   }
 });
