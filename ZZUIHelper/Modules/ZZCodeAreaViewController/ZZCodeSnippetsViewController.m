//
//  ZZCodeSnippetsViewController.m
//  ZZUIHelper
//
//  Created by 马俊良 on 2017/12/5.
//  Copyright © 2017年 李伯坤. All rights reserved.
//

#import "ZZCodeSnippetsViewController.h"
#import <MGSFragaria/MGSFragaria.h>

@interface ZZCodeSnippetsViewController ()
@property (nonatomic, strong) MGSFragaria *fragaria;
@end

@implementation ZZCodeSnippetsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [self.fragaria embedInView:self.view];
    NSString *snippetsPath =  [[NSBundle mainBundle]pathForResource:@"helper.snippets" ofType:nil];
    NSString *snippetsStr = [NSString stringWithContentsOfFile:snippetsPath encoding:NSUTF8StringEncoding error:nil];
    [self.fragaria setString:snippetsStr];
    self.fragaria.textView.editable = NO;
}
#pragma mark - # Getter
- (MGSFragaria *)fragaria
{
    if (!_fragaria) {
        _fragaria = [[MGSFragaria alloc] init];
        [_fragaria setObject:@"Objective-C" forKey:MGSFOSyntaxDefinitionName];
    }
    return _fragaria;
}
@end
