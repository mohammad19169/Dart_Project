import 'SmartDevice.dart';

class DeviceManager {
  List<SmartDevice> devices = [];

  void addDevice(String id, String name) {
    if (devices.any((device) => device.id == id)) {
      print('Device with ID $id already exists.');
    } else {
      devices.add(SmartDevice(id, name, false));
      print('Device added successfully.');
    }
  }

  void deleteDevice(String id) {
    if (devices.any((device) => device.id == id)) {
        devices.removeWhere((device) => device.id == id);
        print('Device deleted successfully.');

    } else {
      print('Device doesnot exist');
    }
  }

  void toggleDeviceStatus(String id) {
    for (var device in devices) {
      if (device.id == id) {
        device.changestatus();
        print('Device status toggled successfully.');
        return;
      }
    }
    print('Device with ID $id not found.');
  }
  
  void listAllDevices() {
    if (devices.isEmpty) {
      print('No devices available.');
    } else {
      devices.forEach((device) {
        print(device);
      });
    }
  }

  SmartDevice? getDeviceById(String id) {
    for (var device in devices) {
      if (device.id == id) {
        return device;
      }
    }
    print('Device with ID $id not found.');
    return null;
  }
}
