var vein = Vein.createClient();

vein.ready(function() {
  
  vein.add(1, 2, 3, 4, function(res) {
    $('body').html("Result was: " + res);
  });

});
