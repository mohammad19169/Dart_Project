import 'dart:io';
import 'DeviceManager.dart';
import 'UserManager.dart';
import 'SmartDevice.dart';

void main() {
  DeviceManager deviceManager = DeviceManager();
  UserManager userManager = UserManager();

  while (true) {
    print('Select an option:');
    print('1. Add User');
    print('2. Login');
    print('3. Add Device');
    print('4. Delete Device');
    print('5. Toggle Device Status');
    print('6. List All Devices');
    print('7. Retrieve Device by ID');
    print('8. Exit');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        userManager.addNewUser();
        break;
      case '2':
        userManager.login();
        break;
      case '3':
        print('Enter device ID:');
        String? id = stdin.readLineSync();
        print('Enter device name:');
        String? name = stdin.readLineSync();
        if (id != null && name != null) {
          deviceManager.addDevice(id, name);
        } else {
          print('ID and name cannot be null.');
        }
        break;
      case '4':
        print('Enter device ID to delete:');
        String? id = stdin.readLineSync();
        if (id != null) {
          deviceManager.deleteDevice(id);
        } else {
          print('ID cannot be null.');
        }
        break;
      case '5':
        print('Enter device ID to switch status:');
        String? id = stdin.readLineSync();
        if (id != null) {
          deviceManager.toggleDeviceStatus(id);
        } else {
          print('ID cannot be null.');
        }
        break;
      case '6':
        deviceManager.listAllDevices();
        break;
      case '7':
        print('Enter device ID to retrieve:');
        String? id = stdin.readLineSync();
        if (id != null) {
          SmartDevice? device = deviceManager.getDeviceById(id);
          if (device != null) {
            print(device);
          }
        } else {
          print('ID cannot be null.');
        }
        break;
      case '8':
        exit(0);
      default:
        print('Invalid choice. Please select a valid option.');
        break;
    }
  }
}
