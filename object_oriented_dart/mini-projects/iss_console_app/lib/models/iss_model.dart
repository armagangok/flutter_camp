import 'iss_position_model.dart';

class IssModel {
  String? message;
  int? timestamp;
  IssPositionModel? issPosition;

  IssModel({this.message, this.issPosition, this.timestamp});

  IssModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    issPosition = json['iss_position'] != null
        ? IssPositionModel.fromJson(json['iss_position'])
        : null;
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (issPosition != null) {
      data['iss_position'] = issPosition!.toJson();
    }
    data['timestamp'] = timestamp;
    return data;
  }
}
