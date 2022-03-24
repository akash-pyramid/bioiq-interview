function isNumberAndOperator(evt)
{
  var charCode = (evt.which) ? evt.which : evt.keyCode
  if(charCode > 31 && (charCode < 48 || charCode > 57)) {
    if(![42, 43, 45, 47].includes(charCode)){
    alert("Please Enter Only Numeric Value:");
      return false;
    }
  }

  return true;
}

function isNumberKey(evt)
{
  var charCode = (evt.which) ? evt.which : evt.keyCode
  if(charCode > 31 && (charCode < 48 || charCode > 57)) {
    alert("Please Enter Only Numeric Value:");
    return false;
  }

  return true;
}