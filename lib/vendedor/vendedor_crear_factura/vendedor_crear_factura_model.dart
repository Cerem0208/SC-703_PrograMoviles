import '/flutter_flow/flutter_flow_util.dart';
import 'vendedor_crear_factura_widget.dart' show VendedorCrearFacturaWidget;
import 'package:flutter/material.dart';

class VendedorCrearFacturaModel
    extends FlutterFlowModel<VendedorCrearFacturaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtFacturaCrearEmpresa widget.
  FocusNode? txtFacturaCrearEmpresaFocusNode;
  TextEditingController? txtFacturaCrearEmpresaController;
  String? Function(BuildContext, String?)?
      txtFacturaCrearEmpresaControllerValidator;
  // State field(s) for txtFacturaCrearNombre widget.
  FocusNode? txtFacturaCrearNombreFocusNode;
  TextEditingController? txtFacturaCrearNombreController;
  String? Function(BuildContext, String?)?
      txtFacturaCrearNombreControllerValidator;
  // State field(s) for txtFacturaCrearPApellido widget.
  FocusNode? txtFacturaCrearPApellidoFocusNode;
  TextEditingController? txtFacturaCrearPApellidoController;
  String? Function(BuildContext, String?)?
      txtFacturaCrearPApellidoControllerValidator;
  // State field(s) for txtFacturaCrearSApellido widget.
  FocusNode? txtFacturaCrearSApellidoFocusNode;
  TextEditingController? txtFacturaCrearSApellidoController;
  String? Function(BuildContext, String?)?
      txtFacturaCrearSApellidoControllerValidator;
  // State field(s) for txtFacturaCrearFecha widget.
  FocusNode? txtFacturaCrearFechaFocusNode;
  TextEditingController? txtFacturaCrearFechaController;
  String? Function(BuildContext, String?)?
      txtFacturaCrearFechaControllerValidator;
  // State field(s) for txtFacturaCrearPrecio widget.
  FocusNode? txtFacturaCrearPrecioFocusNode;
  TextEditingController? txtFacturaCrearPrecioController;
  String? Function(BuildContext, String?)?
      txtFacturaCrearPrecioControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtFacturaCrearEmpresaFocusNode?.dispose();
    txtFacturaCrearEmpresaController?.dispose();

    txtFacturaCrearNombreFocusNode?.dispose();
    txtFacturaCrearNombreController?.dispose();

    txtFacturaCrearPApellidoFocusNode?.dispose();
    txtFacturaCrearPApellidoController?.dispose();

    txtFacturaCrearSApellidoFocusNode?.dispose();
    txtFacturaCrearSApellidoController?.dispose();

    txtFacturaCrearFechaFocusNode?.dispose();
    txtFacturaCrearFechaController?.dispose();

    txtFacturaCrearPrecioFocusNode?.dispose();
    txtFacturaCrearPrecioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
