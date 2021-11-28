import 'package:flutter/material.dart';
import 'package:tic_tac_toe/component/eachBox.dart';

class GameApp extends StatefulWidget {
  const GameApp({ Key? key }) : super(key: key);

  @override
  _GameAppState createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  List<String> data = ["","","","","","","","",""];

  String selectedPlayer = "X";
  Widget winnerText =  Container();
  bool endGame = false;

  userClick(int index){

    if(data[index] == "" && endGame == false){
      setState(() {
        data[index] = selectedPlayer;
      });
      selectedPlayer = selectedPlayer == "X" ? "O" : "X";
      checkWin();
    }
  }

  String checkEach(int i,int j, int k){
    String winner = "";
    if(data[i] != ""){
      if( data[i] == data[j] && data[i] == data[k]){
        winner = data[i];
      }
    }
    return winner;
  }

  Widget gameEndWidget(String text){
    return Container(
            margin: EdgeInsets.all(20),
            child: Row(
              children : [
                Text(text, style: TextStyle(color: Colors.redAccent, fontSize: 35,)),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: ()=>{
                  setState(() {
                    data = ["","","","","","","","",""];
                    selectedPlayer = "X";
                    winnerText =  Container();
                    endGame=false;
                  })
                }, child: Text("Reset"))
                ]
            ),
          );
  }

  checkWin(){
    var l = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [2,4,6],
    ];
    String winner = "";
    for(var indexes in l){
      winner = checkEach(indexes[0], indexes[1], indexes[2]);
      if(winner != ""){
        setState(() {
          endGame = true;
          winnerText = gameEndWidget("The winner is $winner");
          

        });
        break;
      }
      else {
        if(!data.contains("")){
          setState(() {
          endGame = true;
          winnerText = gameEndWidget("Match Draw!!");
          

        });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        winnerText,
        Table(
        border: TableBorder.all(),
        children: [
          TableRow(
            children: [
              EachBox(text: data[0],index: 0, userClick: userClick,),
              EachBox(text: data[1],index: 1, userClick: userClick,),
              EachBox(text: data[2],index: 2, userClick: userClick,),
            ]
          ),
          TableRow(
            children: [
              EachBox(text: data[3],index: 3, userClick: userClick,),
              EachBox(text: data[4],index: 4, userClick: userClick,),
              EachBox(text: data[5],index: 5, userClick: userClick,),
            ]
          ),
          TableRow(
            children: [
              EachBox(text: data[6],index: 6, userClick: userClick,),
              EachBox(text: data[7],index: 7, userClick: userClick,),
              EachBox(text: data[8],index: 8, userClick: userClick,),
            ]
          ),
        ],
      )]
    );
  }
}