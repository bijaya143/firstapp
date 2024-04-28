class Student {
  final String firstName;
  final String lastName;
  final String address;

  Student({
    required this.firstName,
    required this.lastName,
    required this.address
  });

  add(){
    return {
      firstName,
      lastName,
      address
    };
  }
}