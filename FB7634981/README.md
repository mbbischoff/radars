## Title of Radar

* **State**: Open
* **Product**: Xcode
* **Classification**: Application Crash
* **Reproducible**: Always

## Summary:

When using @IBDesignable and implementing `prepareForInterfaceBuilder` on a custom view, the agent crashes when trying to access an outlet of that view in the method.

See the attached sample project.


## Steps to Reproduce:

1. Make a view @IBDesignable
2. Implement the instance method `prepareForInterfaceBuilder`
3. Attempt to access an outlet property of that view.

## Expected Results:

The code runs and modified the object at that outlet.

## Actual Results:

The following error occurs when opening the nib: 

error: IB Designables: Failed to render and update auto layout status for DesignableView (iN0-l3-epB): The agent crashed

## Version:

Version 11.3.1 (11C504)