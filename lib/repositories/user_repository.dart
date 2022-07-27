import 'package:dio/dio.dart';
import 'package:naturopathy/apis/api_provider.dart';
import 'package:naturopathy/apis/apis.dart';
import 'package:naturopathy/models/appointment.dart';
import 'package:naturopathy/models/campaign.dart';
import 'package:naturopathy/models/order.dart';
import 'package:naturopathy/models/user.dart';

class UserRepository {
  ApiProvider? _provider;

  // Get user details
  Future<User> getUserDetails(String userId) async {
    final response = await _provider!
        .getJsonInstance()
        .get("${Apis.getUserDetails}/$userId");
    return User.fromJson(response.data);
  }

  // store user details
  Future<User> storeUserDetails(String userId, FormData data) async {
    final userDetailsUrl = "${Apis.getUserDetails}/$userId/details";
    final response = await _provider!
        .getMultipartInstance()
        .post(userDetailsUrl, data: data);
    return User.fromJson(response.data);
  }

  // get all appointments
  Future<Appointment> getAllAppointmentDetails(String userId) async {
    final userAppointmentsUrl = "${Apis.getUserDetails}/$userId/appointments";
    final response =
        await _provider!.getJsonInstance().get(userAppointmentsUrl);
    return Appointment.fromJson(response.data);
  }

  // get appointment details using appointmentId
  Future<Appointment> getAppointmentDetails(
      String userId, String appointmentId) async {
    final appointmentUrl =
        "${Apis.getUserDetails}/$userId/appointments/$appointmentId";
    final response = await _provider!.getJsonInstance().get(appointmentUrl);
    return Appointment.fromJson(response.data);
  }

  // get all user orders
  Future<Orders> getAllUserOrders(String userId) async {
    final userOrdersUrl = "${Apis.getUserDetails}/$userId/orders";
    final response = await _provider!.getJsonInstance().get(userOrdersUrl);
    return Orders.fromJson(response.data);
  }

  // get order details
  Future<Orders> getOrderDetails(String userId, String orderId) async {
    final orderDetailsUrl = "${Apis.getUserDetails}/$userId/orders/$orderId";
    final response = await _provider!.getJsonInstance().get(orderDetailsUrl);
    return Orders.fromJson(response.data);
  }

  // get all user joined campaigns
  Future<Campaign> getAllUserJoinedCampaigns(String userId) async {
    final userJoinedCampaignsUrl =
        "${Apis.getUserDetails}/$userId/joinedCampaigns";
    final response =
        await _provider!.getJsonInstance().get(userJoinedCampaignsUrl);
    return Campaign.fromJson(response.data);
  }

  // get joined campaign details by id
  Future<Campaign> getJoinedCampaignDetails(
      String userId, String joinedCampaignId) async {
    final campaignDetailsUrl =
        "${Apis.getUserDetails}/$userId/joinedCampaigns/$joinedCampaignId";
    final response = await _provider!.getJsonInstance().get(campaignDetailsUrl);
    return Campaign.fromJson(response.data);
  }
}
