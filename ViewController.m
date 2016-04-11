//
//  ViewController.m
//  EventBinParsing
//
//  Created by Jeffrey Silverstein on 4/9/16.
//  Copyright © 2016 com.silverstein. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *months = [NSArray arrayWithObjects: @"January", @"February", @"March", @"April", @"May", @"Jun", @"July", @"August", @"September", @"October", @"November", @"December", nil];
    
    
    // Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"text" ofType:@"txt"];
    
    NSString *content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    
    for (int i = 0; i < [months count]; i++) {
        NSString *month = [months objectAtIndex:i];
        if ([content containsString:month]) {
            NSLog(@"string contains bla!");
            break;
        } else {
            NSLog(@"string does not contain bla");
        }

    }
    
    
       
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
