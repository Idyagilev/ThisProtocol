//
//  ViewController.m
//  ProtocolsTraining
//
//  Created by new on 18.07.16.
//  Copyright © 2016 F&G. All rights reserved.
//

#import "ViewController.h"
#import "ThisPrototcol.h"
#import "SecondProtocol.h"

@interface ViewController () <ThisProtocolDelegate, SecondProtocolDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //  Обьект первого протокола ThisPrototcol
    ThisPrototcol * protoObject = [[ThisPrototcol alloc]init];
    protoObject.delegate = self;
    [protoObject methodHeaderProtocol:@"Yes"];
    
    //  Обьект второго протокола SecondProtocol
    SecondProtocol * secondObject = [[SecondProtocol alloc]init];
    secondObject.delegate = self;
    [secondObject secondMethodHeader:@"Twenty Yes"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark -  ThisPrototcol

    //  Метод первого протокола ThisPrototcol
-(void) methodImplementationProtocol : (ThisPrototcol *) methodImplementation stringImplementation : (NSString *) stringImplementation{
    
    NSLog(@"Skifmusic Protocol - %@", stringImplementation);
}

# pragma mark -  SecondProtocol

    //   Метод второго протокола SecondProtocol
-(void) impSecondMethod:(SecondProtocol *)impSecMethod secondString:(NSString *)secondString {
    
    NSLog(@"Hauptstadt %@", secondString);
}

@end
