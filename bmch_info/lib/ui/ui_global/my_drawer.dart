import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Brahmanbaria Medical College',style: TextStyle(color: Colors.white),),
            decoration:BoxDecoration(
              // color: Colors.red.shade400,
              image: DecorationImage(
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSC-0T7CbKduJnb550LwVjghKTmYyfVFcF7w&usqp=CAU'),
                ),
             ) ,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Manu'),
              ),
              Divider(
                height: 1.0,
                thickness: 3.0,
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favarite Page'),
              ),
              ListTile(
                leading: Icon(Icons.medical_services),
                title: Text('Doctor Page'),
              ),
              ListTile(
                leading: Icon(Icons.local_hospital),
                title: Text('Investrigation Page'),
              ),
              ListTile(
                leading: Icon(Icons.adb_outlined),
                title: Text('About Page'),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context,'/about');
                },
              ),
          ],
        ),
      
    );
  }
}