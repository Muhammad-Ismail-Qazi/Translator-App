class ValidationService {
  // private constructor
  ValidationService._privateConstructor();

  // singleton instance variable
  static ValidationService? _instance;

  // getter to access the singleton instance
  static ValidationService get instance {
    _instance ??= ValidationService._privateConstructor();
    return _instance!;
  }

  // Email validator
  String? validateEmail(String value) {
    if (value.isEmpty ||
        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
      return 'Enter a valid email!';
    }
    return null;
  }

  // Password validator
  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Please enter a password';
    } else if (value.length < 8) {
      return 'Password must be at least 8 characters';
    } else if (!RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$%^&*()_+{}|<>?])')
        .hasMatch(value)) {
      return 'Password should contain at least one uppercase letter, one lowercase letter, one digit, and one special character';
    }
    return null;
  }

  // Repeat password validator
  String? validateRepeatPassword(String value, String originalPassword) {
    if (value.isEmpty) {
      return 'Please enter a repeated password';
    } else if (value != originalPassword) {
      return 'Passwords do not match!';
    }
    return null;
  }

  // Name validator
  String? validateName(String value) {
    if (value.isEmpty) {
      return 'Please enter a name';
    } else if (value.length < 2) {
      return 'Name must be at least 2 characters long';
    } else if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
      return 'Name can only contain letters and spaces';
    }
    return null;
  }

  // Country validator
  String? validateCountry(String value) {
    if (value.isEmpty) {
      return 'Please enter your country';
    } else if (value.length < 2) {
      return 'Country name must be at least 2 characters long';
    }
    return null;
  }

  // Gender validator
  String? validateGender(String value) {
    if (value == 'Gender') {
      return 'Please select your gender';
    }
    return null;
  }

  // Phone validator
  String? validatePhone(String value) {
    if (value.isEmpty) {
      return 'Please enter your phone number';
    } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
      return 'Enter a valid phone number (10 digits)';
    }
    return null;
  }

  // DOB validator
  String? validateDOB(String value) {
    if (value.isEmpty) {
      return 'Please enter your date of birth';
    }
    // Example format: YYYY-MM-DD
    if (!RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(value)) {
      return 'Please enter a valid date (YYYY-MM-DD)';
    }
    return null;
  }

  // ZIP Code Validator
  String? validateZip(String value) {
    if (value.isEmpty) {
      return 'Please enter your ZIP code';
    }
    if (!RegExp(r'^\d{5}$').hasMatch(value)) {
      return 'Please enter a valid ZIP code (5 digits)';
    }
    return null;
  }

  // Time validator
  String? validateTime(String value) {
    if (value.isEmpty) {
      return 'Please enter a time';
    }
    // Example format: HH:MM AM/PM
    if (!RegExp(r'^\d{1,2}:\d{2}\s?(AM|PM)$').hasMatch(value)) {
      return 'Please enter a valid time (e.g., 02:30 PM)';
    }
    return null;
  }

  // Interval validator
  String? validateInterval(String value) {
    if (value.isEmpty) {
      return 'Please enter an interval';
    }
    // Example format: only numeric values allowed
    if (!RegExp(r'^\d+$').hasMatch(value)) {
      return 'Please enter a valid interval (only numeric values)';
    }
    return null;
  }

  // Date validator (separate function)
  static String? validateDate(String value) {
    if (value.isEmpty) {
      return 'Please enter a valid date';
    }

    // Validate format YYYY-MM-DD
    final regex = RegExp(r'^\d{4}-\d{2}-\d{2}$');
    if (!regex.hasMatch(value)) {
      return 'Invalid date format. Use YYYY-MM-DD';
    }
    return null; // Valid date format
  }

  // Time validator (static function)
  static String? validateTimeStatic(String value) {
    if (value.isEmpty) {
      return 'Please enter a valid time';
    }

    // Validate format HH:MM AM/PM
    final regex = RegExp(r'^\d{1,2}:\d{2}\s?(AM|PM)$');
    if (!regex.hasMatch(value)) {
      return 'Invalid time format. Use HH:MM AM/PM';
    }

    return null; // Valid time format
  }
}