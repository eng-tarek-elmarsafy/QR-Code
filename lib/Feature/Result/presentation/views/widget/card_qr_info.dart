import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:qr_code/Feature/Result/presentation/views/show_qr_view.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../Core/utils/colors.dart';
import '../../../../Home/data/models/qr_info.dart';

class CardQRInfo extends StatelessWidget {
  final QrInfo qrInfo;
  const CardQRInfo({super.key, required this.qrInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  'Data',
                  style: TextStyle(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    fontFamily: 'Itim',
                    fontSize: 22,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  DateFormat("d MMM y, h:mm a").format(qrInfo.time),
                  // '16 Dec 2022, 9:30 pm',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(164, 164, 164, 1),
                      fontFamily: 'Itim',
                      fontSize: 13,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              TextButton(
                onPressed: () {
                  launchUrl(
                    Uri.parse(qrInfo.url!),
                  );
                },
                child: Text(
                  qrInfo.url!,
                  style: TextStyle(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    fontFamily: 'Itim',
                    fontSize: 17,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  launchUrl(
                    Uri.parse(qrInfo.url!),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(ShowQrView.id, extra: qrInfo);
                    },
                    child: Text(
                      'Show QR Code',
                      style: TextStyle(
                        color: Color.fromRGBO(253, 182, 35, 1),
                        fontFamily: 'Itim',
                        fontSize: 15,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
