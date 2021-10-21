







void main(){
  List userList = [
    {"id":1,"first_name":"Mr. ","last_name":"Ant Senior"},
    {"id":2,"first_name":"Mst. ","last_name":"Ant"},
    {"id":3,"first_name":"Mr. ","last_name":"Ant Junior"}
  ];
  // print(userList);

  bool haveAndSenior = false;

  for (var x in userList){
    print(x);
    if (x["last_name"] == "Ant Senior bla"){
      haveAndSenior = true;
      break;
    }
  }

  if(haveAndSenior){
    print("Yes Ant Senior is present");
  }
  else{
    print("Yes Ant Senior is not present");
  }
}