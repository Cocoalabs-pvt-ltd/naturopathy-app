class Apis {
  // Api for authentication
  static String signup = "/user/signup";
  static String login = "/user/login";

  // Api for Users
  static String getUserDetails = "/user";

  // Api for products
  static String getAllProducts = "/products";
  static String createProduct = "/products/create";

  // Api for doctors
  static String viewAllDoctors = "/doctors";
  static String viewAllFilteredDoctors = "/doctors/filter";

  // Api for appointments
  static String storeAppointmentDetails = "/appointments";
  static String storeAppointmentDetailsUser = "/user/userId/appointments";
}
