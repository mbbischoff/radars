# UITextView link highlighted rect incorrect. Duplicate of 15781949

## Summary

The highlighted rect for a link in a UITextView is incorrect when the attributed text has a custom attributed a the location of the link attribute with a length of 0.

## Expected results

The highlighted rect should cover the entire link range. 

## Actual results

The highlighted rect only cover the range of the custom attributed (length 1).

## Configuration

iOS simulator, iPhone 5S

## Version build

iOS 7.0 - 7.1 (11D5127c)

## Steps to Reproduce:

1. Create an NSAttributedString with NSLinkAttributedName set for the range of the string.
2. Add a custom attribute for a range with location 0, length 1.
3. Create a UITextView, set the attributedText property to the attributed string.
4. Long press on the link in the UITextView.
5. Observe the highlighted location in comparison to the link range.  

## Expected Results:
The highlighted rect should cover the entire link range.

## Actual Results:
The highlighted rect only cover the range of the custom attributed (length 1).

## Version:
iOS 7.0 - 7.1 (11D5127c)

## Notes:


## Configuration:
iOS simulator, iPhone 5S

## Attachments:
'NSLinkAttributeBug.zip' was successfully uploaded.
