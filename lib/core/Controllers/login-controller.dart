// class LoginController{
//     void submitData(String name, String mobile, String password, String email,
//       String type, context) async {
//     RegisterModel myData =
//         await RegisterService().submitData(name, mobile, password, email, type);
//     if (myData.status == true) {
//       Helper()
//           .flutterToast("Registration Successful, Please login", Colors.green);
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => LoginPage()));
//     }
//   }
// }