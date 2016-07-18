//
//  ThisPrototcol.h
//  ProtocolsTraining
//
//  Created by new on 18.07.16.
//  Copyright © 2016 F&G. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ThisProtocolDelegate;

@interface ThisPrototcol : NSObject

@property (nonatomic, weak) id <ThisProtocolDelegate> delegate;

- (void) methodHeaderProtocol : (NSString *) stringProtocol;

@end

@protocol ThisProtocolDelegate <NSObject>

@required

-(void) methodImplementationProtocol : (ThisPrototcol *) methodImplementation stringImplementation : (NSString *) stringImplementation;

@end