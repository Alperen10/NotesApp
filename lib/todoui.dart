import 'package:flutter/material.dart';

class Todoui extends StatefulWidget {
  @override
  _TodouiState createState() => _TodouiState();
}



class _TodouiState extends State<Todoui> {

  void showAlertDialog(){
    showDialog(
      context: context,
      builder: (context)=>AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        title: Text("Not ekle"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>  [
            TextField(
              autofocus: true,
              style: TextStyle(fontFamily: "Raleway",fontSize: 18.0),
            ),
            Padding(
              padding: EdgeInsets.only(
                top:10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed:(){},
                  color: Colors.lightGreen,
                  child: Text("Ekle",style: TextStyle(fontSize: 18.0,fontFamily: "Raleway"),),
                  )
              ],
            ),
              )
          ],
        ),
      ),

      );
  }

  Widget mycard(String task){
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,

      ),
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: ListTile(
          title: Text("$task",style: TextStyle(fontSize: 18.0,fontFamily: "Raleway"),),
          onLongPress: (){
            print("Silinmeli");
          },
        ),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showAlertDialog,
        child: Icon(
          Icons.add,
          color:Colors.white,
        ),
        backgroundColor: Colors.lightGreen,
      ),


      appBar: AppBar(
        title: Text("Notlar",style: TextStyle(fontFamily: "Raleway",fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            mycard("Ders çalış"),
            mycard("Yatmaya git"),
            mycard("Kayıt yap\ndaha sonra kaydı düzenle"),
            mycard("Mouse satın al"),


          ],
        ),
      ),
    );
  }

}
