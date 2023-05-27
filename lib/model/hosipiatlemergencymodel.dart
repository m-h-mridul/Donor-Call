// ignore_for_file: camel_case_types

class HospitalEmergency_Model {
  String hospitalName = '';
  List<String>emergencynumber = ['',''];
  String location = '';
  String details = '';
  HospitalEmergency_Model({
    this.hospitalName = '',
    this.emergencynumber = const [],
    this.location = '',
    this.details = '',
  });
}
