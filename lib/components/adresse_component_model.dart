import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'adresse_component_widget.dart' show AdresseComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdresseComponentModel extends FlutterFlowModel<AdresseComponentWidget> {
  ///  Local state fields for this component.

  bool forMe = false;

  bool me = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomTextController;
  String? Function(BuildContext, String?)? nomTextControllerValidator;
  // State field(s) for adresse widget.
  FocusNode? adresseFocusNode;
  TextEditingController? adresseTextController;
  String? Function(BuildContext, String?)? adresseTextControllerValidator;
  // State field(s) for reference_add widget.
  FocusNode? referenceAddFocusNode;
  TextEditingController? referenceAddTextController;
  String? Function(BuildContext, String?)? referenceAddTextControllerValidator;
  // State field(s) for personne_contact widget.
  FocusNode? personneContactFocusNode;
  TextEditingController? personneContactTextController;
  String? Function(BuildContext, String?)?
      personneContactTextControllerValidator;
  // State field(s) for telephone widget.
  FocusNode? telephoneFocusNode;
  TextEditingController? telephoneTextController;
  String? Function(BuildContext, String?)? telephoneTextControllerValidator;
  // Stores action output result for [Backend Call - API (Add address)] action in Button widget.
  ApiCallResponse? apiResultq40;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomFocusNode?.dispose();
    nomTextController?.dispose();

    adresseFocusNode?.dispose();
    adresseTextController?.dispose();

    referenceAddFocusNode?.dispose();
    referenceAddTextController?.dispose();

    personneContactFocusNode?.dispose();
    personneContactTextController?.dispose();

    telephoneFocusNode?.dispose();
    telephoneTextController?.dispose();
  }
}
