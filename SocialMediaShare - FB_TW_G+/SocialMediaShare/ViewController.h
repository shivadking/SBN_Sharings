//
//  ViewController.h
//  SocialMediaShare
//
//  Created by Thiru on 18/12/13.
//  Copyright (c) 2013 Thiru. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Bit.h"

@interface ViewController : UIViewController<GPPShareDelegate,GPPShareBuilder,GPPDeepLinkDelegate,GPPSignInDelegate>
{
    Bit *bit;
}

@property (strong, nonatomic) Bit *bit;
@property (retain, nonatomic) IBOutlet GPPSignInButton *signInButton;


- (IBAction)btnFB:(id)sender;
- (IBAction)btnTwitter:(id)sender;
- (IBAction)btnGPlus:(id)sender;
- (IBAction)btnPinterest:(id)sender;

@end
