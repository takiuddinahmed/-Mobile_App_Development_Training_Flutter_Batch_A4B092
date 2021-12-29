import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hisab_nikash/provider/view.dart';
import 'package:hisab_nikash/views/addTransectionFrom.dart';
import 'package:hisab_nikash/views/addUserForm.dart';
import 'package:hisab_nikash/views/customerList.dart';
import 'package:hisab_nikash/views/denaPawna.dart';
import 'package:provider/provider.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ViewModel()),
      ],
      child: const App(),
    )
  );
}

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  Widget showView(ViewModel viewModel){
    if (viewModel.viewText == "customer"){
      return DenaPawnaView(id: viewModel.id);
    }
    else if (viewModel.viewText == "add_customer"){
      return AddUserFormView();
    }
    else if (viewModel.viewText == "add_transection"){
      return AddTransectionForm();
    }
    return CustomerListView();
  }

  PreferredSizeWidget? showAppBar(String viewText, model){
    if (viewText != "list"){
      return AppBar(
        title: Text("Hisab Nikash"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: (){
            model.updateView("list");
          }
          ),
      );
    }
    return AppBar(
      title: Text("Hisab Nikash"),
    );
  }

  @override
  Widget build(BuildContext context) {
    ViewModel viewModel =  Provider.of<ViewModel>(context);
    return MaterialApp(
      title: "hisab nikash",
      home: Scaffold(
        appBar: showAppBar(viewModel.viewText, viewModel),
        body: showView(viewModel)
      ),
    );
  }
}