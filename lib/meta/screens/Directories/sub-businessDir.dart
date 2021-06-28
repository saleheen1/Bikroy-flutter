import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/widgets/appBar.dart';
import 'package:bikroy/core/Models/subBusinessDir-Model.dart';
import 'package:bikroy/core/Services/subBusinessDir-service.dart';
import 'package:bikroy/core/helper.dart';
import 'package:flutter/material.dart';

class SubBusinessDir extends StatelessWidget {
  const SubBusinessDir({Key? key, this.subBusinessDir_name = "No data"})
      : super(key: key);
  final String subBusinessDir_name;

  @override
  Widget build(BuildContext context) {
    var categoryId = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppbarCustom(
          title: subBusinessDir_name,
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Helper()
            //     .heroArea(subCategoryName, true, Colors.white, context),
            FutureBuilder<SubBusinessDirModel>(
                future: SubBusinessDirService().fetchCategory(categoryId),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    print(snapshot.data);
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 6),
                      child: ListView.builder(
                        padding: EdgeInsets.all(0),
                        itemCount: snapshot.data!.data.data.length,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          // final item = items[index];

                          return Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             SubCategoryPage()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: ConstantColors()
                                                .dividerColor))),
                                padding: EdgeInsets.symmetric(vertical: 14),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Expanded(
                                      child: Text(
                                        snapshot.data!.data.data[index]
                                            .subCategoryName,
                                        overflow: TextOverflow.visible,
                                        style: TextStyle(
                                            fontSize: 15,
                                            height: 1.7,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                ConstantColors().greyPrimary),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          size: 18,
                                          color: ConstantColors().greyPrimary,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  } else {
                    return Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Center(child: Helper().showLoading()));
                  }
                }),
          ],
        ),
      ),
    );
  }
}
