// import 'package:e_commerce_2/widgets/custom_container_widget.dart';
// import 'package:flutter/material.dart';
//
// class CustomNavigationBar extends StatefulWidget {
//   const CustomNavigationBar({Key? key}) : super(key: key);
//
//   @override
//   _CustomNavigationBarState createState() => _CustomNavigationBarState();
// }
//
// class _CustomNavigationBarState extends State<CustomNavigationBar> {
//   int _selectedIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomContainerWidget(
//       height: 50,
//       width: MediaQuery.of(context).size.width,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           _buildIconButton(Icons.home_outlined, 0, "/home"),
//           _buildIconButton(Icons.grid_view_outlined, 1, "/grid"),
//           _buildIconButton(Icons.shopping_bag_outlined, 2, "/shopping"),
//           _buildIconButton(Icons.favorite_border, 3, "/favorite"),
//           _buildIconButton(Icons.person, 4, "/profile"),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildIconButton(IconData iconData, int index, String routeName) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _selectedIndex = index;
//         });
//         // Navigate to the selected route
//         Navigator.pushNamed(context, routeName);
//       },
//       child: Icon(
//         iconData,
//         color: _selectedIndex == index ? Colors.blue : Color(0xff7447474),
//       ),
//     );
//   }
// }
