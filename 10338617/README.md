# The status bar sync icon should have a public API

## Summary:

When building iCloud applications for Core Data it would be useful to have a public API much like `networkActivityIndicatorVisible` that would allow the developer to toggle the iTunes sync status view in the status bar so that we can show users when we're updating content from iCloud.

Actually, even if `PFUbiquity` would use the private API to show the sync status bar icon, we would have a lot less user confusion when transaction logs were being downloaded.

## Steps to Reproduce:

## Expected Results:

## Actual Results:

## Regression:

## Notes:
