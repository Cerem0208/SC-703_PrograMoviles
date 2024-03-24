import '/flutter_flow/flutter_flow_util.dart';
import 'editar_bodeguero_widget.dart' show EditarBodegueroWidget;
import 'package:flutter/material.dart';

class EditarBodegueroModel extends FlutterFlowModel<EditarBodegueroWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoController;
  String? Function(BuildContext, String?)? txtCorreoControllerValidator;
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  // State field(s) for txtPapellido widget.
  FocusNode? txtPapellidoFocusNode;
  TextEditingController? txtPapellidoController;
  String? Function(BuildContext, String?)? txtPapellidoControllerValidator;
  // State field(s) for txtSapellido widget.
  FocusNode? txtSapellidoFocusNode;
  TextEditingController? txtSapellidoController;
  String? Function(BuildContext, String?)? txtSapellidoControllerValidator;
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoController;
  String? Function(BuildContext, String?)? txtTelefonoControllerValidator;
  // State field(s) for txtSalario widget.
  FocusNode? txtSalarioFocusNode;
  TextEditingController? txtSalarioController;
  String? Function(BuildContext, String?)? txtSalarioControllerValidator;
  // State field(s) for txtEmpresa widget.
  FocusNode? txtEmpresaFocusNode;
  TextEditingController? txtEmpresaController;
  String? Function(BuildContext, String?)? txtEmpresaControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCorreoFocusNode?.dispose();
    txtCorreoController?.dispose();

    txtNombreFocusNode?.dispose();
    txtNombreController?.dispose();

    txtPapellidoFocusNode?.dispose();
    txtPapellidoController?.dispose();

    txtSapellidoFocusNode?.dispose();
    txtSapellidoController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoController?.dispose();

    txtSalarioFocusNode?.dispose();
    txtSalarioController?.dispose();

    txtEmpresaFocusNode?.dispose();
    txtEmpresaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
