function calculate_cocomo1(){
  var result = 1;

  $('select > option:selected').each(function() {
      result = result*$(this).val()
  });
 
  $("#organic").val((3.2*Math.pow($("#linesofcode").val()/1000, 1.05)*result).toFixed(2));
  $("#semidetached").val((3.0*Math.pow($("#linesofcode").val()/1000, 1.12)*result).toFixed(2));
  $("#embedded").val((2.8*Math.pow($("#linesofcode").val()/1000, 1.2)*result).toFixed(2));
}