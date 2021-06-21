String convertDate(String date){
  List<String> result = date.split('-');
    
  return result.reversed.join(',').replaceAll("'", "").replaceAll(",", "/");
}