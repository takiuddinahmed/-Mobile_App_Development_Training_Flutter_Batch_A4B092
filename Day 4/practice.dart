void main() {
  var name1 = getFullName("Masud Rana", "male"); // expect - Mr. Masud Rana
  var name2 = getFullName("Sufiya Kamal", "female");  // expect - Miss Sufiya Kamal


  print(name1);
  print(name2);


}


String getFullName(String name, String gender){
  var fullName = "";
  if(gender == 'male'){
    fullName = "Mr. $name";
  }
  else if (gender == 'female'){
    fullName = "Miss $name";
  }
  else {
    fullName = name;
  }

  return fullName;
}