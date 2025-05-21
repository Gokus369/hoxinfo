class Enquiry {
  final String name;
  final String email;
  final String phone;
  final String message;

  Enquiry({
    required this.name,
    required this.email,
    required this.phone,
    required this.message,
  });

  // Convert Enquiry to a Map for sending to a backend or storing in a database
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'message': message,
    };
  }

  // Create an Enquiry from a Map (e.g., from a backend response)
  factory Enquiry.fromJson(Map<String, dynamic> json) {
    return Enquiry(
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      message: json['message'] ?? '',
    );
  }
}
