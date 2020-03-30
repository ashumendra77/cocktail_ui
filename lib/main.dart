import 'package:cocktail/detail.dart';
import 'package:cocktail/second.dart';
import "package:flutter/material.dart";
import 'package:rating_bar/rating_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homescreen(),
    );
  }
}

class homescreen extends StatefulWidget {
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int selectedindex = 0;
  List<String> li = [
    "Highly ordered",
    "Popular",
    "Coming Soon",
    "Highly Rated"
  ];

  Widget getList(int index) {
    return GestureDetector(
      onTap: () {
        selectedindex = index;
        setState(() {});
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          color: Color(selectedindex == index ? 0xffd43c34 : 0xff0c151a),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Center(
          child: Text(
            li[index],
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget getCocktail(Cocktail cocktail) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    NewScreenDetail(cocktailobject: cocktail)));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
            border: Border.all(color: Colors.grey[400]),
            borderRadius: BorderRadius.circular(20)),
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(cocktail.imageurl),
                        fit: BoxFit.fill)),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Text(
                      cocktail.name,
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(height: 3),
                    Text(cocktail.code,style: TextStyle(color:Colors.white),),
                      SizedBox(height: 3),
                     Row(
                       children: <Widget>[
                         RatingBar.readOnly(filledIcon: Icons.star, emptyIcon: Icons.star_border,
                         size: 20,
                         initialRating: 5 / ( 10 / cocktail.rating),
                         filledColor: Colors.yellow,
                      isHalfAllowed: true,
                      halfFilledIcon: Icons.star_half,
                          ),
                       ],
                     )
                  ]),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cocktail App"),backgroundColor: Colors.black87,),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: li.toList().asMap().entries.map((MapEntry map) {
                return getList(map.key);
              }).toList(),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Column(
              children: cocktaillist.asMap().entries.map((MapEntry map) {
                return getCocktail(map.value);
              }).toList(),
            ),
          )
        ],
      )),
    );
  }
}
