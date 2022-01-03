//
//  MainWindowController.m
//  LoginProfileMac
//
//  Created by hyunsu on 2022/01/03.
//

#import "MainWindowController.h"
#import "LoginViewController.h"

@interface MainWindowController ()

@end

@implementation MainWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    [self setupLoginViewController];
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

-(void) setupLoginViewController {
    LoginViewController *login = [[LoginViewController alloc] initWithNibName:[LoginViewController className] bundle:nil];
    NSView *loginView = login.view;
    [self.window.contentView addSubview:loginView];
    NSView *mainView = self.window.contentView;
    [loginView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [NSLayoutConstraint activateConstraints:@[
        [loginView.leadingAnchor constraintEqualToAnchor:mainView.leadingAnchor],
        [loginView.trailingAnchor constraintEqualToAnchor:mainView.trailingAnchor],
        [loginView.topAnchor constraintEqualToAnchor:mainView.topAnchor],
        [loginView.bottomAnchor constraintEqualToAnchor:mainView.bottomAnchor]
    ]];
}

- (void)dealloc
{
    NSLog(@"contentViewController is nil ? %@", self.contentViewController == nil ? @"YES" : @"NO");
    NSLog(@"Start is dead!");
}

@end
