import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/todo_items.dart';
import '../model/todo.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackBlue,
      appBar: _buldAppBar(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20, 
              vertical: 15),
            child: Column(
              children: [
                searcBox(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50, bottom: 20),
                        child: const Text(
                          'ToDos',
                          style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      for ( ToDo toDoo in todoList)
                        ToDoItem(todo: toDoo,),
                    ],
                  )
                )
              ]
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                  bottom: 20,
                  right: 20,
                  left: 20,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.grey, 
                      offset: Offset(0.0,0.0),
                      blurRadius: 10.0,
                      spreadRadius: 0,
                      ),],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Add new todo here',
                      border: InputBorder.none
                    ),)
                )
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 20,
                  right: 20,
                ),
                child: ElevatedButton(
                  child: Text('+',
                  style: TextStyle(fontSize: 40, ),),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: styleGreen,
                    minimumSize: Size(60, 60),
                    elevation: 10,
                  )
                ),
              )
            ]),
          )
        ],
      ),
    );
  }

  void _handleToDoChange(){
    
  }

  Widget searcBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
       ),
       child: const TextField(
         decoration: InputDecoration(
           contentPadding: EdgeInsets.all(0),
           prefixIcon: Icon(
             Icons.search,
             color: black,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
           ),
          border: InputBorder.none,
          hintText: 'Search',
           hintStyle: TextStyle(
             color: grey,
          ),
         ),
       ),
    );
  }

  AppBar _buldAppBar() {
    return AppBar(  
      backgroundColor: appBackBlue,
      elevation: 0,
      title:  const Row(
        children: [
          Spacer(), // Add Spacer to push the icon to the right
          Icon(
            Icons.menu,
            color: black,
            size: 30,
          ),
        ],
      ),
    );
  }
}