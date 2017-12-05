//
//  AppDelegate.m
//  ZZUIHelper
//
//  Created by 李伯坤 on 2017/2/16.
//  Copyright © 2017年 李伯坤. All rights reserved.
//

#import "AppDelegate.h"
#import <MGSFragaria/MGSFragariaPreferences.h>

@interface AppDelegate ()

@property (nonatomic, strong) NSWindow *window;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)notification
{
    
    [[NSUserDefaults standardUserDefaults] setValue:[NSArchiver archivedDataWithRootObject:[NSFont fontWithName:@"Menlo" size:15]] forKey:MGSFragariaPrefsTextFont];

    self.window = [NSApplication sharedApplication].windows[0];
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag
{
    [self.window makeKeyAndOrderFront:self];
    
    return YES;
}

@end
