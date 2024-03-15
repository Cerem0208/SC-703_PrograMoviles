import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtLoginUser widget.
  FocusNode? txtLoginUserFocusNode;
  TextEditingController? txtLoginUserController;
  String? Function(BuildContext, String?)? txtLoginUserControllerValidator;
  // State field(s) for txtLoginPassword widget.
  FocusNode? txtLoginPasswordFocusNode;
  TextEditingController? txtLoginPasswordController;
  late bool txtLoginPasswordVisibility;
  String? Function(BuildContext, String?)? txtLoginPasswordControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtLoginPasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtLoginUserFocusNode?.dispose();
    txtLoginUserController?.dispose();

    txtLoginPasswordFocusNode?.dispose();
    txtLoginPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
