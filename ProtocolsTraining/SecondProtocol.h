//
//  SecondProtocol.h
//  ProtocolsTraining
//
//  Created by new on 18.07.16.
//  Copyright © 2016 F&G. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SecondProtocolDelegate;

@interface SecondProtocol : NSObject

@property (nonatomic, weak) id <SecondProtocolDelegate> delegate;

- (void) secondMethodHeader : (NSString *) headerString;

@end

@protocol SecondProtocolDelegate <NSObject>

- (void) impSecondMethod : (SecondProtocol *) impSecMethod secondString : (NSString *) secondString;

@end
