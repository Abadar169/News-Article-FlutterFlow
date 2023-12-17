import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'article_widget.dart' show ArticleWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ArticleModel extends FlutterFlowModel<ArticleWidget> {
  ///  Local state fields for this page.

  dynamic article;

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (article)] action in Article widget.
  ApiCallResponse? apiResultaof;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    expandableController.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
