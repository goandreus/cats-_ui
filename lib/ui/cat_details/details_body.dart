import 'package:catbox/models/cat.dart';
import 'package:flutter/material.dart';

class CatDetailBody extends StatelessWidget {
  final Cat cat;

  CatDetailBody(this.cat);

  _createCircleBadge(IconData iconData, Color color) {
    return  Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child:  CircleAvatar(
        backgroundColor: color,
        child:  Icon(
          iconData,
          color: Colors.white,
          size: 16.0,
        ),
        radius: 16.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;

    var locationInfo =  Row(
      children: [
         Icon(
          Icons.place,
          color: Colors.white,
          size: 16.0,
        ),
         Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child:  Text(
            cat.location,
            style: textTheme.subhead.copyWith(color: Colors.white),
          ),
        ),
      ],
    );

    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          cat.name,
          style: textTheme.headline.copyWith(color: Colors.white),
        ),
         Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: locationInfo,
        ),
        // Badges
         Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child:  Text(
            cat.description,
            style:
                textTheme.body1.copyWith(color: Colors.white70, fontSize: 16.0),
          ),
        ),
         Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child:  Row(
            children: [
              _createCircleBadge(Icons.share, theme.accentColor),
              _createCircleBadge(Icons.phone, Colors.white12),
              _createCircleBadge(Icons.email, Colors.white12),
            ],
          ),
        ),
      ],
    );
  }
}
