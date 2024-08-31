import '/backend/api_requests/api_calls.dart';
import '/components/adresse_livraison_widget.dart';
import '/components/choose_payment_method/choose_payment_method_widget.dart';
import '/components/mode_img/mode_img_widget.dart';
import '/components/skeleton_list_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'payment_page_widget.dart' show PaymentPageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentPageModel extends FlutterFlowModel<PaymentPageWidget> {
  ///  Local state fields for this page.

  double reduction = 0.0;

  String? couponCode;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for modeImg component.
  late ModeImgModel modeImgModel;

  @override
  void initState(BuildContext context) {
    modeImgModel = createModel(context, () => ModeImgModel());
  }

  @override
  void dispose() {
    modeImgModel.dispose();
  }
}
