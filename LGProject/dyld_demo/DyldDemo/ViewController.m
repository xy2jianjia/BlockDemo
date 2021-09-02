//
//  ViewController.m
//  DyldDemo
//
//  Created by monan on 2021/7/13.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


+(void)load {
    NSLog(@"---%s---",__func__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    __block int a = 1001;
    __block NSString *str = @"百事可乐";
    void (^qlBlock)(void) = ^{
        a = 2002;
        str = @"可口可乐";
        NSLog(@"a = %d -- str = %@",a,str);
    };
    
    qlBlock();
    
    
    
    
//    static long a1 = 1000000;
//
//    [self testAP:&a1];
//
//    NSMutableString *a = [NSMutableString stringWithString:@"11111000000"];
//    long b = a1 * a1 * a1;
//    [self testA:a];
//    [self testB:b];
//    NSLog(@"%@-%@-%@",a,@(a1),@(b));
//    [[NSNotificationCenter defaultCenter] postNotificationName:@"" object:@""] ;
}
- (void) testAP:(long *)a {
    *a = 59066;
}
- (void)testA:(NSMutableString *) a1 {
     [a1 appendString: @"hhhhhhhhh"];
}
- (void)testB:(long) b {
    b ++;
}
@end
