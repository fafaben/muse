import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
      elevation: 0.0,
      backgroundColor: Color(0xff6D8B74),
      title: Text('مخلفات أدوات الحرب', style: TextStyle(color: Colors.black)),
      centerTitle: true,),
    body: ListView(
    children: <Widget>[
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    Container(
    padding: EdgeInsets.all(10.0),
    height: 250.0,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    Column(
    children: <Widget>[
    Stack(
    children: <Widget>[
    Container(
    height: 230.0,

    width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width/3,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5.0),
    image: DecorationImage(
    image: AssetImage('assets/images/revolution.jpg'),
    fit: BoxFit.cover
    )
    ),
    ),

    ],
    )
    ],
    ),
    SizedBox(width: 5.0),
    Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    Material(
    borderRadius: BorderRadius.circular(7.0),
    elevation: 2.0,
    child: Container(
    height: 60.0,
    width: 60.0,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(7.0)
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    Text( "🇩🇿", style: TextStyle(
      fontSize: 21.0,
    ),
    ),
    Text(
    'الوطن',
    style: TextStyle(
    fontFamily: 'Quicksand',
    fontSize: 15.0,
    fontWeight: FontWeight.bold),
    )
    ],
    ),
    ),
    ),
    Material(
    borderRadius: BorderRadius.circular(7.0),
    elevation: 2.0,
    child: Container(
    height: 60.0,
    width: 60.0,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(7.0),
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    Text("🇨🇵", style: TextStyle(
    fontSize: 20.0,
    ),),
    Text(
    'العدو',
    style: TextStyle(
    fontFamily: 'Quicksand',
    fontSize: 15.0,
    fontWeight: FontWeight.bold),
    )
    ],
    ),
    ),
    ),
    Material(
    borderRadius: BorderRadius.circular(7.0),
    elevation: 2.0,
    child: Container(
    height: 60.0,
    width: 60.0,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(7.0),
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    Text("🎖️",
    style: TextStyle(
      fontSize: 21.0,
    ),),
    Text(
    'الشعب',
    style: TextStyle(
    fontFamily: 'Quicksand',
    fontSize: 15.0,
    fontWeight: FontWeight.bold),
    )
    ],
    ),
    ),
    ),
    ],
    )
    ],
    ),
    ),
    SizedBox(height: 10.0),


    GridView.count(
    crossAxisCount: 2,
    primary: false,
    crossAxisSpacing: 10.0,
    childAspectRatio: 0.85,
    mainAxisSpacing: 10.0,
    shrinkWrap: true,
    children: <Widget>[
    _buildFoodCard('حقبية وثائق','1', 'assets/images/rest.jpg'),
    _buildFoodCard('ذخيرة رشاش', '2', 'assets/images/rest2.jpg', ),
    _buildFoodCard('بقايا قذائف', '3', 'assets/images/rest3.jpg',),
    _buildFoodCard('راية وطنية', '4', 'assets/images/rest4.jpg',),
    _buildFoodCard('جهاز لاسلكي', '5', 'assets/images/rest7.jpg' ),
    _buildFoodCard('خرطوش فارغ', '6', 'assets/images/rest6.jpg' ),
    ],
    ),
    SizedBox(height: 10.0)
    ],
    )
    ],
    )
    );
  }

  Widget _buildFoodCard(
      String name, String origin, String cardImage
      ) {
    return

         Container(
          height: 400.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                  color: Colors.grey.withOpacity(0.2),
                  style: BorderStyle.solid,
                  width: 1.0
              )
          ),
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0)
                        ),
                        image: DecorationImage(
                            image: AssetImage(cardImage),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0,top: 5.0),
                    child: Center(
                      child: Text(
                        name,
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),

                  SizedBox(height: 3.0),





                ],
              ),



            ],
          ),

         );}
}
