import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './ui_global/my_drawer.dart';

class MyHomePage extends StatefulWidget {
  


  @override
  State<MyHomePage> createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> {

   String get name => 'foo';

  FirebaseOptions get firebaseOptions => const FirebaseOptions(
        appId: '1:448618578101:ios:0b650370bb29e29cac3efc',
        apiKey: 'AIzaSyAgUhHU8wSJgO5MVNy95tMT07NEjzMOfz0',
        projectId: 'react-native-firebase-testing',
        messagingSenderId: '448618578101',
      );
      Future<void> initializeSecondary() async {
    FirebaseApp app =
        await Firebase.initializeApp(name: name, options: firebaseOptions);

    print('Initialized $app');
  }
   final List<String> imgList = [
  'https://scontent.fdac23-1.fna.fbcdn.net/v/t1.6435-9/71859084_1460169237467054_7987340578608119808_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=973b4a&_nc_ohc=FMNi-fckMbEAX-l9f1J&_nc_ht=scontent.fdac23-1.fna&oh=00_AT8gaRYewB1gAZF6DzQrcERL_5kznNkFIGWeuBSe7mvdQw&oe=61E6D375',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbdZu_yqdSjRihyI_W2XVhSTwF0t4BOHGalw&usqp=CAU',
  'https://bmchbd.com/images/_soft/content/bmch_1561167555_home_600x370.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNLVKtXRORYHbC7R7GQ3bjjeyHSsdDLGb5Rg&usqp=CAU',
  'https://bdtimesnews.com/wp-content/uploads/2020/07/pjimage-2.jpg',

];
TextEditingController nameCont=TextEditingController();
  TextEditingController passwordCont=TextEditingController();
int changeIndex=0;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('BMCH'),
        actions: [
          IconButton(
            onPressed: initializeSecondary,
            icon: Icon(Icons.find_replace_sharp),
          ),
        ],
      ),
      body: Column(
        children: [
          
        
          CarouselSlider(
          options: CarouselOptions(
            height: 260.0,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            autoPlayInterval: Duration(seconds: 2),
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) {
              setState(() {
                changeIndex=index;
                
              });
             
              
            },


          ),
          items: imgList.map((e) => 
              Container(
                alignment: Alignment.bottomCenter,
                // child: Chip(label: Text('${changeIndex} / ${imgList.length}')),
              height: 250.0,
              width: double.infinity,
              // color: Colors.orange,
              margin: EdgeInsets.all(10.0),
              child: CachedNetworkImage(
                imageUrl: '$e',
                placeholder:(context,url)=> CircularProgressIndicator(),
                errorWidget: (context,url,error)=> Image (image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkxSbkqXwGhwh2GZ54Fz6n3uaTEIA2xOiZFoqOvv8YCLaTf2lOa1AuIwIIFBnpq4WszJY&usqp=CAU'), ), 
                ),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(35.0),
              //   color: Colors.red,
              //   image: DecorationImage(
              //     image: NetworkImage('$e'),
              //     fit: BoxFit.fill,
              //     ),
              
              // ),
            ),
            ).toList(),
            ),
        Padding(padding: EdgeInsets.all(0.0),
          child:   TextField(
            controller: nameCont ,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text ('Full Name'),
            ),
          ),
          ),
          
          
          Padding(padding: EdgeInsets.all(0.0),
          child:   TextField(
            controller: passwordCont,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text ('Password'),
            ),
          ),
          ),
        ],
      ),
      
    );
  }
}