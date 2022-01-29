import 'package:iss_console_app/services/location_service.dart';

void getLocation() {
  final IssService issService = IssService();
  issService.fetchData();
}
