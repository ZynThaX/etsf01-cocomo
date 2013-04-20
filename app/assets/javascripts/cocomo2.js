function calculate_cocomo2(){
  var totalSF = 0.91;
  var em = 1.0;
  var pa = 1.0;

  $('select.em').each(function(i, obj) {
    em = em * $(this).val();
  });
  
  $('select.pa').each(function(i, obj) {
    pa = pa * $(this).val();
  });

  $('select.sf').each(function(i, obj) {
    totalSF = totalSF + 0.01 * $(this).val();
  });

  var result = 1.0;
  
  var linesOfCode = $("#linesofcode").val()/1000;

  var size = Math.pow(linesOfCode, totalSF);
  var type = $(".time").val();

  var pm;

  if ($("select#type").val() == "app"){
    pm = 2.94*size*160/$(".time").val();
  }else if ($("select#type").val() == "early"){
    pm = 2.94*size*em*160/$(".time").val();
  }else{
    pm = 2.94*size*pa*160/$(".time").val();
  }

  $("#manmonths").val(pm.toFixed(2));
}


function type_changed(){
  if ($("select#type").val() == "app"){
    $(".em_selects").hide();
    $(".pa_selects").hide();
  }else if ($("select#type").val() == "early"){
    $(".em_selects").show();
    $(".pa_selects").hide();
  }else{
    $(".em_selects").hide();
    $(".pa_selects").show();
  }
}