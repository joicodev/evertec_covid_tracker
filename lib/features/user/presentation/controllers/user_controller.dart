import 'package:evertec_covid_tracker/features/common/presentation/controllers/getx_base_controller.dart';
import 'package:evertec_covid_tracker/features/common/presentation/controllers/main_controller.dart';
import 'package:evertec_covid_tracker/features/user/domain/models/user_form_model.dart';
import 'package:evertec_covid_tracker/features/user/domain/models/user_model.dart';
import 'package:get/get.dart';

class UserController extends GetxBaseController {
  final Rxn<UserModel> _userModel = Rxn();
  final Rx<UserFormModel> _userForm = Rx(UserFormModel());

  final MainController _mainController = Get.find();

  Future<void> login() async {
    if (userForm.formKey.currentState!.validate()) {
      final isValid = _mainController.checkUserIsValid(
        userForm.documentTypeController.text,
        userForm.documentNumberController.text,
        userForm.passwordController.text,
      );

      print('isValid... $isValid');
    }
  }

  Future<void> logout() async {
    _userModel(null);
  }

  UserModel get userModel => _userModel.value!;

  bool get isLogged => _userModel.value != null;

  UserFormModel get userForm => _userForm.value;
}
