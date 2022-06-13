import 'package:flutter/material.dart';
import 'details_page.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'assets/images/amir6.jpg',

    title: 'الحرية',
    details:
    'نابليون الثالث يحرر الأمير عبد القادر برسم أنجي تيسير (1861).',
  ),
  ImageDetails(
      imagePath: 'assets/images/amir8.jpg',

      title: 'معركة إسلي',
      details: 'بين المغرب وفرنسا في 14 أغسطس 1844 م بسبب مساعدة السلطان المغربي أبو الفضل عبد الرحمن بن هشام للمقاومة الجزائرية ضد فرنسا واحتضانه للأمير عبد القادر الشيء الذي دفع الفرنسين إلى مهاجمة المغرب'
  ),

  ImageDetails(
    imagePath: 'assets/images/room.jpg',

    title: 'افرشة القائد',
    details:
    ' هنا إعتاد القائد أمير عبد القادر الجلوس ',
  ),
  ImageDetails(
    imagePath: 'assets/images/amir3.jpg',

    title: 'مذابح الدروز',
    details:
    'لوحة تمثل الأمير عبد القادر الذي يحمي المسيحيين في دمشق عام 1860 أثناء مذابح الدروز.',
  ),
  ImageDetails(
    imagePath: 'assets/images/amir4.jpg',

    title: 'معاهدة دي ميشال',
    details:
    'معاهدة سلام وصداقة أبرمت في وهران في 26 فبراير 1834 بين فرنسا وعبد القادر.',
  ),


  ImageDetails(
    imagePath: 'assets/images/amir5.jpg',

    title: 'مذابح الدروز',
    details:
    'لوحة تمثل الأمير عبد القادر الذي يحمي المسيحيين في دمشق عام 1860 أثناء مذابح الدروز.',
  ),

  ImageDetails(
    imagePath: 'assets/images/sarj.jpg',

    title: 'سرج',
    details:
'سرج حصان الأمير عبد القادر الجزائري '  ),
  ImageDetails(
    imagePath: 'assets/images/amir8.jpg',

    title: 'معركة إسلي',
    details: 'بين المغرب وفرنسا في 14 أغسطس 1844 م بسبب مساعدة السلطان المغربي أبو الفضل عبد الرحمن بن هشام للمقاومة الجزائرية ضد فرنسا واحتضانه للأمير عبد القادر الشيء الذي دفع الفرنسين إلى مهاجمة المغرب'
  ),
  ImageDetails(
    imagePath: 'assets/images/bouts.jpg',

    title: 'احذية',
    details:
      'احذية امير عبد القادر'  ),






];

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff6D8B74),
        title: Text('الأمير عبد القادر', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: SafeArea(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 8,),

        Container(

          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),

              image: DecorationImage(

                  image: AssetImage('assets/images/amir7.jpg'),

                  fit: BoxFit.cover))),


            SizedBox(
              height: 20,

            ),
            Text(
              "الأمير عبد القادر بن محي الدين المعروف بـ عبد القادر الجزائري ولد في قرية القيطنة قرب مدينة معسكر بالغرب الجزائري يوم الثلاثاء 6 سبتمبر 1808 الموافق لـ 15 رجب 1223 هـ هو قائد سياسي وعسكري مجاهد عرف بمحاربته للاحتلال الفرنسي للجزائر قاد مقاومة شعبية لخمسة عشر عاما أثناء بدايات غزو فرنسا للجزائر، يعتبر مؤسس الدولة الجزائرية الحديثة ورمز للمقاومة الجزائرية ضد الاستعمار والاضطهاد الفرنسي، نفي إلى دمشق حيث تفرغ للتصوف والفلسفة والكتابة والشعر وتوفي فيها يوم 26 مايو 1883.",
              maxLines: 15,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13,
                color: Color(0xff868686),
                fontWeight: FontWeight.w500,
              ),textAlign: TextAlign.right,
            ),

            Expanded(

              child: Container(

                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,

                ),
                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),

                  ),
                ),
                child: GridView.builder(

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,

                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[index].imagePath,
                              title: _images[index].title,

                              details: _images[index].details,
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;

  final String title;
  final String details;
  ImageDetails({
    required this.imagePath,

    required this.title,
    required this.details,
  });
}