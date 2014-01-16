//
//  Bit.h
//  BounceIt
//
//  Created by ETI-MAC3 on 22/04/13.
//  Copyright (c) 2013 Greg D'Amico. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bit : NSObject

@property (assign, readonly) NSInteger bitId;
@property (copy, readonly) NSString *bitIdAsString;
@property (copy, readonly) NSString *title;
@property (copy, readonly) NSString *imageName;
@property (copy, readonly) NSString *fullImagePath;
@property (copy, readonly) NSString *thumbnailImagePath;
@property (copy, readonly) NSDate *publishedOn;
@property (assign, readonly) long createdBy;
@property (copy, readonly) NSString *createdByName;
@property (assign, readonly) long commentsCount;
@property (assign, readonly) long responsesCount;

-(id)initWithDictionary: (NSDictionary *)data;
-(BOOL)imageAvailable;
-(void)incrementResponse;

@end
