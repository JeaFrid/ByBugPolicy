import 'dart:async';
import 'package:bybug_policy/theme/color.dart';
import 'package:bybug_policy/utils/fun.dart';
import 'package:clipboard/clipboard.dart';
import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedValue = 1;
  double inits = 0;
  TextEditingController internet = TextEditingController();
  TextEditingController sirketAdi = TextEditingController();
  TextEditingController eposta = TextEditingController();
  TextEditingController sehir = TextEditingController();
  bool loading = false;

  List<Widget> widgets = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox(
        width: width(context),
        height: height(context),
        child: CosmosBody(
          scrollable: true,
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "ByBug Policy Creator",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Quickly create policies for your project!",
                        style: TextStyle(
                          color: textColor.withOpacity(0.7),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Projeniz Hakkında Bilgiler",
              style: TextStyle(
                color: textColor.withOpacity(0.7),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                textbox(
                  context,
                  "İnternet Sitenizin Adresi",
                  internet,
                ),
                textbox(
                  context,
                  "Şirket Adı",
                  sirketAdi,
                ),
                textbox(
                  context,
                  "E-Posta Adresiniz",
                  eposta,
                ),
                textbox(
                  context,
                  "Şirketinizin Bulunduğu Şehir",
                  sehir,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Projeniz Hangi Kategoride?",
              style: TextStyle(
                color: textColor.withOpacity(0.7),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: [
                Container(
                  color: backgroundColor,
                  width: 100,
                  child: RadioListTile(
                    contentPadding: EdgeInsetsDirectional.zero,
                    activeColor: textColor,
                    selectedTileColor: Colors.transparent,
                    tileColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    fillColor:
                        MaterialStateProperty.all(textColor.withOpacity(0.2)),
                    title: Text(
                      "Blog Sayfası",
                      style: TextStyle(
                        fontSize: 10,
                        color: textColor,
                      ),
                    ),
                    value: 1,
                    dense: true,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = 1;
                      });
                    },
                  ),
                ),
                Container(
                  color: backgroundColor,
                  width: 100,
                  child: RadioListTile(
                    contentPadding: EdgeInsetsDirectional.zero,
                    tileColor: Colors.transparent,
                    selectedTileColor: Colors.transparent,
                    activeColor: textColor,
                    hoverColor: Colors.transparent,
                    fillColor:
                        MaterialStateProperty.all(textColor.withOpacity(0.2)),
                    title: Text(
                      "E-Ticaret Sitesi",
                      style: TextStyle(
                        fontSize: 10,
                        color: textColor,
                      ),
                    ),
                    value: 2,
                    dense: true,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = 2;
                      });
                    },
                  ),
                ),
                Container(
                  color: backgroundColor,
                  width: 100,
                  child: RadioListTile(
                    contentPadding: EdgeInsetsDirectional.zero,
                    activeColor: textColor,
                    selectedTileColor: Colors.transparent,
                    tileColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    fillColor:
                        MaterialStateProperty.all(textColor.withOpacity(0.2)),
                    title: Text(
                      "Mobil Uygulama",
                      style: TextStyle(
                        fontSize: 10,
                        color: textColor,
                      ),
                    ),
                    value: 3,
                    dense: true,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = 3;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: loading == false
                      ? () {
                          setState(() {
                            widgets.clear();
                            loading = true;
                          });
                          if (selectedValue == 1) {
                            for (var element in getDataList(internet.text,
                                sirketAdi.text, eposta.text, sehir.text, 1)) {
                              setState(() {
                                widgets.add(
                                  satir(
                                    context,
                                    icerik: element[0],
                                    format: element[1],
                                    icerikMetni: element[2],
                                  ),
                                );
                              });
                            }
                          } else if (selectedValue == 2) {
                            for (var element in getDataList(internet.text,
                                sirketAdi.text, eposta.text, sehir.text, 2)) {
                              setState(() {
                                widgets.add(
                                  satir(
                                    context,
                                    icerik: element[0],
                                    format: element[1],
                                    icerikMetni: element[2],
                                  ),
                                );
                              });
                            }
                          } else if (selectedValue == 3) {
                            for (var element in getDataList(internet.text,
                                sirketAdi.text, eposta.text, sehir.text, 3)) {
                              setState(() {
                                widgets.add(
                                  satir(
                                    context,
                                    icerik: element[0],
                                    format: element[1],
                                    icerikMetni: element[2],
                                  ),
                                );
                              });
                            }
                          }

                          setState(() {
                            inits = 1;
                            loading = false;
                          });
                        }
                      : () {},
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: textColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: loading == false
                        ? Text(
                            "Oluştur",
                            style: TextStyle(
                              color: textColor,
                              fontSize: 12,
                            ),
                          )
                        : Row(
                            children: [
                              SizedBox(
                                width: 12,
                                height: 12,
                                child: CircularProgressIndicator(
                                  color: textColor,
                                  strokeWidth: 2,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Oluşturuluyor...",
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Opacity(
              opacity: inits,
              child: satir(
                context,
                kopyala: Center(
                  child: Text(
                    "Kopyala",
                    style: TextStyle(
                      color: textColor,
                      overflow: TextOverflow.ellipsis,
                      fontSize: width(context) < 700 ? 10 : 12,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: widgets,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(),
                const SizedBox(),
                InkWell(
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await launchUrl(
                        Uri.parse("https://github.com/JeaFrid/ByBugPolicy"));
                  },
                  child: Text(
                    "Github Kaynak Kodları",
                    style: TextStyle(
                      color: textColor,
                      overflow: TextOverflow.ellipsis,
                      fontSize: width(context) < 700 ? 10 : 12,
                    ),
                  ),
                ),
                InkWell(
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await launchUrl(Uri.parse(
                        "https://play.google.com/store/apps/details?id=net.bybug.policyapp"));
                  },
                  child: Text(
                    "Uygulamayı İndir",
                    style: TextStyle(
                      color: textColor,
                      overflow: TextOverflow.ellipsis,
                      fontSize: width(context) < 700 ? 10 : 12,
                    ),
                  ),
                ),
                const SizedBox(),
                const SizedBox(),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "ByBug | JeaFriday | 2024",
              style: TextStyle(
                color: textColor.withOpacity(0.1),
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w100,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column satir(
    BuildContext context, {
    String? icerik,
    String? format,
    Widget? kopyala,
    String? icerikMetni,
  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: width(context) * 0.33,
              child: Center(
                child: Text(
                  icerik ?? "İçerik",
                  style: TextStyle(
                    color: textColor,
                    overflow: TextOverflow.ellipsis,
                    fontSize: width(context) < 700 ? 10 : 12,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: width(context) * 0.33,
              child: Center(
                child: Text(
                  format ?? "Format",
                  style: TextStyle(
                    color: textColor,
                    overflow: TextOverflow.ellipsis,
                    fontSize: width(context) < 700 ? 10 : 12,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: width(context) * 0.33,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(5),
                    onTap: () async {
                      await FlutterClipboard.copy(
                          icerikMetni ?? "Veri Bulunamadı.");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: kopyala ??
                          Icon(
                            Icons.copy,
                            size: 16,
                            color: textColor,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          width: width(context),
          color: textColor.withOpacity(0.3),
          height: 1,
        ),
      ],
    );
  }

  Widget textbox(
      BuildContext context, String text, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width:
            width(context) < 700 ? width(context) * 0.9 : width(context) * 0.4,
        child: CosmosTextBox(
          text,
          color: textColor,
          fontSize: 12,
          maxLines: 1,
          controller: controller,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
              fontSize: 12,
              color: textColor.withOpacity(0.4),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
