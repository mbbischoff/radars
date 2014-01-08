//
//  DDViewController.m
//  UIInputViewBug
//
//  Created by Devin Doty on 1/8/14.
//  Copyright (c) 2014 Devin Doty. All rights reserved.
//

#import "DDViewController.h"
#import "DDTextInputView.h"

@interface DDViewController () <UITextViewDelegate>
@property (nonatomic) UITextView *textView;
@property (nonatomic) DDTextInputView *defaultInputView;
@property (nonatomic) DDTextInputView *keyboadInputView;
@end

@implementation DDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"UIInputViewStyleDefault", @"UIInputViewStyleKeyboard"]];
    [self.view addSubview:segmentedControl];
    [segmentedControl setWidth:150 forSegmentAtIndex:0];
    [segmentedControl setWidth:160 forSegmentAtIndex:1];
    segmentedControl.selectedSegmentIndex = 0;
    [segmentedControl addTarget:self action:@selector(segmentChanged:) forControlEvents:UIControlEventValueChanged];
    segmentedControl.tintColor = [UIColor whiteColor];
    segmentedControl.center = CGPointMake(self.view.bounds.size.width/2, 50);

    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(segmentedControl.frame) + 20, self.view.bounds.size.width, 100)];
    self.textView.contentInset = UIEdgeInsetsMake(30, 0, 0, 0);
    self.textView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.textView.delegate = self;
    self.textView.textContainerInset = UIEdgeInsetsZero;
    self.textView.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:self.textView];
    
    self.defaultInputView = [[DDTextInputView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 44) inputViewStyle:UIInputViewStyleDefault];
    self.defaultInputView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    
    self.keyboadInputView = [[DDTextInputView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 44) inputViewStyle:UIInputViewStyleKeyboard];
    self.keyboadInputView.autoresizingMask = UIViewAutoresizingFlexibleWidth;

    [self segmentChanged:segmentedControl];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.textView becomeFirstResponder];
    
}


#pragma mark - Actions

- (void)segmentChanged:(UISegmentedControl *)segmentedControl {
    
    if (segmentedControl.selectedSegmentIndex == 0) {
        self.textView.inputAccessoryView = self.defaultInputView;
        self.textView.text = @"UIInputViewStyleDefault has keyboard blur and tint. Docs say it does not apply the tint.";
    } else {
        self.textView.inputAccessoryView = self.keyboadInputView;
        self.textView.text = @"UIInputViewStyleKeyboard has blur but no tint applied. Docs say it applies the keyboard tint.";
    }
    
    [self.textView reloadInputViews];

}


@end
