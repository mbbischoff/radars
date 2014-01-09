//
//  DDViewController.m
//  NSLinkAttributeBug
//
//  Created by Devin Doty on 1/9/14.
//  Copyright (c) 2014 Devin Doty. All rights reserved.
//

#import "DDViewController.h"

static NSString * DDTestAttribtueName = @"DDTestAttributeName";

@interface DDViewController () <UITextViewDelegate>

@property (nonatomic) UITextView *textView;

@end

@implementation DDViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 30, self.view.bounds.size.width, 140)];
    self.textView.editable = NO;
    self.textView.delegate = self;
    [self.view addSubview:self.textView];
    
    // Create attributed string
    NSString *linkText = @"NSLinkAttributedName";
    NSString *string = [NSString stringWithFormat:@"Testing %@ with a custom attribute. \n\nTap \"%@\" to reproduce.", linkText, linkText];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:18]}];
    
    // Add link attribute
    NSRange range = [string rangeOfString:linkText];
    [attributedString addAttribute:NSLinkAttributeName value:linkText range:range];
    
    // Add custom attribute at link range with length 1
    range.length = 1;
    [attributedString addAttribute:DDTestAttribtueName value:[NSNull null] range:range];
    
    // Set attribtued text
    self.textView.attributedText = attributedString;
}


#pragma mark - UITextViewDelegate

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange {
    return NO;
}

@end
