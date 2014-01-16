//
//  DWShareHelper.m
//  RealBox
//
//  Created by Thiruvengadam Krishnasamy on 15/10/13.
//  Copyright (c) 2013 TWILIGHT SOFTWARES. All rights reserved.
//

#import "DWShareHelper.h"
#import <MessageUI/MessageUI.h>
#import <GooglePlus/GooglePlus.h>
#import <GooglePlus/GPPShare.h>
#import <QuartzCore/QuartzCore.h>
#import "DWShareHelper.h"
#import "AppDelegate.h"
#import "NSData+Base64.h"
@implementation DWShareHelper
@synthesize currentView;

NSString *bitText, *bitImagePath, *bitShareUrl, *bitShortUrl;
Bit *Generalbit;

- (void) initTwitterEngine
{
    //AppDelegate *appdelegate =(AppDelegate*)[[UIApplication sharedApplication]delegate];
    /*if (appdelegate.twitterEngineinAppDelegate) {
        self.twitterEngine = appdelegate.twitterEngineinAppDelegate;
    }
    else
    {
        self.twitterEngine = [[FHSTwitterEngine alloc] initWithConsumerKey:[HelpUtility getServerUrl:BTwitterConsumerKey] andSecret:[HelpUtility getServerUrl:BTwitterSecretKey]];
        appdelegate.twitterEngineinAppDelegate = self.twitterEngine;
    }
    generalTwitterEngine = self.twitterEngine;*/
}

-(void)readBitInfo: (Bit *) bit {
    //NSString *strBitId = [NSString stringWithFormat:@"%d",0]; //bit.bitId];
    bitShareUrl =[NSURL URLWithString:[NSString stringWithFormat:@"%@",@"www.google.com" ]];// ,[self convertToBase64:strBitId]]];
    if(bit.imageAvailable && bit.fullImagePath) {
        bitImagePath = bit.fullImagePath;
    }
    else
        bitImagePath = @"";
    
    if(bit.title)
        bitText = bit.title;
    else
        bitText = @"";
}

-(NSString *)convertToBase64:(NSString *)value
{
    NSData *data = [value dataUsingEncoding:NSUTF8StringEncoding];
    return [data base64EncodedString];
}


#pragma mark - Google+

//Method using to post to Google+
-(void)postBitInGooglePlus:(Bit *)bit
{
    [self readBitInfo:bit];
    //Create a sharebuilder object
    id<GPPShareBuilder> shareBuilder = [[GPPShare sharedInstance] shareDialog];
    
    [shareBuilder setURLToShare:[NSURL URLWithString:[NSString stringWithFormat:@"%@",@"https://plus.google.com/share?url=www.google.com"]]];
    [shareBuilder setPrefillText:@"Check out this great app -  - it is awesome at simplifying all the information I have to worry about as a homeowner"];
    bitImagePath = [[NSBundle mainBundle] pathForResource:@"imgG+" ofType:@"png"];
    NSLog(@"Imagpath - %@",bitImagePath);
    [shareBuilder setTitle:@"TTTT" description:@"Title Here" thumbnailURL:[NSURL URLWithString:bitImagePath]];
    // This line passes the string "rest=1234567" to your native application
    // if somebody opens the link on a supported mobile device
    [shareBuilder setContentDeepLinkID:@"rest=1234567"];
    [shareBuilder open];
}

- (void)finishedSharing:(BOOL)shared
{
    NSLog(@"Shared");
}

@end
