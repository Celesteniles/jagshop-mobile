import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_component_model.dart';
export 'product_component_model.dart';

class ProductComponentWidget extends StatefulWidget {
  const ProductComponentWidget({super.key});

  @override
  State<ProductComponentWidget> createState() => _ProductComponentWidgetState();
}

class _ProductComponentWidgetState extends State<ProductComponentWidget> {
  late ProductComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Stack(
        alignment: AlignmentDirectional(1.0, -1.0),
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://picsum.photos/seed/297/600',
                  width: 140.0,
                  height: 140.0,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  '9cmuey6g' /* Paul Masquin - Brosse */,
                ),
                maxLines: 1,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'DM Sans',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'bm77vcsm' /* CFA 2,250 */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'DM Sans',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w800,
                    ),
              ),
            ].divide(SizedBox(height: 5.0)),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.favorite_border_rounded,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 24.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
