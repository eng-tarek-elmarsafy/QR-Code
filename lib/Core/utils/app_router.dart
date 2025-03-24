import 'package:go_router/go_router.dart';
import 'package:qr_code/Feature/Generate_QR/presentation/views/generate_business.dart';
import 'package:qr_code/Feature/Generate_QR/presentation/views/generate_contact.dart';
import 'package:qr_code/Feature/Generate_QR/presentation/views/generate_email.dart';
import 'package:qr_code/Feature/Generate_QR/presentation/views/generate_event.dart';
import 'package:qr_code/Feature/Generate_QR/presentation/views/generate_instagram.dart';
import 'package:qr_code/Feature/Generate_QR/presentation/views/generate_location.dart';
import 'package:qr_code/Feature/Generate_QR/presentation/views/generate_telephone.dart';
import 'package:qr_code/Feature/Generate_QR/presentation/views/generate_text.dart';
import 'package:qr_code/Feature/Generate_QR/presentation/views/generate_twitter.dart';
import 'package:qr_code/Feature/Generate_QR/presentation/views/generate_website.dart';
import 'package:qr_code/Feature/Generate_QR/presentation/views/generate_whatsapp.dart';
import 'package:qr_code/Feature/Generate_QR/presentation/views/generate_wifi.dart';
import 'package:qr_code/Feature/Home/data/models/qr_info.dart';
import 'package:qr_code/Feature/Result/presentation/views/show_qr_view.dart';
import 'package:qr_code/Feature/Splash/presentation/views/onbording1.dart';
import 'package:qr_code/Feature/Splash/presentation/views/onbording2.dart';
import '../../Feature/Generate_QR/presentation/views/generate_qr_view.dart';
import '../../Feature/History/presentation/views/history_view.dart';
import '../../Feature/Home/presentation/views/home_view.dart';
import '../../Feature/Result/presentation/views/result_view.dart';
import '../../Feature/Settings/presentation/views/setting_view.dart';
import '../../Feature/Splash/presentation/views/onbording3.dart';
import '../../Feature/Splash/presentation/views/splash_view.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: Onbording1.id,
        builder: (context, state) => const Onbording1(),
      ),
      GoRoute(
        path: Onbording2.id,
        builder: (context, state) => const Onbording2(),
      ),
      GoRoute(
        path: Onbording3.id,
        builder: (context, state) => const Onbording3(),
      ),
      GoRoute(
        path: HomeView.id,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: GenerateQRView.id,
        builder: (context, state) => const GenerateQRView(),
      ),
      GoRoute(
        path: HistoryView.id,
        builder: (context, state) => const HistoryView(),
      ),
      GoRoute(
        path: ResultView.id,
        builder: (context, state) => ResultView(
          qrInfo: state.extra as QrInfo,
        ),
      ),
      GoRoute(
        path: SettingView.id,
        builder: (context, state) => const SettingView(),
      ),
      GoRoute(
        path: ShowQrView.id,
        builder: (context, state) => ShowQrView(
          qrInfo: state.extra as QrInfo,
        ),
      ),
      GoRoute(
        path: GenerateText.id,
        builder: (context, state) => const GenerateText(),
      ),
      GoRoute(
        path: GenerateWebsite.id,
        builder: (context, state) => const GenerateWebsite(),
      ),
      GoRoute(
        path: GenerateWiFi.id,
        builder: (context, state) => const GenerateWiFi(),
      ),
      GoRoute(
        path: GenerateEvent.id,
        builder: (context, state) => const GenerateEvent(),
      ),
      GoRoute(
        path: GenerateContact.id,
        builder: (context, state) => const GenerateContact(),
      ),
      GoRoute(
        path: GenerateBusiness.id,
        builder: (context, state) => const GenerateBusiness(),
      ),
      GoRoute(
        path: GenerateLocation.id,
        builder: (context, state) => const GenerateLocation(),
      ),
      GoRoute(
        path: GenerateWhatsapp.id,
        builder: (context, state) => const GenerateWhatsapp(),
      ),
      GoRoute(
        path: GenerateEmail.id,
        builder: (context, state) => const GenerateEmail(),
      ),
      GoRoute(
        path: GenerateTwitter.id,
        builder: (context, state) => const GenerateTwitter(),
      ),
      GoRoute(
        path: GenerateInstagram.id,
        builder: (context, state) => const GenerateInstagram(),
      ),
      GoRoute(
        path: GenerateTelephone.id,
        builder: (context, state) => const GenerateTelephone(),
      ),
    ],
  );
}
