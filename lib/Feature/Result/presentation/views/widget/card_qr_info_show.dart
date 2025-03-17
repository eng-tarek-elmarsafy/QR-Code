import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../Core/utils/colors.dart';
import '../../../../Home/data/models/qr_info.dart';

class CardQRInfoShow extends StatelessWidget {
  final QrInfo qrInfo;
  const CardQRInfoShow({super.key, required this.qrInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 35, 35, 35),
              offset: Offset(4, 4),
              blurRadius: 4,
              spreadRadius: -1,
            )
          ],
          color: AppColor.kShadowBlack,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Data',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    fontFamily: 'Itim',
                    fontSize: 19,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    launchUrl(
                      Uri.parse(qrInfo.url!),
                    );
                  },
                  onLongPress: () {
                    Clipboard.setData(
                      ClipboardData(text: qrInfo.url!),
                    );
                  },
                  child: Text(
                    qrInfo.url!,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color.fromRGBO(217, 217, 217, 1),
                      fontFamily: 'Itim',
                      fontSize: 13,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
