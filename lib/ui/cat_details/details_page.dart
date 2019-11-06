import 'package:catbox/models/cat.dart';
import 'package:catbox/ui/cat_details/details_body.dart';
import 'package:catbox/ui/cat_details/footer/details_footer.dart';
import 'package:catbox/ui/cat_details/header/details_header.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class CatDetailsPage extends StatefulWidget {
  final Cat cat;
  final Object avatarTag;

  CatDetailsPage(
    this.cat, {
    @required this.avatarTag,
  });

  @override
  _CatDetailsPageState createState() =>  _CatDetailsPageState();
}

class _CatDetailsPageState extends State<CatDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var linearGradient =  BoxDecoration(
      gradient:  LinearGradient(
        begin: FractionalOffset.centerRight,
        end: FractionalOffset.bottomLeft,
        colors: [
          Colors.blue,
          Colors.blue,
        ],
      ),
    );

    return  Scaffold(
      body:  SingleChildScrollView(
        child:  Container(
          decoration: linearGradient,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               CatDetailHeader(
                widget.cat,
                avatarTag: widget.avatarTag,
              ),
               Padding(
                padding: const EdgeInsets.all(24.0),
                child:  CatDetailBody(widget.cat),
              ),
               CatShowcase(widget.cat),
            ],
          ),
        ),
      ),
    );
  }
}
