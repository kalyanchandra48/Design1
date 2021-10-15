import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstDesign(),
    ),
  );
}

class FirstDesign extends StatelessWidget {
  List<Color> colors = [
    Colors.red,
    Colors.grey,
    Colors.blue,
    Colors.black,
    Colors.red
  ];
  List<String> images = [
    'assets/panormico.webp',
    'assets/ledras.jpeg',
    'assets/lious.jpeg',
    'assets/final.jpeg'
  ];
  List<String> hotelName = [
    'Madeiro panormico',
    'Ledras Hotel',
    'Lious hotel',
    'Perg Hotel'
  ];
  List<String> rating = ['4.2', '3.4', '4.5', '4.6'];
  List<String> subHotel = ['Maiero', 'Liorus ls', 'kalyan', 'joshua'];
  List<IconData> icons = [
    Icons.favorite_border,
    Icons.favorite_border,
    Icons.favorite_border,
    Icons.favorite_border
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 14,
              width: 24,
            ),
            
			    
              
               Padding(
                padding: EdgeInsets.only(top: 8, bottom: 8),
                child:CircleAvatar(
		backgroundColor:Colors.black,		
				child: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 28,
                ),),
              ),
            
            SizedBox(
              width: 50,
            ),
            Icon(
              Icons.search,
              size: 28,
            ),
            SizedBox(
              width: 50,
            ),
            Icon(
              Icons.grid_view,
              size: 28,
            ),
            SizedBox(
              width: 50,
            ),
            Icon(
              Icons.favorite_border_outlined,
              size: 28,
            ),
            SizedBox(width: 24),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(right: 12, top: 12),
              child: Icon(
                Icons.person_sharp,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
            ),
            child: Text(
              'Discover',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 290,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Container(
                    //	  Icon(Icons.search),
                    padding: EdgeInsets.symmetric(
                      horizontal: 0,
                    ),
                    child: TextField(
                      cursorColor: Colors.black,
                      //prefixIcon::	Icon(Icons.search),
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                            left: 0,
                          ),
                          child: Icon(
                            Icons.search,
                            size: 20,
                          ),
                        ),
                        hintText: 'Where are you going?',
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                      //	  prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.yellow.shade200,
                    ),
                    child: Icon(Icons.sort)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Text(
                  'Popular Hotels',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 160,
                ),
                Container(
                    height: 20,
                    width: 20,
                    child: Icon(Icons.arrow_forward_ios)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
            width: 10,
          ),
          Container(
            height: 190,
            width: 390,
            color: Colors.white,
            child: ListView(
              padding: EdgeInsets.only(left: 12),
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 90,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Amsterdam.jpg'),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Amsterdam',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 90,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                      image: AssetImage('assets/city.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Berlin',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 90,
                  width: 150,
                  padding: EdgeInsets.only(bottom: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Krakova',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/Berlin.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Text(
                  'Island Life',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 204,
                ),
                Container(
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 190,
            width: 600,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 12),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (context, i) {
                  return SizedBox(width: 20);
                },
                itemBuilder: (context, i) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 12,
                            right: 12,
                          ),
                          child: Align(
                            child: Icon(icons[i]),
                            alignment: Alignment.topRight,
                          ),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(images[i]),
                            //Icon(Icons.icons[i]),
                            fit: BoxFit.fill,
                            //Icon(Icons.icons[i]),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: colors[i],
                        ),
                      ),SizedBox(height:4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.star_rate),
                          SizedBox(
                            width: 10,
                          ),
                          Text(rating[i]),
                        ],
                      ),
                      Text(
                        hotelName[i],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(subHotel[i]),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
