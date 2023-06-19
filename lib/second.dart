import 'package:flutter/material.dart';
import 'package:shayari/data.dart';
import 'package:shayari/third.dart';

class second extends StatefulWidget {

  int index;
  second(this.index);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {

  List s=[];
  List <bool> temp1=List.filled(data.l.length,false);

  @override
  void initState() {

    if(widget.index == 0)
      {
        s=data.shayari1;
      }
    else if(widget.index == 1)
      {
        s=data.shayari2;
      }
    else if(widget.index == 2)
    {
      s=data.shayari3;
    }
    else if(widget.index == 3)
    {
      s=data.shayari4;
    }
    else if(widget.index == 4)
    {
      s=data.shayari5;
    }
    else if(widget.index == 5)
    {
      s=data.shayari6;
    }
    else if(widget.index == 6)
    {
      s=data.shayari7;
    }
    else if(widget.index == 7)
    {
      s=data.shayari8;
    }
    else if(widget.index == 8)
    {
      s=data.shayari9;
    }
    else
      {
        s=data.shayari10;
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: Text("Love Shayari"),
      ),
      
      body: ListView.builder(
        itemCount: s.length,
        itemBuilder: (context, index) {
        return Card(

          child: GestureDetector(

            onTapCancel: () {

              temp1[index]=false;
              setState(() {

              });
            },

            onTapDown: (details) {

              temp1[index]=true;
              setState(() {

              });
            },

            onTapUp: (details) {

              temp1[index]=false;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return third(s, index);
              },));
              setState(() {

              });
            },

            child:  ListTile(
              tileColor: (temp1[index])?Colors.redAccent:null,
              title: Text("${s[index]}",maxLines: 1,) ,
              trailing: (temp1[index])? Icon(Icons.navigate_next_outlined):null,
              leading: Container(
                height: 100,
                width: 100,
                child: Image.asset("pic/${data.images[widget.index]}"),
              ),
            ),
          ),
        );
      },),
      backgroundColor: Colors.grey.shade400,
    );
  }
}

