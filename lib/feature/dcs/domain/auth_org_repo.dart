
abstract class AuthOrgRepo {

  // Future<dynamic> signUp({
  //   required String name,
  //   required String fullName,
  //   required String email,
  //   required String password
  // });

  Future<dynamic> signIn({
    required String email,
    required String password
  });

  Future<dynamic> getProfile();

  Future<dynamic> updateProfile({
    String? email,
    String? name,
    String? fullName,
    String? city,
    String? address,
    String? inn,
    String? kpp,
    String? ogrn,
  });

  Future<dynamic> updatePassword({
    required String oldPassword,
    required String newPassword
  });

  Future<dynamic> refreshToken({
    String? refreshToken
  });

  Future fetchFields();

  Future fetchAdditionalFields();

  Future fetchOrgFields();

  Future addFieldInOrgFields(String id);

  Future addField(String name);

}