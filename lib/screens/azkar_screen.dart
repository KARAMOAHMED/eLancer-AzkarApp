import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  _AzkarScreenState createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  int _counter = 0;
  String _content = 'الحمد لله';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ++_counter;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('مسبحة الاذكار',style: TextStyle(
          fontFamily: 'Montserrat',
          color: Colors.white,

        ),),
            centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value){
              if( _content != value ){
                setState(() {
                  _content = value;
                  _counter = 0;
                });
              }

            },
              itemBuilder: (context){
            return [
              const PopupMenuItem(child:
                  Text( 'سبحان الله'),
                value: 'سبحان الله',
              ),
              const PopupMenuItem(child:
              Text( 'الحمد لله'),
                value: 'الحمد لله',
              ),
              const PopupMenuItem(child:
              Text( 'لا الاه الا الله'),
                value: 'لا الاه الا الله',
              ),
              const PopupMenuItem(child:
              Text( 'الله اكبر'),
                value: 'الله اكبر',
              ),
              const PopupMenuItem(child:
              Text( 'استغفر الله '),
                value: 'استغفر الله',
              ),
            ];
          }),
          IconButton(onPressed : () => Navigator.pushNamed(context, '/about_screen',
          arguments: {
            'message' : 'مشروع ايلانسر كرم عمر احمد '
          }),
            icon: const Icon(Icons.info),),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/25.jpg'),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/12637-3.jpg'),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              height: 60,
              margin:  const EdgeInsets.only(top: 20,bottom: 20),
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.deepOrangeAccent,
                    offset: Offset(0,-5),
                    blurRadius: 6,
                  ),
                  BoxShadow(
                    color: Colors.yellow,
                    offset: Offset(0,5),
                    blurRadius: 6,
                  ),
                  BoxShadow(
                    color: Colors.redAccent,
                    offset: Offset(-5,0),
                    blurRadius: 6,
                  ),
                ]
              ),
              child: Row(
                children:  [
                   Expanded(
                    child: Text(
                   _content.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                    fontFamily: 'Montserat',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 28,
                ),
                ),
                  ),
                DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.teal,),
                child: SizedBox(
                  width: 50,
                  height: double.infinity,
                  child: Center(
                  child: Text(_counter.toString(),
                    style: const TextStyle(
                      fontFamily: 'Montserat',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,

                  ),
                ),
                ),
                  ),
                ),
                ]

              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      ++_counter;

                    });

                  },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade500,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text('تسبيح',
                    style: TextStyle(
                      fontFamily: 'Montserat',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,),

                  ),
                ),
                ),
                Expanded(
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    _counter = 0;
                  });
                },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange.shade500,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text('اعادة',style: TextStyle(
                  fontFamily: 'Montserat',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,),
                ),
    ),
                ),

              ],
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
