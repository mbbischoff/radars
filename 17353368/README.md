Summary:
If you are using the default Write ahead logging journal mode for a sqlite persistent store with iCloud + Core Data, lightweight migrations to new versions of the model do not succeed.

Steps to Reproduce:
1. Create an iCloud Core Data App with the default journal mode
2. Install the app with version 1 of the data model on two devices
3. Update one device to version 2 of the data model
4. Update the second device to version 2 of the data model

Expected Results:
The devices continue to synchronize changes once both devices have been updated to the version 2 data model.

Actual Results:
Changes stop synchronizing

Version:
iOS 7.1.1

Notes:
Spoke to Melissa (Core Data Engineer) about this at WWDC and she confirmed the issue.

Configuration:
Any iOS 7+ devices

Attachments:
