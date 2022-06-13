import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}


    class _page1State extends State<page1> {
    int photoIndex = 0;

    List<String> photos = [
    'assets/images/sacrifice1.jpg',
    'assets/images/sacrifice2.jpg',
    'assets/images/sacrifice3.jpg',
      'assets/images/sacrifice4.jpg',
      'assets/images/sacrifice5.jpg',



    ];

    void _previousImage() {
    setState(() {
    photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
    }

    void _nextImage() {
    setState(() {
    photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
    }

    @override
    Widget build(BuildContext context) {
    return new Scaffold(
    appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff6D8B74),
        title: Text('تماثيل الشمع', style: TextStyle(color: Colors.black)),
        centerTitle: true,
    ),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
        Center(

        child: Stack(
        children: <Widget>[
        Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        image: DecorationImage(
        image: AssetImage(photos[photoIndex]),
        fit: BoxFit.cover)),
        height: 400.0,
        width: 300.0,
        ),
        Positioned(
        top: 375.0,
        left: 25.0,
        right: 25.0,
        child: SelectedPhoto(numberOfDots: photos.length, photoIndex: photoIndex),
        )
        ],
        ),
        ),
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        RaisedButton(
        child: Text('التالي',style: TextStyle(color: Colors.white)),
        onPressed: _nextImage,
        elevation: 5.0,
            color: Color(0xff89747b),
        ),
        SizedBox(width: 10.0),
        RaisedButton(
        child: Text('السابق',style: TextStyle(color: Colors.white),),
        onPressed: _previousImage,
        elevation: 5.0,
            color: Color(0xff89747b),
        )

          
        ],

        ),SizedBox(width: 60.0),


        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("استخدم الاستعمار الفرنسي في الجزائر خلال ثورة التحرير 1954-1962 مختلف أساليب القهر والتعذيب ضد أبناء الشعب الجزائري، وخاصة في السجون والمعتقلات ومراكز التعذيب التي كانت موجودة في مختلف مناطق البلاد ، وذلك بهدف خنق روح الثورة والقضاء على كل صوت يقف في وجه الاستعمار . وقد تعرضت كثير من الصحف الفرنسية إلى هذه السلوكات مثل صحيفة فرانس أوبسيرفاتور ، وليبيراسيون ، وأوبسيرفاتور ولوفيغارو ، وكانديد. كما أن هذه الصحف قد نقلت شهادات بعض الجنود الفرنسيين عبر رسائل كانوا يرسلونها إلى ذويهم في فرنسا. نتناول مقتطفات مما جاء في هذه الصحف من خلال العمل الموسوعي  الثورة الجزائرية في الصحافة الدولية  للدكتور عبد الله شريط."
        ,style: TextStyle(),
          textAlign: TextAlign.right,),),

          SizedBox(height: 10),
          Divider(color: Colors.black38),
       Row(

            children: [
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Container(
                     width: 190,

                     child:
                     Column(
                       children: [
                         Text(
                           'هواري بومدين',
                           style: TextStyle(

                             fontSize: 28,
                             color: Color(0xff4E944F),
                             fontWeight: FontWeight.w900,
                           ),
                           textAlign: TextAlign.right,

                         ),
                         Text(
                            'واسمه الحقيقي محمد إبراهيم بوخروبة'
                                ' (23 أغسطس 1932 - 27 ديسمبر 1978) '
                                'الرئيس الثاني للجزائر المستقلة.'
                          , maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle( fontSize:15,
                            fontWeight: FontWeight.w200,),
                          textAlign: TextAlign.right,
                  ),
                       ],
                     ),
                   ),
                ],
              ),
              new Container(
                padding: EdgeInsets.only(left: 50),
                margin: EdgeInsets.only(left:10),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      image: DecorationImage(
      image: AssetImage("assets/images/president1.jpg"),
      fit: BoxFit.cover)),
      height: 230.0,
      width: 120.0,
      ),      ]),



          SizedBox(height: 10),
          Divider(color: Colors.black38),



             Row(
      children: [
      new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(
      width: 190,

      child:
      Column(
      children: [
      Text(
      'رمضان بن عبد المالك',
      style: TextStyle(

      fontSize: 20,
      color: Color(0xff4E944F),
      fontWeight: FontWeight.w900,
      ),
      textAlign: TextAlign.right,

      ),
      Text(" سياسي وعسكري جزائري استشهد في ساحة الشرف من أجل استقلال الجزائر منطقة الغرب"
      "(1928م-1954م) "

      , maxLines: 5,
      overflow: TextOverflow.ellipsis,
      style: TextStyle( fontSize:15,
      fontWeight: FontWeight.w200,),
      textAlign: TextAlign.right,
      ),
      ],
      ),
      ),
      ],
      ),
      new Container(
      padding: EdgeInsets.only(left: 50),
      margin: EdgeInsets.only(left:10),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      image: DecorationImage(
      image: AssetImage("assets/images/president2.jpg"),
      fit: BoxFit.cover)),
      height: 230.0,
      width: 120.0,
      ),
             ]) ,SizedBox(height: 10),
          Divider(color: Colors.black38), Row(
      children: [
      new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(
      width: 190,

      child:
      Column(
      children: [
      Text(
      'محمد بوضياف',
      style: TextStyle(

      fontSize: 20,
      color: Color(0xff4E944F),
      fontWeight: FontWeight.w900,
      ),
      textAlign: TextAlign.right,

      ),
      Text("لقب بالسي الطيب الوطني وهو اللقب الذي أطلق عليه خلال الثورة الجزائرية"
          "، يعد أحد كبار رموز الثورة الجزائرية وقادتها والرئيس الرابع للدولة الجزائرية. "
      "ولد في 23 يونيو 1919م"



      , maxLines: 7,
      overflow: TextOverflow.ellipsis,
      style: TextStyle( fontSize:15,
      fontWeight: FontWeight.w200,),
      textAlign: TextAlign.right,
      ),
      ],
      ),
      ),
      ],
      ),
      new Container(
      padding: EdgeInsets.only(left: 50),
      margin: EdgeInsets.only(left:10),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      image: DecorationImage(
      image: AssetImage("assets/images/president3.jpg"),
      fit: BoxFit.cover)),
      height: 230.0,
      width: 120.0,
      ),

        ],
          ),])


      )));




    }
    }

    class SelectedPhoto extends StatelessWidget {

    final int numberOfDots;
    final int photoIndex;

    SelectedPhoto({required this.numberOfDots, required this.photoIndex});

    Widget _inactivePhoto() {
    return new Container(
    child: new Padding(
    padding: const EdgeInsets.only(left: 3.0, right: 3.0),
    child: Container(
    height: 8.0,
    width: 8.0,
    decoration: BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(4.0)
    ),
    ),
    )
    );
    }

    Widget _activePhoto() {
    return Container(
    child: Padding(
    padding: EdgeInsets.only(left: 3.0, right: 3.0),
    child: Container(
    height: 10.0,
    width: 10.0,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(5.0),
    boxShadow: [
    BoxShadow(
    color: Colors.grey,
    spreadRadius: 0.0,
    blurRadius: 2.0
    )
    ]
    ),
    ),
    ),
    );
    }

    List<Widget> _buildDots() {
    List<Widget> dots = [];

    for(int i = 0; i< numberOfDots; ++i) {
    dots.add(
    i == photoIndex ? _activePhoto(): _inactivePhoto()
    );
    }

    return dots;
    }


    @override
    Widget build(BuildContext context) {
    return new Center(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: _buildDots(),
    ),
    );
  }
  
  
}
 
