import 'package:flutter/material.dart';
import 'TravelTicket.dart';
class MainAppForm extends StatefulWidget{
  final List<String> islands;
  const MainAppForm({Key? key, required this.islands}) : super(key: key);
  
  @override
  MyCustomForm createState() => MyCustomForm(islands);
}

class MyCustomForm extends State<MainAppForm> {
  final _formKey =  GlobalKey<FormState>();
  List<String> islands;
  List<String> foundIslands = [];  
  var needIsland = '';
  MyCustomForm(this.islands) {
    foundIslands = islands;
  }
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            width: 250,
            height: 50,
            child: Row(
              children: [
                Container(
                  width: 170,
                  height: 50,
                  child: TextFormField(
                    validator: (value){
                      if(value == null || value.isEmpty) return "not data";
                      return null;
                    },
                    onChanged: (value) => setState( () => needIsland = value),
                  ),
                ),
                ElevatedButton(onPressed: (){
                    var maybe = islands.where((element) => element.contains(needIsland)).toList();
                    if(maybe.isEmpty) {setState(() => foundIslands = islands);}
                    else {setState(() => foundIslands = maybe);}
                  }, 
                  child: Text('Search'))
              ],
            ),
          ),
          Column(
            children: [
            Container(
            width: 250,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: foundIslands.length,
              itemBuilder: ((context, index) => TravelTicket(foundIslands[index]))),
          ),]
          ),
        ],
      ),
    );
  }
}