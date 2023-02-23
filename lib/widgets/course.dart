import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:futuresity/models/topcoursemodel.dart';

class topcoursewidget extends StatelessWidget {
  final Topcoursemodel _topcoursemodelitems;
  topcoursewidget(this._topcoursemodelitems);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10,0,5,0),
      child: Container(
        height: 200,
        width: 160,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 90,
              decoration: BoxDecoration(
              
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),              )
              ),
              child: CachedNetworkImage(imageUrl:_topcoursemodelitems.thumbnail,fit: BoxFit.cover, ),
    
            ),
    
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 5),
              child: Text(_topcoursemodelitems.title,maxLines: 2,overflow:TextOverflow.ellipsis ,style: TextStyle(color: Colors.black),),
            ),
    
            Padding(
              padding: const EdgeInsets.fromLTRB(0,10,5,5),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(_topcoursemodelitems.price,style: TextStyle(color: Colors.grey),)
              ],
              ),
            )
    
    
          ],
        ),
      ),
    );
  }
}
