import 'package:flutter/material.dart';

class page4 extends StatefulWidget {
  const page4({Key? key}) : super(key: key);

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   new AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff6D8B74),
    title: Text('الكشافة الإسلامية', style: TextStyle(color: Colors.black)),
    centerTitle: true,),

         body: SingleChildScrollView(
           child:

           Column(

             children: [
               SizedBox(height: 20,),

               Center(
                 child: Container(

                     padding: const EdgeInsets.all(15.0),
                     width: 240,
                     height: 230.0,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10.0),
                       image: DecorationImage(
                           image: AssetImage('assets/images/img.png'),
                           fit: BoxFit.cover
                       ),
                     )),

               ),
               SizedBox(height: 20,),
               Center(
                   child: Text("ظهرت الكشافة في الجزائر بعد الحرب العالمية الأولى على يد الفرنسيين الذين كان هدفهم تربية أبنائهم"
                       "وكانت صورة للكشافة المتواجدة بفرنسا رغم انخراط بعض الشبّان الجزائريين في صفوفها لإعجابهم بالنظام والانضباط الكشفي والزي الموحد"
                       "لكن الاحتفالات بالذكرى المئوية للاحتلال وما رافقها من استعراضات استفزازية شاركت فيها الكشافة دفعت الجزائريين إلى الانسحاب من صفوفها والاتجاه نحو تأسيس كشافة إسلامية جزائرية."
                     ,
                     style: TextStyle( fontSize:14,
                       color: Color(0xFF1A3C40),
                       fontWeight: FontWeight.w600,),
                     textAlign: TextAlign.center,)),

               Divider(height: 15,
                 color: Color(0xFF1A3C40),),
               Text("نشأتها",
                 style: TextStyle( fontSize:16,
                   color: Colors.red,
                   fontWeight: FontWeight.w900,),
                 textAlign: TextAlign.right,),
               Center(
                 child: Container(


                   child: Text("تعود أصول الكشافة الإسلامية الجزائرية إلى سنوات الثلاثينات حين تأسّس فوجا كشفيا بمدينة مليانة تحت اسم "
                       ": فوج ابن خلدون على يد صادق الغول، و بعدها بقليل تأسس فوج ثاني بالعاصمة من طرف محمد بوراس تحت اسم فوج الفلاح سنة 1935،"
                       " وحصل على الاعتماد الرسمي في جوان 1936 ثم توسعت الأفواج الكشفية إلى باقي المدن الجزائريين ،"
                       " فظهر فوج الرجاء وفوج الصباح بقسنطينة 1936 ، وفوج الفلاح بمستغانم 1936،"
                       " وفوج الإقبال بالبليدة 1936 ، وفوج القطب بالعاصمة 1937وفوج الحياة بسطيف1938"
                       "  وفوج الهلال بتيزي وزو 1938وفوج الرجاء بباتنة 1938 وفوج النجوم بقالمة 1938 .",
                     maxLines: 15,
                     overflow: TextOverflow.ellipsis,style: TextStyle( fontSize:16,
                       color: Color(0xFF1A3C40),
                       fontWeight: FontWeight.w500,),
                     textAlign: TextAlign.right,),
                 )
               ),Divider(height: 15,
                 color: Color(0xFF1A3C40),),
               Text("  :دورها في الثورة التحريرية",
                 style: TextStyle( fontSize:16,
                   color: Colors.red,
                   fontWeight: FontWeight.w900,),
                 textAlign: TextAlign.right,),
    Center(
    child: Container(


    child: Text("شكلت الكشافة الإسلامية الجزائرية رصيدا هائلا من الرجال المستعدين للقيام بالعمل المسلح إذّ تسابقت العناصر الكشفية إلى الالتحاق بالمجاهدين عند اندلاع الثورة التحريرية ، وأعلنت على حل نفسها استجابة لنداء جبهة التحرير الوطني فتدعم جيش التحرير الوطني، بكفاءات شبانية مدربة تتمتع بروح انضباط عالية واخلاص للوطن ووجدت الثورة التحريرية في الكشفيين عناصر واعية مدربة على العمل والنظام ومستعدة للتضحية من أجل الوطن بقناعة تامة ",
    maxLines: 15,
    overflow: TextOverflow.ellipsis,style: TextStyle( fontSize:16,
    color: Color(0xFF1A3C40),
    fontWeight: FontWeight.w500,),
    textAlign: TextAlign.right,),
    )) , Divider(height: 10,color: Color(0xFF1A3C40),)
    ,Center(
    child: Container(

child: Text("وساهم قادة الأفواج الكشفية في تدريب جنود جيش التحرير الوطني، كما استفادت الوحدات الصحية لجيش التحرير الوطني بخيرة العناصر الكشفية في مجال التمريض والإسعافات، ومن أبرز القادة الكشفيين الذين شغلوا مناصب قيادية في الثورة ولم يقتصر دور الكشافة أثناء الثورة على الداخل بل تعدّاه إلى خارج الوطن أين تشكلت فرق كشفية جزائرية في كل من تونس والمغرب وشاركت باسم الجزائر في عدة نشاطات كشفية في الرباط، وتونس، و ألمانيا، والصين ، والخلاصة أن الثورة الجزائرية وجدت رصيدا من الرجال في صفوف الكشافة كان لهم شرف الاستشهاد من أجل حرية الجزائر.",
    maxLines: 15,
    overflow: TextOverflow.ellipsis,style: TextStyle( fontSize:16,
    color: Color(0xFF1A3C40),
    fontWeight: FontWeight.w500,),
    textAlign: TextAlign.right,),))

             ],
           ),
         ),











    );

  }
}