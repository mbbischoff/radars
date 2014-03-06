## TComponentFont::GetUnderlineThickness(CGAffineTransform const&) Crash

* **State**: Open
* **Product**: iOS SDK
* **Rank**: No Value

### Summary:

When using underlines and custom fonts with UITextView in iOS 7, we experience frequent crashes in `TComponentFont::GetUnderlineThickness()`.

### Steps to Reproduce:

1. Install Xcode
2. Run included sample project on iOS Simulator
3. Tap link to open Mail sheet
4. Tap Cancel and then Discard
5. Often a crash will occur

### Expected Results:

No crash occurs

### Actual Results:

A crash occurs on the main thread in `TComponentFont::GetUnderlineThickness(CGAffineTransform const&)`.
## Version:

iOS 7.0.x and the latest iOS 7.1 beta

### Notes:

Sample project from [PrideChung/FontAwesomeKit/issues/13](https://github.com/PrideChung/FontAwesomeKit/issues/13).

### Configuration:

iOS 7.0.x and 7.1. Simulator and Devices
