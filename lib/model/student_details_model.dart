class StudentDetailsModel {
  final String fname;
  final String lname;
  final String address;

  StudentDetailsModel({
    required this.fname,
    required this.lname,
    required this.address,
  });

  studetails() {
    return StudentDetailsModel(fname: fname, lname: lname, address: address);
  }
}