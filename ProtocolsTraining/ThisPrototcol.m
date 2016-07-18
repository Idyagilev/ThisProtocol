//
//  ThisPrototcol.m
//  ProtocolsTraining
//
//  Created by new on 18.07.16.
//  Copyright © 2016 F&G. All rights reserved.
//

#import "ThisPrototcol.h"

@implementation ThisPrototcol

- (void) methodHeaderProtocol : (NSString *) stringProtocol {
    
    NSString * string = @"This Working Out";
    
    BOOL bl = YES;
    
    if (!bl) {
        NSLog(@"NO");
    }
    else {
        [self shadowMethod:string];
    }
}

-(void) shadowMethod : (NSString *) shadowString {
    
    [self.delegate methodImplementationProtocol:self stringImplementation:shadowString];
}


@end
