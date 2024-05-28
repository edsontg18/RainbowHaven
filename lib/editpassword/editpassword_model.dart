import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'editpassword_widget.dart' show EditpasswordWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditpasswordModel extends FlutterFlowModel<EditpasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldV widget.
  FocusNode? textFieldVFocusNode;
  TextEditingController? textFieldVTextController;
  late bool textFieldVVisibility;
  String? Function(BuildContext, String?)? textFieldVTextControllerValidator;
  // State field(s) for TextFieldN widget.
  FocusNode? textFieldNFocusNode;
  TextEditingController? textFieldNTextController;
  late bool textFieldNVisibility;
  String? Function(BuildContext, String?)? textFieldNTextControllerValidator;
  // Stores action output result for [Custom Action - changePassword] action in Button widget.
  bool? isChange;

  @override
  void initState(BuildContext context) {
    textFieldVVisibility = false;
    textFieldNVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldVFocusNode?.dispose();
    textFieldVTextController?.dispose();

    textFieldNFocusNode?.dispose();
    textFieldNTextController?.dispose();
  }
}
