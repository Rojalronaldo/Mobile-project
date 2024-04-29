// import 'package:mobile/common/my_snackbar.dart';
// import 'package:mobile/screen/output_screen.dart';
// import 'package:flutter/material.dart';
 
// class ListTileCommon extends StatelessWidget {
//   final int index;
//   const ListTileCommon({
//     required this.index,
//    super.key, required String imageName,});
 
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: CircleAvatar(
//         backgroundImage:
//          AssetImage
//          ('assets/images/$imageName.jpg')
//       ),
      
      
//       title: Text('Rojal Prajapati $index'),
//       subtitle: Text('Bhaktapur , Nepal'),
//       trailing: Icon(Icons.delete),
//       onTap: () {
//         // showMySnackBar(message: "Clicked Name ${index + 1}", context: context);
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => OutputScreen(fullName: "Name $index")));
//       },
//     );
//   }
// }