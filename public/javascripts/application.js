// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function number_only(input)
{
   var regExpr = new RegExp("^\d*\.?\d*$");     
   if (!regExpr.test(input.value)) {       // Case of error       
     input.value = "";     
   }
}
