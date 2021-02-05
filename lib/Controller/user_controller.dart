// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import 'package:portfolio/Model/User.dart';

class UserController extends GetxController {
  final user = User(
    name: 'Amit Patil',
    job: 'Flutter Developer',
    description: 'I\'m a techie geek with 1+ year of experience',
  ).obs;
}
