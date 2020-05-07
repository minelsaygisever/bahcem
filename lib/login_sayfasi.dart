import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';
import 'main.dart';
import 'register_sayfasi.dart';

class LoginSayfasi extends StatefulWidget {
  @override
  _LoginSayfasiState createState() => _LoginSayfasiState();
}

class _LoginSayfasiState extends State<LoginSayfasi> {
  final formKey = GlobalKey<FormState>();
  final _kullaniciAdi = TextEditingController();
  final _sifre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: SizeConfig.screenHeight - SizeConfig.safeAreaHorizontal,
            width: SizeConfig.screenWidth - SizeConfig.safeAreaVertical,
            child: Padding(
              padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 6, 0, SizeConfig.blockWidth * 6, 0),
              child: Center(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 40, 0, SizeConfig.blockWidth * 10),
                              child: Text(
                                "Bahçem",
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  color: Colors.green[900],
                                  fontFamily: "Photoshoot",
                                  fontSize: SizeConfig.blockWidth * 13,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(SizeConfig.blockWidth * 0.5,
                                          SizeConfig.blockWidth * 0.5),
                                      blurRadius: 5.0,
                                      color: Color.fromARGB(70, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: SizeConfig.blockWidth * 3, left: SizeConfig.blockWidth * 6, right: SizeConfig.blockWidth * 6),
                              child: Container(
                                height: SizeConfig.blockWidth * 12,
                                alignment: Alignment.center,
                                child: TextFormField(
                                    cursorColor: Colors.green[900],
                                    controller: _kullaniciAdi,
                                    decoration: InputDecoration(
                                      hintText: "Kullanıcı Adı",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Champagne-Limousines-Bold',
                                        fontSize: SizeConfig.blockWidth * 4.5,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                          color: Colors.green[900],
                                        ),
                                      ),

                                    ),
                                    validator: (val) {
                                      if (val.isEmpty) {
                                        return "Boş geçilemez";
                                      } else {
                                        return null;
                                      }
                                    }),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: SizeConfig.blockWidth * 3, left: SizeConfig.blockWidth * 6, right: SizeConfig.blockWidth * 6),
                              child: Container(
                                height: SizeConfig.blockWidth * 12,
                                alignment: Alignment.center,
                                child: TextFormField(
                                    cursorColor: Colors.green[900],
                                    controller: _sifre,
                                    decoration: InputDecoration(
                                      hintText: "Şifre",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Champagne-Limousines-Bold',
                                        fontSize: SizeConfig.blockWidth * 4.5,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                          color: Colors.green[900],
                                        ),
                                      ),

                                    ),
                                    validator: (val) {
                                      if (val.isEmpty) {
                                        return "Boş geçilemez";
                                      } else {
                                        return null;
                                      }
                                    }),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: SizeConfig.blockWidth * 1),
                              child: Container(
                                height: SizeConfig.blockWidth * 10,
                                width: SizeConfig.blockWidth * 26,
                                child: FlatButton(
                                    onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()),),
                                    child: Container(
                                      child: Text(
                                        "Giriş",
                                        style: TextStyle(
                                          fontSize: SizeConfig.blockWidth * 6.5,
                                          color: Colors.white,
                                          fontFamily: "Champagne-Limousines-Bold",
                                        ),
                                      ),
                                    ),
                                    color: Colors.green[900],
                                    shape: StadiumBorder()
                                ),
                              ),
                            ),
                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: SizeConfig.blockWidth * 4, bottom: SizeConfig.blockWidth * 4),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: SizeConfig.blockWidth * 50,
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Üye değil misiniz?",
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Colors.green[900],
                                    fontFamily: "Champagne-Limousines-Bold",
                                    fontSize: SizeConfig.blockWidth * 5,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: SizeConfig.blockWidth * 2),
                                child: Container(
                                  height: SizeConfig.blockWidth * 10,
                                  width: SizeConfig.blockWidth * 26,
                                  child: FlatButton(
                                      onPressed: () => Navigator.push(context, MaterialPageRoute(
                                          builder: (BuildContext context) => RegisterSayfasi()
                                      )),
                                      child: Container(
                                        child: Text(
                                          "Kayıt",
                                          style: TextStyle(
                                            fontSize: SizeConfig.blockWidth * 6.5,
                                            color: Colors.white,
                                            fontFamily: "Champagne-Limousines-Bold",
                                          ),
                                        ),
                                      ),
                                      color: Colors.green[900],
                                      shape: StadiumBorder()
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],

      ),
    );
  }
}