import 'package:get/get.dart';
import 'package:tanipedia_mobile/feature/auth/auth_route.dart';
import 'package:tanipedia_mobile/feature/main/main_route.dart';
// import 'package:tanipedia_mobile/feature/auth/auth_route.dart';
// import 'package:tanipedia_mobile/feature/consultation/consultation_route.dart';
// import 'package:tanipedia_mobile/feature/job/job_route.dart';
// import 'package:tanipedia_mobile/feature/main/main_route.dart';
// import 'package:tanipedia_mobile/feature/mapping/mapping_route.dart';
// import 'package:tanipedia_mobile/feature/setting/setting_route.dart';

class BaseRoute {
  static List<GetPage> route = [
    ...MainRoute.routes,
    ...AuthRoute.routes,
    // ...JobRoute.routes,
    // ...ConsultationRoute.routes,
    // ...SettingRoute.routes,
    // ...MappingRoute.routes,
    // ...DeviceRoute.routes,
    // ...AttendanceRoute.routes,
    // ...OtherRoute.routes,
    // ...ReportRoute.routes,
    // ...SalaryRoute.routes,
  ];
}