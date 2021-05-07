import 'package:get/get.dart';
import 'package:test_task/ui/views/enter_address_view/enter_address_view.dart';

String initialRoute = Routes.EnterAddressView;

List<GetPage> getPages = [
  GetPage(name: Routes.EnterAddressView, page: () => EnterAddressView()),
];

class Routes {
  static const String EnterAddressView = '/';
}
