//
//  DWShareHelper.h
//  RealBox
//
//  Created by Thiruvengadam Krishnasamy on 15/10/13.
//  Copyright (c) 2013 TWILIGHT SOFTWARES. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MessageUI/MessageUI.h>
#import "Bit.h"
@interface DWShareHelper : NSObject
@property (nonatomic, strong) UIViewController *currentView;
@property (strong, nonatomic) IBOutlet UIButton *btnShare;

- (void) initTwitterEngine;
- (void) postBitInTwitter : (Bit *) bit withUrl: (NSString *) url;
- (void) postBitInGooglePlus: (Bit *) bit;
- (void) postBitInFacebook: (Bit *) bit;
- (void) readBitInfo: (Bit *) bit;
+(NSString *)convertToBase64: (NSString *)value;
@end
