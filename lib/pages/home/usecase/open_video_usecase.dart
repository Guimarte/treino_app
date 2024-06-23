import 'package:url_launcher/url_launcher.dart';

abstract class OpenVideoUsecase {
  Future call({required String url});
}

class OpenVideoUsecaseImplementation extends OpenVideoUsecase {
  @override
  Future call({required String url}) async {
    await launchUrl(Uri.parse(url));
  }
}
