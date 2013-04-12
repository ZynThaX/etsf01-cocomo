function calculate(){
  var result = 1;

  val totalSF = 0.91;
  val em = 1;
  $('select > option:selected').each(function() {
      totalSF = totalSF + 0.01*$(this).data("sf");
      em = em*$(this).val();
  });
  
  val linesOfCode = $("#linesofcode").val()/1000;
  val size = Math.pow(linesOfCode, totalSF);
  
  val pm = 2.94*size*em;
 
  alert(pm);
 
 // $("#organic").val((3.2*Math.pow($("#linesofcode").val()/1000, 1.05)*result).toFixed(2));
  //$("#semidetached").val((3.0*Math.pow($("#linesofcode").val()/1000, 1.12)*result).toFixed(2));
 // $("#embedded").val((2.8*Math.pow($("#linesofcode").val()/1000, 1.2)*result).toFixed(2));
}
