
import 'package:flutter/material.dart';
import 'package:todo_app/style/style.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {

  List ToDoList=[];
  String item = "";

  MyInputOnChange(content){
    setState(() {
      item=content;
    });
  }

  AddItem(){
    setState(() {
      ToDoList.add({"item":item});
    });
  }

  RemoveItem(index){
    setState(() {
      ToDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
      ),

      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Row(
              children: [
                Expanded(flex:70, child: Padding(
                  padding: const EdgeInsets.only(right: 5.0, left: 10.0),
                  child: TextFormField(onChanged: (content){MyInputOnChange (content);},decoration: AppInputDecoration("To Do"),),
                )),
                Expanded(
                  flex:20,
                  child: Padding(
                    padding: const EdgeInsets.only(right:10.0, left: 5.0),
                    child: ElevatedButton(
                        onPressed: (){AddItem();},
                        child: Text('Add'),
                      style: AppButtonStyle(),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 90,
            child: ListView.builder(
                itemCount: ToDoList.length,
                itemBuilder: (contex, index){
                  return Card(
                    child: SizeBox50(
                      Row(
                        children: [
                          Expanded(flex: 80, child: Text(ToDoList[index]['item'].toString())),
                          Expanded(flex: 20, child: TextButton(onPressed: (){RemoveItem(ToDoList[index]);}, child: Icon(Icons.delete),))
                        ],
                      )
                    ),
                  );
                }
            ),
          )
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //     onPressed: (){},
      //   child: Text('+', style: TextStyle(fontSize: 20)),
      // ),
    );
  }
}
