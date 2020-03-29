import 'package:flutter/material.dart';

class AppelAudio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          "Appel vocal",
          style: TextStyle(color: Colors.black, fontSize: 26),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 50,
            width: MediaQuery.of(context).size.height,
            child: Text(
              "Octave",
              style: TextStyle(fontSize: 22),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage("images/ra.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.mic), onPressed: () {}),
                    Text("Mute"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.volume_up), onPressed: () {}),
                    Text("haut parleur"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.video_call), onPressed: () {}),
                    Text("Video"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            children: <Widget>[
              FloatingActionButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.call_end),
                backgroundColor: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
