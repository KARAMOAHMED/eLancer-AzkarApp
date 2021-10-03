import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {

 String _message = 'مسبحة الاذكار';
  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    if(modalRoute != null){
      Map<String, dynamic> arguments = modalRoute.settings.arguments as  Map<String, dynamic>;
      if(arguments.containsKey('message')){
        _message = arguments['message'];
      }

    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios,),
        ),
        title: Text(_message,style :  TextStyle(
          fontFamily: 'Montserat',
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20,),
        ),
        centerTitle: true,

      ),
      body: Center(
        child: Text("كرم عمر احمد",style :  TextStyle(
        fontFamily: 'Montserat',
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 40,),


      ),
      ),
    );
  }
}
