import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shayari/data.dart';
import 'package:shayari/second.dart';

void main()
{
  runApp(MaterialApp(home: first(),
  debugShowCheckedModeBanner: false,));
}

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  @override
  void initState() {

    get();
  }
  get()
  async {
    var status = await Permission.storage.status;
    if (status.isDenied) {

      Map<Permission, PermissionStatus> statuses = await [
        Permission.location,
        Permission.storage,
      ].request();
    }
  }

  List <bool> temp=List.filled(data.l.length,false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: Text("Love Shayari"),
      ),

      body: ListView.builder(
        itemCount: data.l.length,
          itemBuilder: (context, index){
        return Card(

         child: GestureDetector(
           onTapCancel: () {
             print("Helllo");
             temp[index]=false;
             setState(() {

             });
           },

           onTapDown: (details) {
             print("Good");
             temp[index]=true;
             setState(() {

             });
           },

           onTapUp: (details) {
             print("Nice");
             temp[index]=false;
             Navigator.push(context, MaterialPageRoute(builder: (context){
               return second(index);
             }));
             setState(() {

             });
           },
           
           child: ListTile(
             tileColor: (temp[index])?Colors.pink:null,
             subtitle: Text("${data.l[index]}",style: TextStyle(fontSize: 20,color: Colors.green.shade600),),
             trailing: (temp[index])? Icon(Icons.navigate_next_outlined):null,
             leading: Container(
                 height: 100,
                 width: 100,
                 child: Image.asset("pic/${data.images[index]}")
             ),),
         ),
        );
      }),
      backgroundColor: Colors.grey.shade400,
    );
  }


}
