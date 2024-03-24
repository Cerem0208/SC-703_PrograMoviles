import '/flutter_flow/flutter_flow_util.dart';
import 'editar_facturas_widget.dart' show EditarFacturasWidget;
import 'package:flutter/material.dart';

class EditarFacturasModel extends FlutterFlowModel<EditarFacturasWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtEmpresa widget.
  FocusNode? txtEmpresaFocusNode;
  TextEditingController? txtEmpresaController;
  String? Function(BuildContext, String?)? txtEmpresaControllerValidator;
  // State field(s) for textNombre widget.
  FocusNode? textNombreFocusNode;
  TextEditingController? textNombreController;
  String? Function(BuildContext, String?)? textNombreControllerValidator;
  // State field(s) for txtPApellido widget.
  FocusNode? txtPApellidoFocusNode;
  TextEditingController? txtPApellidoController;
  String? Function(BuildContext, String?)? txtPApellidoControllerValidator;
  // State field(s) for txtSApellido widget.
  FocusNode? txtSApellidoFocusNode;
  TextEditingController? txtSApellidoController;
  String? Function(BuildContext, String?)? txtSApellidoControllerValidator;
  // State field(s) for txtPrecio widget.
  FocusNode? txtPrecioFocusNode;
  TextEditingController? txtPrecioController;
  String? Function(BuildContext, String?)? txtPrecioControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEmpresaFocusNode?.dispose();
    txtEmpresaController?.dispose();

    textNombreFocusNode?.dispose();
    textNombreController?.dispose();

    txtPApellidoFocusNode?.dispose();
    txtPApellidoController?.dispose();

    txtSApellidoFocusNode?.dispose();
    txtSApellidoController?.dispose();

    txtPrecioFocusNode?.dispose();
    txtPrecioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
