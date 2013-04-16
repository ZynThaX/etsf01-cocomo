function calculate_cocomo2(){

  var totalSF = 0.91;
  var em = 1.0;

  $('select.em').each(function(i, obj) {
    em = em * $(this).val();
  });
  $('select.sf').each(function(i, obj) {
    totalSF = totalSF + 0.01 * $(this).val();
  });

  var result = 1.0;
  
  var linesOfCode = $("#linesofcode").val()/1000;

  var size = Math.pow(linesOfCode, totalSF);
  var type = $(".type").val();

  var pm = 2.94*size*em*152/$(".type").val();

  // alert(pm.toFixed(2));

  $("#manmonths").val(pm.toFixed(2));
}
