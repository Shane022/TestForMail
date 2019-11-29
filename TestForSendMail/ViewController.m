//
//  ViewController.m
//  TestForSendMail
//
//  Created by Shane on 2019/11/29.
//  Copyright © 2019 Shane. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+SendMail.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)sendMail:(UIButton *)sender {
    [self sendMailWithDelegate:self subject:@"今日周五" toRecipients:@[@"1013956388@qq.com"] ccRecipients:@[] bccRecipients:@[] result:^(MFMailComposeResult result) {
        switch (result) {
            case MFMailComposeResultCancelled:
            {
                NSLog(@"MFMailComposeResultCancelled");
            }
                break;
            case MFMailComposeResultSaved:
            {
                NSLog(@"MFMailComposeResultSaved");
            }
                break;
            case MFMailComposeResultSent:
            {
                NSLog(@"MFMailComposeResultSent");
            }
                break;
            case MFMailComposeResultFailed:
            {
                NSLog(@"MFMailComposeResultFailed");
            }
                break;
            default:
                break;
        }
    }];
}

@end
