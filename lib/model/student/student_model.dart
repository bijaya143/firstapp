class Student {
  final String firstName;
  final String lastName;
  final String address;

  Student({
    required this.firstName,
    required this.lastName,
    required this.address
  });

  Map<String, dynamic> getStudent() {
    return {
      'First Name': firstName,
      'Last Name': lastName,
      'Adress': address,
    };
  }
}