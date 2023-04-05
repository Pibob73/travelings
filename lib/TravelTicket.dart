import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TravelTicket extends StatelessWidget{
  final island;
  const TravelTicket(this.island);
 
  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 250,
      height: 220,
      child: Card(
        color: Colors.white,
        shadowColor: Colors.grey,
        elevation: 10,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
            height: 120, 
            width: 250,
            child: FittedBox(
            fit: BoxFit.fill,
            child: Image.asset('assets/images/photoSlide.jpg'),
          ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                Row(children: [
                  Text(island, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('it`s a good place', style: TextStyle(color: Colors.grey, fontSize: 13)),
                    Text('\$1000', style: TextStyle(color: Colors.grey, fontSize: 15))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Last updated[1]', style: TextStyle(color: Colors.grey)),
                    Text('Price per 6 week', style: TextStyle(color: Colors.black12))
                  ],),
              ],
            ),
          )
      ],), 
      ),
    );
  }
}