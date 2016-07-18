//
//  SecondProtocol.m
//  ProtocolsTraining
//
//  Created by new on 18.07.16.
//  Copyright © 2016 F&G. All rights reserved.
//

#import "SecondProtocol.h"

@implementation SecondProtocol

- (void) secondMethodHeader : (NSString *) headerString {
    
    NSString * str = @"Baden";
    NSString * strTwo = @"Wurtemberg";
    NSString * result = [NSString stringWithFormat:@"ist %@  %@", str, strTwo];
    
    [self outsideMethod:result];
}

- (void) outsideMethod : (NSString *) outsideString {
    
    [self.delegate impSecondMethod:self secondString:outsideString];
}


@end
