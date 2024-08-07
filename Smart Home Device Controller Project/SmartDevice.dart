class SmartDevice {
  String id;
  String name;
  bool status; 

  SmartDevice(this.id, this.name, this.status);

  void changestatus() {
    status = !status;
  }

  @override
  String toString() {
    return 'Device ID: $id, Name: $name, Status: ${status ? 'On' : 'Off'}';
  }
}
