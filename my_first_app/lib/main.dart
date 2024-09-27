import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basics',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   textTheme: TextTheme(
      //     headlineLarge: TextStyle(fontSize: 18.0),
      //     headlineSmall: TextStyle(fontSize: 14.0),
      //   ),
      // ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // var names = ['Aqeel','Ali','Ahmed','Abdullah','Ahsan','Faran','Rehman','Rizwan','Amna','Arooba','Aqsa'];
    // var emailText = TextEditingController();
    // var passText = TextEditingController();
    // var time = DateTime.now();

    // Various commented widgets here...
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Flutter Container"),
          backgroundColor: Colors.blue,
        ),
        body: Container(child:Text("Aqeel"))



      //---------------- Date and Time Picker -------------------
      // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text(
        //         "Select Date",
        //         style: TextStyle(fontSize: 28),
        //       ),
        //       ElevatedButton(
        //           onPressed: () async {
        //             DateTime? datePick = await showDatePicker(
        //                 context: context,
        //                 firstDate: DateTime(2021),
        //                 lastDate: DateTime(2024));
        //
        //             if (datePick != null) {
        //               print(
        //                   "Selected Date ${datePick.day}- ${datePick.month} -${datePick.year} ");
        //             }
        //           },
        //           child: Text("Show")),
        //       ElevatedButton(
        //         onPressed: () async {
        //           TimeOfDay? dateTime = await showTimePicker(context: context, initialTime: TimeOfDay.now(), initialEntryMode: TimePickerEntryMode.input);
        //           if (dateTime != null) {
        //             print(
        //                 "Selected Time ${dateTime.hour}- ${dateTime.minute} ${dateTime.period} ");
        //           }
        //         },
        //         child: Text("Select Time"),
        //       )
        //     ],
        //   ),
        // )

        //---------------- Get Current Time and Date -------------------
        // Center(
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text("Current Time ${time.year}"),
        //
        //       ],
        //     ),
        //   ),
        // )

        //---------------- Taking Input from User-------------------
        // Center(
        //     child: Container(
        //         width: 300,
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             TextField(
        //               controller: emailText ,
        //               decoration: InputDecoration(
        //                 hintText: 'Enter Email',
        //                   focusedBorder: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(12),
        //                       borderSide:
        //                           BorderSide(color: Colors.orange, width: 2)),
        //                   enabledBorder: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(12),
        //                       borderSide:
        //                           BorderSide(color: Colors.blue, width: 2)),
        //                   // suffixText: "UserName Exist",
        //                   suffixIcon: IconButton(
        //                       onPressed: () {},
        //                       icon: Icon(
        //                         Icons.remove_red_eye,
        //                         color: Colors.orange,
        //                       )),
        //                   prefixIcon: Icon(Icons.email,color: Colors.orange,)),
        //             ),
        //             Container(
        //               height: 10,
        //             ),
        //             TextField(
        //               controller: passText,
        //               obscureText: true,
        //               // obscuringCharacter: '-',
        //               decoration: InputDecoration(
        //                 hintText: 'Enter Passsword',
        //                   border: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(12),
        //                       borderSide:
        //                       BorderSide(
        //                           color: Colors.orange
        //                       )
        //                   )
        //               ),
        //             ),
        //
        //             ElevatedButton(onPressed: (){
        //               String name  = emailText.text.toString();
        //               String pass = passText.text.toString();
        //               print("Email $name and Password $pass" );
        //             }, child: Text("Login"))
        //
        //           ],
        //         )))

        //---------------- Card -------------------
        // Center(
        //   child: Card(
        //     elevation: 20,
        //     child: Padding(
        //       padding: const EdgeInsets.all(8),
        //       child: Text("I am Aqeel",style:TextStyle(fontSize: 25) ,),
        //     ),
        //   ),
        // )

        //---------------- Manage Themes --------------------
        // Column(
        //   children: [
        //     Text("Aqeel",style: Theme.of(context).textTheme.headlineLarge,),
        //     Text("Aqeel",style: Theme.of(context).textTheme.headlineSmall,)
        //   ],
        // )

        //---------------- CircleAvatar --------------------
        // Center(
        //   child: Container(
        //     // height: 100,
        //     // width: 100,
        //     child: CircleAvatar(
        //       // backgroundImage: AssetImage('assets/images/one.jpg'),
        //       child: Text("Aqeel" ,style: TextStyle(fontSize: 21,color: Colors.pink),),
        //       // backgroundColor: Colors.transparent,
        //       backgroundColor: Colors.orange,
        //
        //
        //       radius:  100,
        //     ),
        //   ),
        // )

        //---------------- List Tile --------------------
        // ListView.separated(
        //   itemBuilder: (context,index){
        //     return ListTile(
        //       leading : Text('$index'),
        //       title: Text(names[index]),
        //       subtitle:Text(("Number")),
        //       trailing:Icon(Icons.add) ,
        //     );
        //   },
        //   itemCount: names.length,
        //   // scrollDirection: Axis.horizontal,
        //   separatorBuilder: (context,index){
        //     return const Divider(height: 10,thickness: 1,);
        //   },
        // )

        //---------------- Margin And Padding ---------------------
        // Container(
        //   color: Colors.red,
        //     margin: EdgeInsets.all(8.0),
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text("I am Aqeel",style: TextStyle(fontSize: 25),),
        //     )
        // )

        //---------------- Padding ---------------------
        // Padding(
        //   // padding: const EdgeInsets.all(8.0),
        //   padding: const EdgeInsets.only(top: 11,left: 45),
        //   child: Text("I am Aqeel",style: TextStyle(fontSize: 25),),
        // )

        // ---------------- Expand Widget ---------------------
        // Row(
        //   // mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Expanded(
        //       flex : 2,
        //       child: Container(
        //         width: 50,
        //         height: 100,
        //         color: Colors.amberAccent,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         width: 50,
        //         height: 100,
        //         color: Colors.green,
        //       ),
        //     ),
        //     Expanded(
        //       flex: 4,
        //       child: Container(
        //         width: 50,
        //         height: 100,
        //         color: Colors.pink,
        //       ),
        //     ),
        //     Expanded(
        //       child:
        //       Container(
        //         width: 50,
        //         height: 100,
        //         color: Colors.red,
        //       ),
        //     ),
        //   ],
        // )

        //---------------- Container Decoration ---------------------
        // Container(
        //   width: double.infinity,
        //   height: double.infinity,
        //   color: Colors.blue.shade50,
        //   child : Center(
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     decoration: BoxDecoration(
        //     color: Colors.blueGrey,
        //     // borderRadius: BorderRadius.circular(11),
        //     // borderRadius: BorderRadius.only(topLeft: Radius.circular(21),bottomRight: Radius.circular(21))
        //     border: Border.all(
        //       width: 4,
        //       color: Colors.black
        //     ),
        //     boxShadow: [
        //       BoxShadow(
        //         // color: Colors.grey.withOpacity(0.5),
        //         blurRadius: 11,
        //         spreadRadius: 8,
        //       )
        //     ],
        //     shape: BoxShape.circle

        //     ),
        //   ),
        //   )
        // )

        //---------------- List View Sepearted ---------------------
        // ListView.separated(
        //   itemBuilder: (context,index){
        //     return Text(names[index],style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w600),) ;
        //   },
        //   itemCount: names.length,
        //   // scrollDirection: Axis.horizontal,
        //   separatorBuilder: (context,index){
        //     return const Divider(height: 16,thickness: 10,);
        //   },
        // )

        //---------------- List View Builder ---------------------
        // ListView.builder(
        //   itemBuilder: (context,index){
        //     return Text(names[index],style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w600),) ;
        //   },
        //   itemCount: names.length,
        //   itemExtent: 100,
        //   scrollDirection: Axis.horizontal,
        // )

        //---------------- List View ---------------------
        // ListView(
        //   scrollDirection: Axis.horizontal,
        //   reverse: true,
        //   children: const [
        //     Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Text(
        //         "One",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Text(
        //         "Two",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Text(
        //         "Three",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Text(
        //         "Four",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Text(
        //         "Five",
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        //       ),
        //     ),
        //   ],
        // )

        //---------------- Scroll View ---------------------
        // SingleChildScrollView(
        //     child: Column(
        //   children: [
        //     SingleChildScrollView(
        //       scrollDirection: Axis.horizontal,
        //     child :Row(
        //       children: [
        //         Container(
        //           margin: const EdgeInsets.only(right: 11),
        //           height: 200,
        //           width: 200,
        //           color: Colors.greenAccent,
        //         ),
        //         Container(
        //           margin: const EdgeInsets.only(right: 11),
        //           height: 200,
        //           width: 200,
        //           color: Colors.blue,
        //         ),
        //         Container(
        //           margin: const EdgeInsets.only(right: 11),
        //           height: 200,
        //           width: 200,
        //           color: Colors.orange,
        //         ),
        //         Container(
        //           margin: const EdgeInsets.only(right: 11),
        //           height: 200,
        //           width: 200,
        //           color: Colors.red,
        //         ),
        //         Container(
        //           margin: const EdgeInsets.only(right: 11),
        //           height: 200,
        //           width: 200,
        //           color: Colors.greenAccent,
        //         ),
        //         Container(
        //           margin: const EdgeInsets.only(right: 11),
        //           height: 200,
        //           width: 200,
        //           color: Colors.blue,
        //         ),
        //         Container(
        //           margin: const EdgeInsets.only(right: 11),
        //           height: 200,
        //           width: 200,
        //           color: Colors.red,
        //         ),
        //         Container(
        //           margin: const EdgeInsets.only(right: 11),
        //           height: 200,
        //           width: 200,
        //           color: Colors.greenAccent,
        //         ),
        //         Container(
        //           margin: const EdgeInsets.only(right: 11),
        //           height: 200,
        //           width: 200,
        //           color: Colors.blue,
        //         ),
        //       ],
        //     ),),
        //     Container(
        //       margin: const EdgeInsets.only(bottom: 11),
        //       height: 200,
        //       // width: 200,
        //       color: Colors.greenAccent,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.only(bottom: 11),
        //       height: 200,
        //       // width: 200,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.only(bottom: 11),
        //       height: 200,
        //       // width: 200,
        //       color: Colors.orange,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.only(bottom: 11),
        //       height: 200,
        //       // width: 200,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.only(bottom: 11),
        //       height: 200,
        //       // width: 200,
        //       color: Colors.greenAccent,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.only(bottom: 11),
        //       height: 200,
        //       // width: 200,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.only(bottom: 11),
        //       height: 200,
        //       // width: 200,
        //       color: Colors.orange,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.only(bottom: 11),
        //       height: 200,
        //       // width: 200,
        //       color: Colors.red,
        //     )
        //   ],
        // ))

        //---------------- Ink Well ---------------------
        // Center(
        //   child: InkWell(
        //     onTap: () {
        //       print("Tap");
        //     },
        //     onLongPress: (){
        //       print("Long Press");
        //     },
        //     onDoubleTap: (){
        //       print("Double Tap");
        //     },
        //     child: Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.amber,
        //     ),
        //   ),
        // )

        //---------------- Column ---------------------
        //  Container(
        //   width: 200,
        //   height: 300,
        //   child:const Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //   children: [
        //     Text('A',style: TextStyle(fontSize: 25),),
        //     Text('B',style: TextStyle(fontSize: 25),),
        //     Text('C',style: TextStyle(fontSize: 25),),
        //     Text('D',style: TextStyle(fontSize: 25),),
        //     Text('E',style: TextStyle(fontSize: 25),),
        //   ],
        // ),
        // )

        //---------------- Row ---------------------
        // Container(
        //   // width: 200,
        //   height: 300,
        //   child:const Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Text('A',style: TextStyle(fontSize: 20),),
        //     Text('B',style: TextStyle(fontSize: 20),),
        //     Text('C',style: TextStyle(fontSize: 20),),
        //     Text('D',style: TextStyle(fontSize: 20),),
        //     Text('E',style: TextStyle(fontSize: 20),),
        //   ],
        // ),
        // )

        //const Column(
        //   children: [
        //     Text('A',style: TextStyle(fontSize: 30),),
        //     Text('B',style: TextStyle(fontSize: 30),),
        //     Text('C',style: TextStyle(fontSize: 30),),
        //     Text('D',style: TextStyle(fontSize: 30),),
        //     Text('E',style: TextStyle(fontSize: 30),),
        //   ],
        // ),

        //---------------- Image by Assets ---------------------
        // Center(
        //     child: Container(
        //   child: Image.asset('assets/images/Two.jpg'),
        // ))

        //---------------- Buttons ---------------------
        //  OutlinedButton(
        //   child: const Text("OutLine Button"),
        //   onPressed: (){
        //     print("Press Button");
        //   },
        //   onLongPress: () => print("Long Press Button"),
        // )

        // ElevatedButton(
        //   child: const Text("Elevated Button"),
        //   onPressed: (){
        //     print("Button Clicked ");
        //   },
        //   onLongPress: (){
        //     print("Button Long Pressed ");
        //   },
        // )

        // TextButton(
        //   child: const Text("Click On Me"),
        //   onPressed: (){
        //     print("Button Clicked ");
        //   },
        //   onLongPress: (){
        //     print("Button Long Pressed ");
        //   },
        // )

//---------------- Text Fields ---------------------
        // // Center( child:  Container(
        //   height: 100,
        //   width: 200,
        //   color: Colors.cyan,
        //   child:const Center(child: Text("Hello I AM Aqeel", style: TextStyle(fontSize: 20, color: Colors.brown,
        //   fontWeight: FontWeight.bold,
        //   backgroundColor: Colors.deepOrangeAccent,),)),
        // ),
        // )
        );
  }
}
