import '/components/mode_img/mode_img_widget.dart';
import '/components/payment_method/payment_method_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'mode_paiement_page_widget.dart' show ModePaiementPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModePaiementPageModel extends FlutterFlowModel<ModePaiementPageWidget> {
  ///  State fields for stateful widgets in this page.

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
