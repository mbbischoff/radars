### Summary:
UIInputViewStyleDefault behaves as the documentation say UIInputViewStyleKeyboard should behave and vice versa.   

### Actual results
UIInputViewStyleDefault gets the blur and tint applied. UIInputViewStyleKeyboard gets the blur and no tint applied.

### Configuration
iPhone simulator and iPhone 5S.

### Version/Build
iOS 7.1 (11D5127c)

### Steps to Reproduce:
1. Create a UIInputView with style UIInputViewStyleDefault.
2. Set it as the inputAccessoryView on a UITextView, call reloadInputViews on the textView.
3. Observe blur and tint adaption from keyboard and compare to UIInputViewStyleDefault documentation.
4. Repeat with UIInputViewStyleKeyboard.

### Expected Results:
Using UIInputViewStyleDefault the input view should get the blur and no keyboard tint applied. Using UIInputViewStyleKeyboard the input view should get the blur and keyboard tint.

### Actual Results:
UIInputViewStyleDefault gets the blur and tint applied. UIInputViewStyleKeyboard gets the blur and no tint applied.

#### Version:
iOS 7.1 (11D5127c)

### Notes:

### Configuration:
iPhone simulator and iPhone 5S.

### Attachments:
'UIInputViewBug.zip' was successfully uploaded.
