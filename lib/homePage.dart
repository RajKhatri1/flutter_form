import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String data1 = "Male";
  String data2 = "India";
  String data3 = "MARRIED";
  bool lan1 = true;
  bool lan2 = false;
  bool lan3 = false;
  String selected = "Web";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "FORM",
            style:
                TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Icon(Icons.menu),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: "Enter Your Full Name"),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Gender                            : ",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(width: 20,),
                  DropdownButton(
                    items: [
                      DropdownMenuItem(
                        child: Text("Male"),
                        value: "Male",
                      ),
                      DropdownMenuItem(
                        child: Text("Female"),
                        value: "Female",
                      ),
                      DropdownMenuItem(
                        child: Text("Other"),
                        value: "Other",
                      ),
                    ],
                    onChanged: (value) {
                      setState(
                        () {
                          data1 = value!;
                        },
                      );
                    },
                    value: data1,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text(
                    "marital status                : ",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(width: 20,),
                  DropdownButton(
                    items: [
                      DropdownMenuItem(
                        child: Text("MARRIED"),
                        value: "MARRIED",
                      ),
                      DropdownMenuItem(
                        child: Text("UNMARRIED"),
                        value: "UNMARRIED",
                      ),
                    ],
                    onChanged: (value) {
                      setState(
                        () {
                          data3 = value!;
                        },
                      );
                    },
                    value: data3,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Country                           : ",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(width: 20,),
                  DropdownButton(
                    items: [
                      DropdownMenuItem(
                        child: Text("India"),
                        value: "India",
                      ),
                      DropdownMenuItem(
                        child: Text("America"),
                        value: "America",
                      ),
                      DropdownMenuItem(
                        child: Text("Austrelia"),
                        value: "Austrelia",
                      ),
                      DropdownMenuItem(
                        child: Text("Russia"),
                        value: "Russia",
                      ),
                      DropdownMenuItem(
                        child: Text("China"),
                        value: "China",
                      ),
                      DropdownMenuItem(
                        child: Text("Pakistan"),
                        value: "Pakistan",
                      ),
                      DropdownMenuItem(
                        child: Text("Caneda"),
                        value: "Caneda",
                      ),
                    ],
                    onChanged: (value) {
                      setState(
                            () {
                          data2 = value!;
                        },
                      );
                    },
                    value: data2,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text(
                    "Language you know     :",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: lan1,
                        onChanged: (value) {
                          setState(() {
                            lan1 = value!;
                          });
                        },
                      ),
                      Text(
                        "English",
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: lan2,
                        onChanged: (value) {
                          setState(() {
                            lan2 = value!;
                          });
                        },
                      ),
                      Text(
                        "Gujarati",
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: lan3,
                        onChanged: (value) {
                          setState(() {
                            lan3 = value!;
                          });
                        },
                      ),
                      Text(
                        "Hindi",
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Technology                    :",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Row(
                    children: [
                      Radio(
                        value: "Web",
                        groupValue: selected,
                        onChanged: (value) {
                          setState(() {
                            selected = value!;
                          });
                        },
                      ),
                      Text("Flutter",style: TextStyle(color: Colors.black,fontSize: 17),),
                    ],
                  ),
                  SizedBox(width: 3,),
                  Row(
                    children: [
                      Radio(
                        value:"flutter",
                        groupValue: selected,
                        onChanged: (value) {
                          setState(() {
                            selected = value!;
                          });
                        },
                      ),
                      Text("Web",style: TextStyle(color: Colors.black,fontSize: 17),),
                    ],
                  ),
                  SizedBox(width: 3,),
                  Row(
                    children: [
                      Radio(
                        value:"animation",
                        groupValue: selected,
                        onChanged: (value) {
                          setState(() {
                            selected = value!;
                          });
                        },
                      ),
                      Text("Animation",style: TextStyle(color: Colors.black,fontSize: 17),),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
