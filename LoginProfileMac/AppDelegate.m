//
//  AppDelegate.m
//  LoginProfileMac
//
//  Created by hyunsu on 2022/01/03.
//

#import "AppDelegate.h"
#import "MainWindowController.h"

@interface AppDelegate ()

@property NSMutableArray *arr;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSLog(@"asdfasf");
    _arr = [[NSMutableArray alloc] init];
    MainWindowController *main = [[MainWindowController alloc] initWithWindowNibName:[MainWindowController className]];
    [_arr addObject:main];
    [main showWindow:nil];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
