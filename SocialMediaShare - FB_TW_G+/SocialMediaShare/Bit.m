//
//  Bit.m
//  BounceIt
//
//  Created by ETI-MAC3 on 22/04/13.
//  Copyright (c) 2013 Greg D'Amico. All rights reserved.
//

#import "Bit.h"

@interface Bit() {
    
} 

@property (assign, readwrite) NSInteger bitId;
@property (copy, readwrite) NSString *bitIdAsString;
@property (copy, readwrite) NSString *title;
@property (copy, readwrite) NSString *imageName;
@property (copy, readwrite) NSString *fullImagePath;
@property (copy, readwrite) NSString *thumbnailImagePath;
@property (copy, readwrite) NSDate *publishedOn;
@property (assign, readwrite) long createdBy;
@property (copy, readwrite) NSString *createdByName;
@property (assign, readwrite) long commentsCount;
@property (assign, readwrite) long responsesCount;

@end

@implementation Bit

-(id)initWithDictionary: (NSDictionary *)data {
    if(self = [super init])
    {
        self.bitId = [[data objectForKey:@"Id"] integerValue];
        self.bitIdAsString = [data objectForKey:@"Id"];
        self.title = [data objectForKey:@"Title"];
        self.imageName = [data objectForKey:@"ImageName"];
        self.fullImagePath = [data objectForKey:@"FullImagePath"];
        self.thumbnailImagePath = [data objectForKey:@"ThumbnailImagePath"];
        //self.publishedOn = [HelpUtility stringToDate:[data objectForKey:@"PublishedOn"]];
        self.createdBy = [[data objectForKey:@"CreatedBy"] longValue];
        self.createdByName = [data objectForKey:@"CreatedByName"];
        self.commentsCount = [[data objectForKey:@"CommentsCount"] longValue];
        self.responsesCount = [[data objectForKey:@"ResponsesCount"] longValue];
    }
    
    return self;
}

-(BOOL)imageAvailable {
    return self.imageName != NULL && self.imageName.length > 0;
}
-(void)incrementResponse
{
    self.responsesCount ++;
}
@end
