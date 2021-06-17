import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class SingleAd extends StatelessWidget {
  const SingleAd(
      {Key? key,
      required this.description,
      required this.title,
      required this.areaName,
      required this.price,
      required this.postedBy})
      : super(key: key);

  final String description;
  final String title;
  final String areaName;
  final int price;
  final String postedBy;

  @override
  Widget build(BuildContext context) {
    // var htmlDesc = r"""$description""";
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // slider
            Container(
              height: 280,
              child: PageView(
                children: [
                  for (int i = 0; i < 3; i++)
                    Image.network(
                      "https://images.unsplash.com/photo-1581235720704-06d3acfcb36f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
                      fit: BoxFit.cover,
                    )
                ],
              ),
            ),

            //descriptions
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 25,
                        color: ConstantColors().headingColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  //price
                  Text(
                    "$price Tk",
                    style: TextStyle(
                        fontSize: 22,
                        color: ConstantColors().primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: ConstantColors().greyPrimary,
                            size: 20,
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            "3 hours ago",
                            style: ConstantsStyle().paraGraphStyle,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: ConstantColors().greyPrimary,
                            size: 21,
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            areaName,
                            style: ConstantsStyle().paraGraphStyle,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  //userName
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.perm_identity_sharp,
                            color: ConstantColors().greyPrimary,
                            size: 20,
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            postedBy,
                            style: ConstantsStyle().paraGraphStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    height: 25,
                    thickness: .7,
                  ),
                  //product conditons and desc
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 18, 0, 8),
                      child: ListView.builder(
                        padding: EdgeInsets.all(0),
                        itemCount: 7,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          // final item = items[index];

                          return Container(
                            margin: EdgeInsets.only(bottom: 16),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Condition:",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: ConstantColors().greyPrimary),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Used",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: ConstantColors().greyPrimary),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      )),
                  Text("Description", style: ConstantsStyle().regularHeading),
                  SizedBox(height: 10),
                  Html(
                    data: """</div>
                      $description
                    </div> """,
                    style: {
                      "table": Style(
                        backgroundColor: Color.fromARGB(0x50, 0xee, 0xee, 0xee),
                      ),
                      "tr": Style(
                        border: Border(bottom: BorderSide(color: Colors.grey)),
                      ),
                      "th": Style(
                        padding: EdgeInsets.all(6),
                        backgroundColor: Colors.grey,
                      ),
                      "td": Style(
                        padding: EdgeInsets.all(6),
                        alignment: Alignment.topLeft,
                      ),
                      'h5': Style(
                          maxLines: 2, textOverflow: TextOverflow.ellipsis),
                    },
                    customRender: {
                      "table": (context, child) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: (context.tree as TableLayoutElement)
                              .toWidget(context),
                        );
                      },
                      "bird": (RenderContext context, Widget child) {
                        return TextSpan(text: "🐦");
                      },
                      "flutter": (RenderContext context, Widget child) {
                        return FlutterLogo(
                          style:
                              (context.tree.element!.attributes['horizontal'] !=
                                      null)
                                  ? FlutterLogoStyle.horizontal
                                  : FlutterLogoStyle.markOnly,
                          textColor: context.style.color!,
                          size: context.style.fontSize!.size! * 5,
                        );
                      },
                    },
                    customImageRenders: {
                      networkSourceMatcher(domains: ["flutter.dev"]):
                          (context, attributes, element) {
                        return FlutterLogo(size: 36);
                      },
                      networkSourceMatcher(domains: ["mydomain.com"]):
                          networkImageRender(
                        headers: {"Custom-Header": "some-value"},
                        altWidget: (alt) => Text(alt ?? ""),
                        loadingWidget: () => Text("Loading..."),
                      ),
                      // On relative paths starting with /wiki, prefix with a base url
                      (attr, _) =>
                              attr["src"] != null &&
                              attr["src"]!.startsWith("/wiki"):
                          networkImageRender(
                              mapUrl: (url) =>
                                  "https://upload.wikimedia.org" + url!),
                      // Custom placeholder image for broken links
                      networkSourceMatcher():
                          networkImageRender(altWidget: (_) => FlutterLogo()),
                    },
                    onLinkTap: (url, _, __, ___) {
                      print("Opening $url...");
                    },
                    onImageTap: (src, _, __, ___) {
                      print(src);
                    },
                    onImageError: (exception, stackTrace) {
                      print(exception);
                    },
                    onCssParseError: (css, messages) {
                      print("css that errored: $css");
                      print("error messages:");
                      messages.forEach((element) {
                        print(element);
                      });
                    },
                  ),
                  // Html(data: "$description"),
                  // Text(
                  //   description,
                  //   style: ConstantsStyle().paraGraphStyle,
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
