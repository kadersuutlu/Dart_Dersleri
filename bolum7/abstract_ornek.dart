void main(List<String> args) {
  //Veritabani db = Veritabani();//abstract olduğu için nesne türetilemez.

  Veritabani db = OracleDB();

  Veritabani db1 = FirebaseDB();

  db.userDelete();
  db.userSave();

  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();
}

abstract class Veritabani {
  void userSave();
  void userUpdate();
  void userDelete();
}

class OracleDB extends Veritabani {
  @override
  void userDelete() {
    print("Oracle DB user deleted.");
  }

  @override
  void userSave() {
    print("Oracle DB user saved.");
  }

  @override
  void userUpdate() {
    print("Oracle DB user updated.");
  }
}

class FirebaseDB extends Veritabani {
  @override
  void userDelete() {
    print("Firebase DB user deleted.");
  }

  @override
  void userSave() {
    print("Firebase DB user saved.");
  }

  @override
  void userUpdate() {
    print("Firebase DB user updated.");
  }
}
