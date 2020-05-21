import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogAnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      body: ListView(
        children: <Widget>[
          Padding(
            padding:
                EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 2, 0.0, 0.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.blockWidth * 2,
                      right: SizeConfig.blockWidth * 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/minel.jpg'),
                            radius: SizeConfig.blockWidth * 5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.blockWidth * 2),
                            child: Text(
                              'minelsaygisever',
                              style: SizeConfig.yaziUserName,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: new Image.asset(
                              "assets/icons/more.png",
                              color: Colors.black45,
                              height: SizeConfig.blockWidth * 4,
                              width: SizeConfig.blockWidth * 4,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 2, 0, 0),
                  child: Image(
                    image: AssetImage('assets/images/photo1.jpg'),
                    height: SizeConfig.screenWidth,
                    width: SizeConfig.screenWidth,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 2, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.blockWidth * 2, top: 0),
                        child: new Image.asset(
                          "assets/icons/flower.png",
                          color: SizeConfig.almostBlack,
                          height: SizeConfig.blockWidth * 7,
                          width: SizeConfig.blockWidth * 7,
                        ),
                      ),
                      Text(
                        ' 12 beğeni',
                        style: SizeConfig.yaziAciklama,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 2, 0,
                      SizeConfig.blockWidth * 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2,
                            0, SizeConfig.blockWidth * 2, 0),
                        child: Container(
                          width: SizeConfig.screenWidth -
                              SizeConfig.blockWidth * 4,
                          child: Text(
                            'Minik aloeveralarım <3 Geçtiğimiz pazar annemle toprağını değiştirmiştik, ne çabuk yenileri çıkmış :)',
                            maxLines: null,
                            style: SizeConfig.yaziAciklama,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}