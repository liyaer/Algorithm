//
//  ViewController.m
//  Algorithm
//
//  Created by Mac on 2019/9/3.
//  Copyright © 2019 DuWenliang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    //用于创建任意正整数的字符串表示
    NSDictionary *dict = @{@(0): @"zero", @(1): @"one", @(2): @"two", @(3): @"three", @(4): @"four", @(5): @"five", @(6): @"six", @(7): @"seven", @(8): @"eight", @(9): @"nine", @(10): @"ten"};
    NSArray *numbers = @[@(16), @(58), @(510)];
    NSMutableArray *strings = [NSMutableArray arrayWithCapacity:numbers.count];
    
    for (NSNumber *number in numbers) {
        NSNumber *num = number;
        NSString *output = @"";
        do {
            output = [NSString stringWithFormat:@"%@%@", dict[@(num.integerValue % 10)] ,output];
            num = @(num.integerValue / 10);
        } while (num.integerValue > 0);

        [strings addObject:output];
    }
    NSLog(@"%@", strings);
}


@end
