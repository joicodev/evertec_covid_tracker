import 'package:flutter/cupertino.dart';

class UserFormModel {
  final formKey = GlobalKey<FormState>();
  final documentTypeController = TextEditingController();
  final documentNumberController = TextEditingController();
  final passwordController = TextEditingController();
}
