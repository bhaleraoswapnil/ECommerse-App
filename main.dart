import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomePage(),
  )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: true,
        dotSize: 4.0,
        dotColor: Colors.red,
        indicatorBgPadding: 8.0,
       animationCurve: Curves.fastOutSlowIn,
       animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return Scaffold(

      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('shopApp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color:Colors.white), onPressed: null),
          new IconButton(icon: Icon(Icons.shopping_cart,color:Colors.white), onPressed: null)
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: Text('Swapnil'),
              accountEmail: Text('bhalerao.swapnil11@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.pink
              ),
            ),

            // Body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color: Colors.pink,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person,color: Colors.pink,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_cart,color: Colors.pink,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categeries'),
                leading: Icon(Icons.dashboard,color: Colors.pink,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite,color: Colors.pink,),
              ),
            ),

            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.blue,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.blue,),

              ),
            ),


          ],
        ),
      ),

      body: ListView(
        children: <Widget>[
          image_carousel
        ],
      ),
    );
  }
}
