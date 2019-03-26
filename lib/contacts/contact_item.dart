import 'package:flutter/material.dart';
import 'contact_vo.dart';

class ContactItem extends StatelessWidget {
  final ContactVO item;
  final String titleName;
  final String imageName;

  ContactItem({this.item, this.titleName, this.imageName});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(width: 0.5, color: Color(0xffd9d9d9)))
      ),
      height: 52,
      child: FlatButton(
          onPressed: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              imageName == null
                  ? Image.network(item.avatarUrl != '' ? item.avatarUrl : '',height: 35, width: 35)
                  : Image.asset(imageName, height: 35, width: 35),

              Container(
                margin: const EdgeInsets.only(left: 12),
                child: Text(
                    titleName == null ? item.name??'暂时':titleName,
                style: TextStyle(fontSize: 18,color: Color(0xff353535)),
                maxLines: 1,),
              )

            ],
          )),
    );
  }
}