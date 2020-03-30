import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

import 'detail.dart';

class NewScreenDetail extends StatefulWidget {
  final Cocktail cocktailobject;
  NewScreenDetail({@required this.cocktailobject});
  @override
  _NewScreenDetailState createState() => _NewScreenDetailState();
}

class _NewScreenDetailState extends State<NewScreenDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.cocktailobject.name,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(0.3, 0.3),
                        blurRadius: 4,
                        spreadRadius: 3,
                      )
                    ],
                    border: Border.all(color: Colors.black, width: 6),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(widget.cocktailobject.imageurl),
                        fit: BoxFit.fill)),
              ),
              Text(widget.cocktailobject.name, style: TextStyle(fontSize: 20)),
              Row(
                children: <Widget>[
                  RatingBar.readOnly(
                    filledIcon: Icons.star,
                    emptyIcon: Icons.star_border,
                    initialRating:
                        5 / (10 / widget.cocktailobject.rating).toDouble(),
                    isHalfAllowed: true,
                    halfFilledIcon: Icons.star_half,
                    size: 30,
                    filledColor: Colors.yellow,
                  ),
                ],
              ),
              Text(widget.cocktailobject.description)
            ],
          )
        ],
      )),
    );
  }
}
