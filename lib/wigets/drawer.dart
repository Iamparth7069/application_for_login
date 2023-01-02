import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final imageUrl= "https://www.sample-videos.com/img/Sample-png-image-1mb.png";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
              margin: EdgeInsets.zero,
                accountName: Text("Vyas parth",style: TextStyle(
                  color: Colors.white,
                ),),
                accountEmail: Text("parthvyas45@gmail.com",style: TextStyle(
                  color: Colors.white,
                ),),
              currentAccountPicture: CircleAvatar(
               backgroundImage: NetworkImage(imageUrl),
              ))),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2 , style : TextStyle(
                    color: Colors.white,),
                ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white),
              title: Text(
                "Profile",
                textScaleFactor: 1.2 , style : TextStyle(
                color: Colors.white,),
              ),
            ),
            ListTile(
              onTap: ,
              leading: Icon(CupertinoIcons.mail,color: Colors.white),
              title: Text(
                "Mail",
                textScaleFactor: 1.2 , style : TextStyle(
                color: Colors.white,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
