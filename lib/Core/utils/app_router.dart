import 'package:go_router/go_router.dart';
import 'package:qr_code/Feature/Splash/presentation/views/onbording1.dart';
import 'package:qr_code/Feature/Splash/presentation/views/onbording2.dart';
import '../../Feature/Generate_Code/presentation/views/generate_code_view.dart';
import '../../Feature/Generate_QR/presentation/views/generate_qr_view.dart';
import '../../Feature/History/presentation/views/history_view.dart';
import '../../Feature/Home/presentation/views/home_view.dart';
import '../../Feature/Open_File/presentation/views/open_file_view.dart';
import '../../Feature/Settings/presentation/views/setting_view.dart';
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
        path: HomeView.id,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: GenerateCodeView.id,
        builder: (context, state) => const GenerateCodeView(),
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
        path: OpenFileView.id,
        builder: (context, state) => const OpenFileView(),
      ),
      GoRoute(
        path: SettingView.id,
        builder: (context, state) => const SettingView(),
      ),
    ],
  );
}
