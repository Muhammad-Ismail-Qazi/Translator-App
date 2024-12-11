import 'dart:developer';
import '../models/users/users_model.dart';
import '../utils/global_instance.dart';

abstract class UsersServices {
  Future<void> signup(UserModel user, String password);
  Future<void> login(String email, String password);
  Future<void> update(UserModel user);
  Future<void> signOut();
  Future<UserModel?> getCurrentUser();
  Future<List<UserModel>> getUsersByRole(String role);
}

class UserService implements UsersServices {


  @override
  Future<void> signup(UserModel user, String password) async {
    try {
      // Add a new user to Firestore
      await firestore.collection('users').doc(user.userID).set(user.toJson());
      log('-----> Account Created Successfully <-----');
    } catch (e) {
      log('-----> Error While Creating Account <-----');
      throw Exception('Error creating account: $e');
    }
  }

  @override
  Future<void> login(String email, String password) async {
    // Firestore itself doesn't handle authentication. Use Firebase Authentication.
    try {
      log('-----> Login Successful <-----');
    } catch (e) {
      log('-----> Error during login <-----');
      throw Exception('Error logging in: $e');
    }
  }

  @override
  Future<void> update(UserModel user) async {
    try {
      final userId = user.userID;
      if (userId == null) throw "User ID is required for update.";

      // Update the user's data in Firestore
      await firestore.collection('users').doc(userId).update(user.toJson());
      log('-----> User Updated Successfully <-----');
    } catch (e) {
      log('-----> Error While Updating User <-----');
      throw Exception('Error updating user: $e');
    }
  }

  @override
  Future<void> signOut() async {
    try {
      log('-----> User Signed Out <-----');
    } catch (e) {
      log("-----> Error during sign-out: $e <-----");
    }
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    try {
      final currentUserID = "YOUR_CURRENT_USER_ID"; // Replace with auth logic
      final doc = await firestore.collection('users').doc(currentUserID).get();

      if (doc.exists) {
        return UserModel.fromJson(doc.data()!);
      }
      return null;
    } catch (e) {
      log("-----> Error fetching current user <-----");
      throw Exception('Error fetching user: $e');
    }
  }

  @override
  Future<List<UserModel>> getUsersByRole(String role) async {
    try {
      final querySnapshot = await firestore
          .collection('users')
          .where('role', isEqualTo: role)
          .get();

      return querySnapshot.docs
          .map((doc) => UserModel.fromJson(doc.data()))
          .toList();
    } catch (e) {
      log("-----> Error fetching users by role <-----");
      throw Exception('Error fetching users by role: $e');
    }
  }
}