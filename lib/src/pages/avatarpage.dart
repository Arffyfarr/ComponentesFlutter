import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              //child: Text('RN'),
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__340.jpg'),
            ),
          ),
          Container(
            //padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('RN'),
              backgroundColor: Colors.deepPurpleAccent[600],
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://wallpapercave.com/wp/wp4728736.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
      //no ponemos el body todavia
    );
  }
}
