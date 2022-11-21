import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:viewo_testing/whatsapp_Clone/screen/home_screen.dart';



void main()  {
  // WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp();
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Color(0xFF075E54),


    ),


      debugShowCheckedModeBanner: false, home: HomeScreen()));
}

// class Home extends StatefulWidget {
//   //static type
//   static List<int> selectedIndex = [];
//
//   //List
//   static List a = [
//     "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
//     "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
//     "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg",
//     "https://cdn.pixabay.com/photo/2016/07/11/15/43/pretty-woman-1509956_960_720.jpg",
//     "https://cdn.pixabay.com/photo/2016/02/13/12/26/aurora-1197753_960_720.jpg",
//     "https://cdn.pixabay.com/photo/2016/11/08/05/26/woman-1807533_960_720.jpg",
//     "https://cdn.pixabay.com/photo/2013/11/28/10/03/autumn-219972_960_720.jpg",
//     "https://cdn.pixabay.com/photo/2017/12/17/19/08/away-3024773_960_720.jpg",
//     "https://cdn.pixabay.com/photo/2016/02/13/12/26/aurora-1197753_960_720.jpg",
//     "https://cdn.pixabay.com/photo/2016/11/08/05/26/woman-1807533_960_720.jpg",
//     "https://cdn.pixabay.com/photo/2013/11/28/10/03/autumn-219972_960_720.jpg",
//     "https://cdn.pixabay.com/photo/2017/12/17/19/08/away-3024773_960_720.jpg",
//     "https://cdn.pixabay.com/photo/2016/02/13/12/26/aurora-1197753_960_720.jpg",
//     "https://cdn.pixabay.com/photo/2016/11/08/05/26/woman-1807533_960_720.jpg",
//     "https://cdn.pixabay.com/photo/2013/11/28/10/03/autumn-219972_960_720.jpg",
//     "https://cdn.pixabay.com/photo/2017/12/17/19/08/away-3024773_960_720.jpg",
//   ];
//
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   // FirebaseAnalytics analytics = FirebaseAnalytics.instance;
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   Firebase.initializeApp().whenComplete(() {
//   //     print("completed");
//   //     setState(() {});
//   //   });
//   // }
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Initialize FlutterFire
//
//       appBar: AppBar(
//           backgroundColor: Colors.black,
//           foregroundColor: Colors.white,
//           leading: Icon(
//             Icons.star,
//             color: Colors.yellow,
//             size: 35,
//           ),
//           title: Text("Your Favorite Pics Selector"),
//           actions: <Widget>[
//             IconButton(
//                 icon: const Icon(
//                   Icons.list,
//                   size: 35,
//                 ),
//                 onPressed: () {
//                   sendAnalyticsEvent2(eventName: "Test" , clickevent: "234");
//                   //How to navogate to other page
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => MySecondPage()));
//                 })
//           ]),
//       //Grid View
//       body: GridView.builder(
//         gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//             maxCrossAxisExtent: 300,
//             childAspectRatio: 3 / 2,
//             crossAxisSpacing: 2,
//             mainAxisSpacing: 2),
//         itemCount: Home.a.length,
//         itemBuilder: (context, index) {
//           //stack
//           return Stack(
//             children: [
//               Positioned(
//                 child: Image.network(
//                   Home.a[index],
//                   width: 300,
//                   height: 300,
//                   fit: BoxFit.fitHeight,
//                 ),
//               ),
//               Positioned(
//                 right: 0,
//                 top: 5,
//                 child: IconButton(
//                   onPressed: () {
//                     if (Home.selectedIndex.contains(index)) {
//                       Home.selectedIndex.remove(index);
//                     } else {
//                       Home.selectedIndex.add(index);
//                     }
//                     setState(() {});
//                   },
//                   icon: Icon(
//                     Home.selectedIndex.contains(index)
//                         ? Icons.favorite
//                         : Icons.favorite_border,
//                     size: 35.0,
//                     color: Home.selectedIndex.contains(index)
//                         ? Colors.red
//                         : Colors.white,
//                   ),
//                 ),
//               )
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
//
// class MySecondPage extends StatefulWidget {
//   const MySecondPage({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   _MySecondPageState createState() => _MySecondPageState();
// }
//
// class _MySecondPageState extends State<MySecondPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           foregroundColor: Colors.white,
//           title: Text("Your Selected Pics"),
//         ),
//         body: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//               maxCrossAxisExtent: 300,
//               childAspectRatio: 3 / 2,
//               crossAxisSpacing: 2,
//               mainAxisSpacing: 2),
//           itemCount: Home.selectedIndex.length,
//           itemBuilder: (context, index) {
//             return Stack(
//               children: [
//                 Positioned(
//                   child: Image.network(
//                     Home.a[Home.selectedIndex.elementAt(index)],
//                     width: 300,
//                     height: 300,
//                     fit: BoxFit.fitHeight,
//                   ),
//                 ),
//               ],
//             );
//           },
//         ));
//
//
//   }
// }




