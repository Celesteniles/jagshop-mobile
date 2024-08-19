import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mode_img_model.dart';
export 'mode_img_model.dart';

class ModeImgWidget extends StatefulWidget {
  const ModeImgWidget({
    super.key,
    required this.mode,
    double? width,
    double? height,
  })  : this.width = width ?? 50.0,
        this.height = height ?? 50.0;

  final String? mode;
  final double width;
  final double height;

  @override
  State<ModeImgWidget> createState() => _ModeImgWidgetState();
}

class _ModeImgWidgetState extends State<ModeImgWidget> {
  late ModeImgModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModeImgModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (widget!.mode == 'nokipay') {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/NokiPay_plein.png',
              width: widget!.width,
              height: widget!.height,
              fit: BoxFit.cover,
            ),
          );
        } else if (widget!.mode == 'momo') {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/momo.png',
              width: widget!.width,
              height: widget!.height,
              fit: BoxFit.cover,
            ),
          );
        } else if (widget!.mode == 'airtel') {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/airtel.png',
              width: widget!.width,
              height: widget!.height,
              fit: BoxFit.cover,
            ),
          );
        } else {
          return Container(
            width: widget!.width,
            height: widget!.height,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).alternate,
              borderRadius: BorderRadius.circular(8.0),
            ),
          );
        }
      },
    );
  }
}
