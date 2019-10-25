import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home:Scaffold(
      appBar: new AppBar(
        title: new Text('HomeScreen'),

      ),
      body: new Center(
        child: BodyLayout()

      ),
    ),
      );


  }
}
class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  final countryList = ['Albania', 'Andorra', 'Armenia', 'Austria',
    'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
    'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
    'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
    'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
    'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
    'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
    'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden',
    'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];

  return ListView.builder(itemCount:countryList.length,itemBuilder:(context,index){

    return ListTile(title: Container(child:Text(countryList[index],textDirection:TextDirection.ltr,style:TextStyle(color: Colors.red)),margin: EdgeInsets.all(10),),
      onTap: ()=>{print(countryList[index])} ,);

  });


}

//Widget _myListViewStatic(BuildContext context) {
//  return ListView(
//    children: ListTile.divideTiles(
//      context: context,
//      tiles: [
//        ListTile(
//          title: Text('Sun'),
//          onTap: ()=>{print("click sun")},
//        ),
//        ListTile(
//          title: Text('Moon',textDirection: TextDirection.ltr,style: TextStyle(color: Colors.red),),
//        ),
//        ListTile(
//          title: Text('Star'),
//        ),
//      ],
//    ).toList(),
//  );
//}
class Scaffod extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Center(
       child: Column(
         mainAxisAlignment:MainAxisAlignment.center,
         children: <Widget>[
           new Stack(
            children: <Widget>[
              new Container(
                height: 60,
                width: 60,
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Colors.blue
                ),
                child: new Icon(Icons.local_offer,color: Colors.red,),
              )
            ],
           )
         ],
       ),
      ),
    );
  }

}