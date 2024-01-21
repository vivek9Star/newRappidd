class LoginRequest {
  String? emailOrMobile;
  String? password;

  LoginRequest({this.emailOrMobile, this.password});

  LoginRequest.fromJson(Map<String, dynamic> json) {
    emailOrMobile = json['EmailOrMobile'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['EmailOrMobile'] = this.emailOrMobile;
    data['password'] = this.password;
    return data;
  }
}
