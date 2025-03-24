import '../../../../Core/utils/assets.dart';
import '../../presentation/views/generate_contact.dart';
import '../../presentation/views/generate_email.dart';
import '../../presentation/views/generate_event.dart';
import '../../presentation/views/generate_instagram.dart';
import '../../presentation/views/generate_location.dart';
import '../../presentation/views/generate_telephone.dart';
import '../../presentation/views/generate_text.dart';
import '../../presentation/views/generate_twitter.dart';
import '../../presentation/views/generate_website.dart';
import '../../presentation/views/generate_whatsapp.dart';
import '../../presentation/views/generate_wifi.dart';
import '../models/generate_icons_model.dart';

class GenerateIconsData {
  static const List<GenerateIconsModel> iconList = [
    GenerateIconsModel(
      icon: AppAssets.generateText,
      goTo: GenerateText.id,
    ),
    GenerateIconsModel(
      icon: AppAssets.generateWebsite,
      goTo: GenerateWebsite.id,
    ),
    GenerateIconsModel(
      icon: AppAssets.generateWiFi,
      goTo: GenerateWiFi.id,
    ),
    GenerateIconsModel(
      icon: AppAssets.generateEvent,
      goTo: GenerateEvent.id,
    ),
    GenerateIconsModel(
      icon: AppAssets.generateContact,
      goTo: GenerateContact.id,
    ),
    GenerateIconsModel(
      icon: AppAssets.generateBusiness,
      goTo: GenerateLocation.id,
    ),
    GenerateIconsModel(
      icon: AppAssets.generateLocation,
      goTo: GenerateText.id,
    ),
    GenerateIconsModel(
      icon: AppAssets.generateWhatsapp,
      goTo: GenerateWhatsapp.id,
    ),
    GenerateIconsModel(
      icon: AppAssets.generateEmail,
      goTo: GenerateEmail.id,
    ),
    GenerateIconsModel(
      icon: AppAssets.generateTwitter,
      goTo: GenerateTwitter.id,
    ),
    GenerateIconsModel(
      icon: AppAssets.generateInstagram,
      goTo: GenerateInstagram.id,
    ),
    GenerateIconsModel(
      icon: AppAssets.generateTelephone,
      goTo: GenerateTelephone.id,
    ),
  ];
}
