// import 'package:bikroy/app/constants/ConstantsStyle.dart';
// import 'package:bikroy/app/widgets/actionBar.dart';
// import 'package:flutter/material.dart';

// class PostDetails extends StatefulWidget {
//   const PostDetails({Key? key}) : super(key: key);

//   @override
//   _PostDetailsState createState() => _PostDetailsState();
// }

// class _PostDetailsState extends State<PostDetails>
//     with TickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final PageController controller = PageController(initialPage: 0);
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//                 child: Stack(
//               children: [
//                 Container(
//                   height: 280,
//                   width: double.infinity,
//                   child: Image.network(
//                     "https://images.unsplash.com/photo-1581235720704-06d3acfcb36f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 25,
//                   left: 25,
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Container(
//                         height: 100,
//                         width: 100,
//                         color: Colors.white,
//                         child: Image.network(
//                           "https://images.unsplash.com/photo-1545289414-1c3cb1c06238?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       SizedBox(
//                         width: 13,
//                       ),
//                       Text(
//                         "Sal Sa Beel Cars",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 22,
//                             fontWeight: FontWeight.bold),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             )),
//             Padding(
//               padding: const EdgeInsets.all(25.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TabBar(
//                     controller: _tabController,
//                     tabs: const <Widget>[
//                       Tab(
//                         icon: Icon(
//                           Icons.cloud_outlined,
//                           color: Colors.black,
//                         ),
//                       ),
//                       Tab(
//                         icon: Icon(
//                           Icons.beach_access_sharp,
//                           color: Colors.black,
//                         ),
//                       ),
//                       Tab(
//                         icon: Icon(
//                           Icons.brightness_5_sharp,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(
//                     height: 300,
//                     child: TabBarView(
//                       controller: _tabController,
//                       children: <Widget>[
//                         Column(
//                           children: [
//                             Text(
//                                 "We believe business is not just for profit but for piety.",
//                                 style: ConstantsStyle().regularHeading),
//                             SizedBox(height: 13),
//                             Text(
//                               "Fully function and running device. No problem at all. Price is negotiable. No scratch or dent. Super amoled display.",
//                               style: ConstantsStyle().paraGraphStyle,
//                             )
//                           ],
//                         ),
//                         Center(
//                           child: Text("It's rainy here"),
//                         ),
//                         Center(
//                           child: Text("It's sunny here"),
//                         ),
//                       ],
//                     ),
//                   ),

//                   // Expanded(
//                   //     child: SizedBox(height: 200, child: PostDetailsSwipe())),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
