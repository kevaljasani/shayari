import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:external_path/external_path.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/data.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

class four extends StatefulWidget {
  int index;
  List s;

  four(this.index, this.s);

  @override
  State<four> createState() => _fourState();
}

class _fourState extends State<four> {
  int col_ind1 = 0;
  bool t1 = false;
  Color b=Colors.red;
  Color t=Colors.black;
  int e=data.emoji.length;
  double size=30;
  List <bool> temp=List.filled(data.emoji.length,false);
  String emoji="😣 😖";

  List font=["f1","f2","f3","f4","f5","f6"];
  String cur_font="f2";


  WidgetsToImageController controller = WidgetsToImageController();
  Uint8List? bytes;

  @override
  Widget build(BuildContext context) {
    double screen1 = MediaQuery.of(context).size.height;
    double status1 = MediaQuery.of(context).padding.top;
    double app1 = kToolbarHeight;
    double t_height1 = screen1 - status1 - app1;

    return Scaffold(
        appBar: AppBar(
          //centerTitle: true,
          backgroundColor: Colors.green.shade600,
          title: Text("फोटो पे शायरी लिखे"),
        ),

        body: Column(children: [
            Expanded(child: Row(children: [
                Expanded(child: WidgetsToImage(
                controller: controller,
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 10, left: 10, top: 40, bottom: 30),
                    height: double.infinity,
                    width: double.infinity,
                    // color: ()?:Colors.red,
                    child: Text("${emoji}""\n${widget.s[widget.index]}""\n${emoji}",
                      style: TextStyle(fontSize: size,color: t,fontFamily: cur_font),),

                    decoration: BoxDecoration(
                      color: (t1 == false) ? b : null,
                      gradient: (t1 == true) ? LinearGradient(colors: [data.colors[col_ind1],
                        data.colors[col_ind1 + 1]]) : null,
                    ),
                  ),
                ))
              ],
            )),

// ---------------------------------------------------------------------------------------------------------------

            Row(children: [
                Expanded(child: Container(
                  margin: EdgeInsets.only(top: 30, bottom: 30),
                  height: 200,
                  width: double.infinity,
                  color: Colors.brown.shade700,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                t1 = true;
                                int s = Random().nextInt(data.colors.length - 1);
                                col_ind1 = s;
                                setState(() {});
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 90),
                                height: 50,
                                color: Colors.white,
                                child: Image.asset("pic/reload.png"),
                              ),
                            ),
                          ),

// ---------------------------------------------------------------------------------------------------------------

                          Expanded(child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {

                                  return Container(
                                    height: t_height1,
                                    child: GridView.builder(
                                      itemCount: data.colors.length - 1,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              crossAxisSpacing: 30,
                                              mainAxisSpacing: 20),
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            t1 = true;
                                            col_ind1 = index;
                                            Navigator.pop(context);
                                            setState(() {});
                                          },
                                          child: Container(
                                            height: 100,
                                            width: 100,
                                            //color: Colors.green,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(colors: [
                                                data.colors[index],
                                                data.colors[index + 1]
                                              ]),
                                            ),
                                          ),);
                                      },),
                                  );
                                },);
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 90),
                              height: 50,
                              color: Colors.white,
                              child: Image.asset("pic/expand.png"),
                            ),
                          ))
                        ]),
                      ),

// ---------------------------------------------------------------------------------------------------------------

                      Expanded(child: Row(children: [
                          Expanded(child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {

                                  return Container(
                                    height: 300,
                                    child: GridView.builder(
                                      itemCount: data.colors.length,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 6,
                                              crossAxisSpacing: 10,
                                              mainAxisSpacing: 10),
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {

                                            t1=false;
                                            b= data.colors[index];
                                            Navigator.pop(context);
                                                setState(() {

                                                });
                                          },
                                          child: Container(
                                            height: 10,
                                            width: 10,
                                            color: data.colors[index],
                                          ),
                                        );
                                      },),
                                  );
                                },
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(10),
                              height: 70,
                              width: 100,
                              color: Colors.red.shade600,
                              child: Text("Background", style: TextStyle(fontSize: 20, color: Colors.white),),
                            ),
                          )),

