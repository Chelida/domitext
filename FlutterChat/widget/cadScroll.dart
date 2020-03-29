import 'package:flutter/material.dart';

import 'package:flutter_page_indicator/flutter_page_indicator.dart';

class CardScroll extends StatefulWidget {
  CardScroll({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _CardScroll createState() => new _CardScroll();
}

class _CardScroll extends State<CardScroll> {
  double size = 10.0;
  double activeSize = 10.0;

  PageController controller;
  PageController controllerLandscape;

  @override
  void initState() {
    controller = new PageController();
    super.initState();
  }

  @override
  void didUpdateWidget(CardScroll oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[
      Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 180,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage("images/tous.jpg"), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Find best deals",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 280,
                  height: 60,
                  child: Text(
                    "Find deals for any season from cosy country homes to city flats",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ))
            ],
          ),
        ),
      
       new Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 180,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage("images/ta.jpg"), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Find best deals",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 280,
                  height: 60,
                  child: Text(
                    "Find deals for any season from cosy country homes to city flats",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ))
            ],
          ),
        ),
    
     Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 180,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage("images/amis.jpg"), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Find best deals",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 280,
                  height: 60,
                  child: Text(
                    "Find deals for any season from cosy country homes to city flats",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ))
            ],
          ),
        ),
     
      
               Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 180,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage("images/monde.jpg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Find best deals",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 280,
                  height: 60,
                  child: Text(
                    "Find deals for any season from cosy country homes to city flats",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ))
            ],
          ),
        )
        
      
    ];
   

    var childrenL = <Widget>[
     Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 200,
                height: 100,
                margin: EdgeInsets.only(left: 60),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage("images/tous.jpg"), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 280,
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Find best deals",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 280,
                  height: 60,
                  child: Text(
                    "Find deals for any season from cosy country homes to city flats",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ))
            ],
          ),
        ),
      Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 200,
                height: 100,
                margin: EdgeInsets.only(left: 60),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage("images/ta.jpg"), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 280,
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Find best deals",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 280,
                  height: 60,
                  child: Text(
                    "Find deals for any season from cosy country homes to city flats",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ))
            ],
          ),
        ),
     Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 200,
                height: 100,
                margin: EdgeInsets.only(left: 60),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage("images/amis.jpg"), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 280,
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Find best deals",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 280,
                  height: 60,
                  child: Text(
                    "Find deals for any season from cosy country homes to city flats",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ))
            ],
          ),
        ),
     Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 200,
                height: 100,
                margin: EdgeInsets.only(left: 60),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage("images/monde.jpg"), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 280,
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Find best deals",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 280,
                  height: 60,
                  child: Text(
                    "Find deals for any season from cosy country homes to city flats",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ))
            ],
          ),
        ),
     
      
         
      
    ];
   
    return new Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(
            "Bienvenue",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
                  child: (MediaQuery.of(context).orientation==Orientation.portrait)?viewPortrait(children):viewLandscape(childrenL)
                  ));
  }

  Widget viewPortrait(List<Widget>children){
    return Container(
            child: Column(
              children: <Widget>[
                new Container(
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: MediaQuery.of(context).size.width,
                    child: new Stack(
                      children: <Widget>[
                        new PageView(
                          controller: controller,
                          children: children,
                        ),
                        new Align(
                          alignment: Alignment.bottomCenter,
                          child: new Padding(
                            padding: new EdgeInsets.only(bottom: 20.0),
                            child: new PageIndicator(
                              layout: PageIndicatorLayout.DROP,
                              size: size,
                              activeSize: activeSize,
                              controller: controller,
                              space: 5.0,
                              count: 4,
                              color: Colors.black,
                              activeColor: Colors.blue,
                            ),
                          ),
                        )
                      ],
                    )),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, 'homeChat');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 140,
                    height: 56,
                    child: Text(
                      "Demarrer",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff5eacf6), Color(0xff26559b)]),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ],
            ),
          );
  }

 Widget viewLandscape(List<Widget>children){
    return Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: MediaQuery.of(context).size.width/2,
                    
     
                    child: new Stack(
                      children: <Widget>[
                        new PageView(
                            controller: controllerLandscape,
                            children: children,
                          
                        ),
                        new Positioned(
                          top:  MediaQuery.of(context).size.height/1.7,
                          left: MediaQuery.of(context).size.height/3,
                          child: new Padding(
                            padding: new EdgeInsets.only(bottom: 20.0),
                            child: new PageIndicator(
                              layout: PageIndicatorLayout.DROP,
                              size: size,
                              activeSize: activeSize,
                              controller: controller,
                              space: 5.0,
                              count: 4,
                              color: Colors.black,
                              activeColor: Colors.blue,
                            ),
                          ),
                        )
                      ],
                    )),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, 'homeChat');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 140,
                    height: 56,
                    child: Text(
                      "Demarrer",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff5eacf6), Color(0xff26559b)]),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ],
            ),
          );
  }



}
