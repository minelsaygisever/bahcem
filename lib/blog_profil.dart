import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';
import 'blog_profil_duzenle.dart';
import 'blog_gonderi_ekle.dart';

class BlogProfilePage extends StatefulWidget {
  @override
  _BlogProfilePageState createState() => _BlogProfilePageState();
}

class _BlogProfilePageState extends State<BlogProfilePage> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 4, 0.0, 0.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, SizeConfig.blockWidth * 4, 0.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/minel.jpg'),
                              radius: SizeConfig.blockWidth * 10,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'minelsaygisever',
                                style: SizeConfig.yaziUserName,
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 1, SizeConfig.blockWidth * 1.5 , 0.0),
                                    child: Text(
                                      '6 gönderi',
                                      style: SizeConfig.yaziProfilKucukAciklama,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 1, SizeConfig.blockWidth * 1.5 , 0.0),
                                    child: Text(
                                      '25 takipçi',
                                      style: SizeConfig.yaziProfilKucukAciklama,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 1, 0, 0.0),
                                    child: Text(
                                      '20 takip edilen',
                                      style: SizeConfig.yaziProfilKucukAciklama,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 2.5, 0.0, 0.0),
                                child: Text(
                                  'Minel',
                                  style: SizeConfig.yaziAciklama,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 1, 0.0, 0.0),
                                child: Text(
                                  'Welcome to my green life!',
                                  style: SizeConfig.yaziProfilKucukAciklama,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only( top: SizeConfig.blockWidth * 1, bottom: SizeConfig.blockWidth * 5),
                            child: new GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BlogProfilDuzenle()),),
                              child: new Image.asset(
                                "assets/icons/pencil.png",
                                color: SizeConfig.almostBlack,
                                height: SizeConfig.blockWidth * 6,
                                width: SizeConfig.blockWidth * 6,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only( bottom: SizeConfig.blockWidth * 1),
                            child: new GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BlogGonderiEkle()),),
                              child: new Image.asset(
                                "assets/icons/newPost.png",
                                color: SizeConfig.almostBlack,
                                height: SizeConfig.blockWidth * 6,
                                width: SizeConfig.blockWidth * 6,
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 6, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/photo1.jpg'),
                        height: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        width: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage('assets/images/photo2.jpg'),
                        height: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        width: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage('assets/images/photo3.jpg'),
                        height: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        width: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 3 / 4, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/photo4.jpg'),
                        height: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        width: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage('assets/images/photo5.jpg'),
                        height: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        width: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage('assets/images/photo6.jpg'),
                        height: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        width: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        fit: BoxFit.cover,
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