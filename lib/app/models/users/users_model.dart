class UserModel {
  final String? userID;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? role; // "Doctor", "Admin", "Translator", or "User"
  final String? phoneNumber;
  final bool? isVerified; // Applicable for translators
  final String? profileImageURL; // Optional
  final DateTime? createdAt;

  UserModel({
    this.userID,
    this.firstName,
    this.lastName,
    this.email,
    this.role,
    this.phoneNumber,
    this.isVerified,
    this.profileImageURL,
    this.createdAt,
  });

  /// Factory method to create an instance from Firestore document
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userID: json['userID'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      isVerified: json['isVerified'] as bool?,
      profileImageURL: json['profileImageURL'] as String?,
      createdAt: json['createdAt'] != null
          ? DateTime.tryParse(json['createdAt'] as String)
          : null,
    );
  }

  /// Convert the model into JSON for Firestore
  Map<String, dynamic> toJson() {
    return {
      if (userID != null) 'userID': userID,
      if (firstName != null) 'firstName': firstName,
      if (lastName != null) 'lastName': lastName,
      if (email != null) 'email': email,
      if (role != null) 'role': role,
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      if (isVerified != null) 'isVerified': isVerified,
      if (profileImageURL != null) 'profileImageURL': profileImageURL,
      if (createdAt != null) 'createdAt': createdAt!.toIso8601String(),
    };
  }
}