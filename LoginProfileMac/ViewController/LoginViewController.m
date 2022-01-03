//
//  LoginViewController.m
//  LoginProfileMac
//
//  Created by hyunsu on 2022/01/03.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (weak) IBOutlet NSTextField *passwordTextField;
@property (weak) IBOutlet NSTextField *idTextField;
@property (weak) IBOutlet NSButton *loginButton;
@property (weak) IBOutlet NSButton *createAccountButton;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupButton];
    [self setupTextField];
}

-(void) setupButton {
    [self.loginButton setValue:NSColor.lightGrayColor forKey:@"backgroundColor"];
    [self.loginButton setContentTintColor:NSColor.blackColor];
    [self.createAccountButton setValue:NSColor.lightGrayColor forKey:@"backgroundColor"];
    [self.createAccountButton setContentTintColor:NSColor.blackColor];
}

-(void) setupTextField {
    [self.idTextField setValue:NSColor.clearColor forKey:@"backgroundColor"];
    [self.idTextField setDelegate:self];
    [self.passwordTextField setValue:NSColor.clearColor forKey:@"backgroundColor"];
}


-(void) controlTextDidChange: (NSNotification *) obj {
     if (self.idTextField.stringValue.length >= 5) {
         [self.loginButton setValue:NSColor.yellowColor forKey:@"backgroundColor"];
     } else {
         [self.loginButton setValue:NSColor.lightGrayColor forKey:@"backgroundColor"];
     }
}


@end
