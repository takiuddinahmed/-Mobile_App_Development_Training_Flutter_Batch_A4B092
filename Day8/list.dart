






void main(){
  List bazarList = ["Chal","Dal","Tel"];
  bazarList.add("Lobon");
  print(bazarList);
  bazarList.insert(1, "Morich");

  print(bazarList);
  bazarList.addAll(["holud","peyaj"]);
  print(bazarList);
  bazarList.insertAll(1, ["mosla","zira"]);
  print(bazarList);

  bazarList.remove("Dal");
  print(bazarList);

  bazarList.removeAt(2);
  print(bazarList);
}