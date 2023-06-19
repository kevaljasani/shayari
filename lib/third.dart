import 'dart:math';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/data.dart';
import 'package:shayari/four.dart';

class third extends StatefulWidget {

  int index;
  List s;
  third(this.s,this.index) ;

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {

  PageController?pageController;
  int col_ind=0;
  bool t=false;

  @override
  void initState() {
    pageController=PageController(initialPage: widget.index);
  }

  @override
  Widget build(BuildContext context) {

    double screen = MediaQuery.of(context).size.height;
    double status = MediaQuery.of(context).padding.top;
    double app = kToolbarHeight;
    double t_height = screen - status - app;

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: Text("Love Shayari"),
      ),

      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [

            InkWell(
              onTap: () {
                showModalBottomSheet(isScrollControlled: true,
                  context: context,
                  builder: (context) {

                  return Container(
                    height: t_height,

                    child: GridView.builder(
                      itemCount: data.colors.length-1,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 30,
                        mainAxisSpacing: 20),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {

                              t=true;
                              col_ind=index;
                              Navigator.pop(context);
                              setState(() {

                              });
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [data.colors[index],data.colors[index+1]],)
                              ),
                            ),
                          );
                        },),
                  );
                },);
              },
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset("pic/expand.png"),
              ),
            ),

 // ---------------------------------------------------------------------------------------------------------------

            Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
             child: Text("${widget.index+1}/${widget.s.length}",style: TextStyle(fontSize: 20),),
            ),

// ---------------------------------------------------------------------------------------------------------------

              InkWell(
                onTap:() {
                  t=true;
                  int d=Random().nextInt(data.colors.length-1);
                  col_ind=d;
                  setState(() {

                  });
                },
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("pic/reload.png"),
                ),
              )
          ],),

// ---------------------------------------------------------------------------------------------------------------

          Expanded(
            child: PageView.builder(
              onPageChanged: (value) {
                widget.index=value;
                setState(() {

                });
              },
              controller: pageController,
              itemCount: widget.s.length,
              itemBuilder: (context, index) {
                return  Container(
                  alignment: Alignment.center,
                  height: 600,
                  width: double.infinity,
                 // color: Colors.pink.shade500,
                  child: Text("${widget.s[widget.index]}",style: TextStyle(fontSize: 30),),

                  decoration: BoxDecoration(
                    color: (t==false)?Colors.pink.shade500:null,
                    gradient: (t==true)?LinearGradient(colors: [data.colors[col_ind],data.colors[col_ind+1]]):null,
                  ),
                );},
            ),
          ),

// ---------------------------------------------------------------------------------------------------------------

          Expanded(child: Row(children: [
            Expanded(child: Container(
              margin: EdgeInsets.only(top: 200),
                 height: 80,
                 width: double.infinity,
                 color: Colors.green.shade700,

              child: Row(children: [
                Expanded(child: InkWell(
                  onTap: () {

                    FlutterClipboard.copy('${widget.s[widget.index]}').then(( value ) => print('copied'));
                    Fluttertoast.showToast(
                        msg: "copied!....",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                    setState(() {

                    });
                  },
                  child: Container(
                      height: 70,
                      width: 70,
                      child: Image.asset("pic/copy.png")
                  ),
                )),

// ---------------------------------------------------------------------------------------------------------------

                Expanded(child: InkWell(
                  onTap: () {
                    if(widget.index>0)
                      {
                        widget.index--;
                        setState(() {

                        });
                      }
                  },
                  child: Container(
                      height: 70,
                      width: 70,
                      child: Image.asset("pic/action_previous.png")
                  ),
                )),

// ---------------------------------------------------------------------------------------------------------------

                Expanded(child: InkWell(
                  onTap: () {

                    Navigator.push(context, MaterialPageRoute(builder:(context) {
                      return four(widget.index,widget.s);
                    },));

                  },
                  child: Container(
                      height: 70,
                      width: 70,
                      child: Image.asset("pic/pencil2.png")
                  ),
                )),

// ---------------------------------------------------------------------------------------------------------------

                Expanded(child: InkWell(
                  onTap: () {
                    if(widget.index<widget.s.length-1)
                      {
                        widget.index++;
                        setState(() {

                        });
                      }

                  },
                  child: Container(
                      height: 70,
                      width: 70,
                      child: Image.asset("pic/action_next.png")
                  ),
                )),

// ---------------------------------------------------------------------------------------------------------------

                Expanded(child: InkWell(
                  onTap: () {

                    Share.share('${widget.s[widget.index]}');
                  },
                  child: Container(
                      height: 70,
                      width: 70,
                      child: Image.asset("pic/action_share.png")
                  ),
                ))
              ],),
            )),
          ],))
        ],),
     backgroundColor: Colors.grey.shade300,
    );
  }
}