// ---------------------------------------------------------------------------------------------------------------

                          Expanded(child:InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                return Container(
                                  height: 300,

                                  child: GridView.builder(
                                    itemCount: data.colors.length,
                                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 6,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10),
                                    itemBuilder: (context, index) {

                                        return InkWell(
                                          onTap: () {

                                            t1=false;
                                            t=data.colors[index];
                                            Navigator.pop(context);
                                            setState(() {

                                            });
                                          },
                                          child: Container(
                                            height: 10,
                                            width: 10,
                                            color: data.colors[index],
                                          ),
                                        );
                                      },),
                                );
                              },);
                            },
                            child:  Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(10),
                              height: 70,
                              width: 100,
                              color: Colors.red.shade600,
                              child: Text("Text Color", style: TextStyle(fontSize: 20, color: Colors.white),),
                            ),
                          )),

// ---------------------------------------------------------------------------------------------------------------

                          Expanded(child: InkWell(
                            onTap: () async {
                              final bytes = await controller.capture();
                              var path = await ExternalPath.getExternalStoragePublicDirectory(
                                  ExternalPath.DIRECTORY_DOWNLOADS)+"/shayari";
                              print(path);

                              Directory dir=Directory(path);

                              if(! await dir.exists())
                                {
                                  dir.create();
                                }

                              int r=Random().nextInt(100);
                              String img_name="${r}.jpg";
                              File f= File("${dir.path}/${img_name}");

                              await f.writeAsBytes(bytes!);

                              Share.shareXFiles([XFile('${f.path}')], text: 'Great shayari');
                              setState(() {

                              });

                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(10),
                              height: 70,
                              width: 100,
                              color: Colors.red.shade600,
                              child: Text("Share", style: TextStyle(fontSize: 20, color: Colors.white),),
                            ),
                          )),
                        ],
                      )),

// ---------------------------------------------------------------------------------------------------------------

                      Expanded(child: Row(children: [
                          Expanded(child: InkWell(
                            onTap: () {
                              
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {

                                return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: font.length,
                                  itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {

                                      cur_font=font[index];
                                      Navigator.pop(context);
                                      setState(() {

                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(20),
                                      height: 30,
                                      width: 40,
                                      color: Colors.pink,
                                      child: Text("शायरी",),
                                    ),
                                  );
                                },);
                              },);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(10),
                              height: 70,
                              width: 100,
                              color: Colors.red.shade600,
                              child: Text("Font", style: TextStyle(fontSize: 20, color: Colors.white),),
                            ),
                          )),

// ---------------------------------------------------------------------------------------------------------------

                          Expanded(child: InkWell(
                            onTap: () {
                              showModalBottomSheet(context: context, builder: (context) {
                                return Container(
                                  height: 300,

                                  child: ListView.builder(
                                    itemCount: data.emoji.length,
                                    itemBuilder: (context, index) {
                                      return Card(

                                          child:  InkWell(
                                            onTap: () {
                                                 emoji=data.emoji[index];
                                                 Navigator.pop(context);
                                                 setState(() {

                                                 });
                                            },

                                            child: ListTile(
                                                title: Text("${data.emoji[index]}")
                                            ),
                                          )
                                        );
                                    },),
                                );
                              },);
                            },

                                child: Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(10),
                                  height: 70,
                                  width: 100,
                                  color: Colors.red.shade600,
                                  child: Text("Emoji", style: TextStyle(fontSize: 20, color: Colors.white),),
                                ),
                          )),

// ---------------------------------------------------------------------------------------------------------------

                          Expanded(child: InkWell(
                            onTap: () {

                              showModalBottomSheet(context: context, builder: (context) {
                                return Container(
                                  height: 200,

                                  child: StatefulBuilder(builder: (context, setState1) {
                                    return Slider(
                                      max: 50,
                                      min: 10,
                                      value: size, onChanged: (value) {
                                      size=value;

                                      setState((){

                                      });
                                      setState1(() {

                                      });
                                    },);
                                  },),
                                );
                              },);
                            },

                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(10),
                              height: 70,
                              width: 100,
                              color: Colors.red.shade600,
                              child: Text("Text Size", style: TextStyle(fontSize: 20, color: Colors.white),),
                            ),
                          )),
                        ],
                      ))
                    ],
                  ),
                )),
              ],
            )
          ],
        ));
  }
}
