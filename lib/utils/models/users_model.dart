class User {
  static List<User> users = [User(email: "f", password: "1")];
  static List<String> emails = ["f"];
  String email;
  String password;
  User({required this.email, required this.password});

  void addUser(User user) {
    users.add(user);
  }

  void addEmail(String email) {
    emails.add(email);
  }

  static bool isUserExists(String email, String password){
    for(User user in users){
      if(user.email==email && user.password==password){
        return true;
      }
    }
    return false;
  }
}
