import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/core/services/helper.dart';
import 'package:bikroy/meta/screens/Profile/profileHelper.dart';
import 'package:flutter/material.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Helper().heroArea("Resume"),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Resume top
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1589386417686-0d34b5903d23?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fGpvYnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                                ),
                                fit: BoxFit.cover)),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text("Edit"),
                              Icon(
                                Icons.edit,
                              )
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "S.M. Saleheen",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: ConstantColors().greyPrimary),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text("Address: Panthapath",
                        style: ProfileHelper().paraGraphStyle),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Mobile: 0173364937",
                      style: ProfileHelper().paraGraphStyle,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Email: smsaleheen3@gmail.com",
                      style: ProfileHelper().paraGraphStyle,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: double.infinity,
                    color: Color(0xffe8e8e8),
                    child: Text(
                      "Personal Details",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),

                  ProfileHelper().resumeList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
