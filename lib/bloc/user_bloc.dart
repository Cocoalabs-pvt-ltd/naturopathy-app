import 'dart:async';
import 'package:dio/dio.dart';

import 'package:naturopathy/models/appointment.dart';
import 'package:naturopathy/models/campaign.dart';
import 'package:naturopathy/models/order.dart';
import 'package:naturopathy/models/user.dart';
import 'package:naturopathy/repositories/user_repository.dart';

class UserBloc {
  late UserRepository _userRepository;

  UserBloc() {
    _userRepository = UserRepository();
  }

  // Get user details

  getUserProfile(String id) {
    try {
      Stream<User> userDetails = _userRepository.getUserDetails(id).asStream();
      return userDetails;
    } catch (err) {
      rethrow;
    }
  }

  // store user details
  Future<User> storeUserDetails(String id, FormData data) async {
    try {
      User userDetails = await _userRepository.storeUserDetails(id, data);
      return userDetails;
    } catch (err) {
      rethrow;
    }
  }

  // get all appointment details
  getAllUserAppointmentDetails(String userId) {
    try {
      Stream<Appointment> appointmentDetails =
          _userRepository.getAllAppointmentDetails(userId).asStream();
      return appointmentDetails;
    } catch (err) {
      rethrow;
    }
  }

  // get individual appointment details
  getAppointmentDetails(String userId, String appointmentId) {
    try {
      Stream<Appointment> appointmentDetails = _userRepository
          .getAppointmentDetails(userId, appointmentId)
          .asStream();
      return appointmentDetails;
    } catch (err) {
      rethrow;
    }
  }

  // Get all user orders
  getAllUserOrders(String userId) {
    try {
      Stream<Orders> orderDetails =
          _userRepository.getAllUserOrders(userId).asStream();
      return orderDetails;
    } catch (err) {
      rethrow;
    }
  }

  // Get individual user orders
  getUserOrder(String userId, String orderId) {
    try {
      Stream<Orders> orderDetails =
          _userRepository.getOrderDetails(userId, orderId).asStream();
      return orderDetails;
    } catch (err) {
      rethrow;
    }
  }

  // get all joined campaigns of the user
  getAllJoinedCampaigns(String userId) {
    try {
      Stream<Campaign> campaignDetails =
          _userRepository.getAllUserJoinedCampaigns(userId).asStream();
      return campaignDetails;
    } catch (err) {
      rethrow;
    }
  }

  // get joined campaign details of the user
  getJoinedCampaignDetails(String userId, String joinedCampaignId) {
    try {
      Stream<Campaign> campaignDetails = _userRepository
          .getJoinedCampaignDetails(userId, joinedCampaignId)
          .asStream();
      return campaignDetails;
    } catch (err) {
      rethrow;
    }
  }
}
