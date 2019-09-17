import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  var num1=0,num2=0,ans=0;
  final TextEditingController t1=new TextEditingController(text:"0");
  final TextEditingController t2=new TextEditingController(text:"0");


  void add(){
    setState((){
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      ans=(num1+num2) ;
    });
  }

  void sub(){
    setState((){
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      ans=num1-num2 ;
    });
  }
  void multiply(){
    setState((){
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      ans=num1*num2 ;
    });
  }
  void divide(){
    setState((){
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      ans=(num1~/num2) ;
    });
  }

  void clear()
  {
    setState(() {
      t1.text="0";
      t2.text="0";
      ans=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text('Calculator'),
      ),
      body: new Container(
      padding: const EdgeInsets.all(40.0),
        child: new Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      new Text('Ans : $ans',
      style: new TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.black87
      ),
      ),
      new TextField(
        keyboardType: TextInputType.number,
        decoration: new InputDecoration(
        hintText: "Enter Number 1:"
          ),
        controller: t1,
        ),
      new TextField(
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(
      hintText: "Enter Number 2:"
      ),
        controller: t2,
    ),
      new Padding(padding: const EdgeInsets.only(top: 20.0),),
      new Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new MaterialButton(
                child:  new Text('+',
                  style: new TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                color: Colors.tealAccent,
                onPressed: (){add();}
              ),
            new MaterialButton(
                child:  new Text('-',
                  style: new TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                color: Colors.tealAccent,
                onPressed: (){sub();}
            ),

          ],


      ),

      new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new MaterialButton(
              child:  new Text('x',
                  style: new TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
              color: Colors.tealAccent,
              onPressed: (){multiply();}
          ),
          new MaterialButton(
              child:  new Text('/',
                style: new TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
              color: Colors.tealAccent,
              onPressed: (){divide();}
          ),

        ],


      ),

      new Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
      new MaterialButton(
      child: new Text("Clear"),
          color: Colors.tealAccent,
          onPressed: (){clear();}
        ),
        ],
      ),
    ],
    ),
    )
    );
  }
}
