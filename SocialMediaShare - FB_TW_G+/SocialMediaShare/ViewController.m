//
//  ViewController.m
//  SocialMediaShare
//
//  Created by Thiru on 18/12/13.
//  Copyright (c) 2013 Thiru. All rights reserved.
//

#import "ViewController.h"
#import <Social/Social.h>
#import "DWShareHelper.h"
#import "Bit.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize bit;
DWShareHelper *shareHelperinReaderMode;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    shareHelperinReaderMode = [[DWShareHelper alloc] init];
    //[shareHelperinReaderMode initTwitterEngine];
    [shareHelperinReaderMode setCurrentView:self];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnFB:(id)sender
{
     if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook])
      {
        
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        [controller setInitialText:@"Rokr Testing Share"];
        [controller addURL:[NSURL URLWithString:@"http://www.TaxiCab.com"]];
        //[controller addImage:[UIImage imageNamed:@"Bootscreen_bg.png"]];
        [self presentViewController:controller animated:YES completion:Nil];
     }
     else
    {
            NSString *message = @"It seems that we cannot talk to Facebook at the moment or you have not yet added your Facebook account to this device. Go to the Settings application to add your Facebook account to this device.";
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oops" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
            [alertView show];
    }
    
    
}

-(void)refreshInterfaceBasedOnSignIn
{
    if ([[GPPSignIn sharedInstance] authentication]) {
        // The user is signed in.
        self.signInButton.hidden = YES;
        // Perform other actions here, such as showing a sign-out button
    } else {
        self.signInButton.hidden = NO;
        // Perform other actions here
    }
}


- (void)finishedWithAuth: (GTMOAuth2Authentication *)auth
                   error: (NSError *) error
{
    NSLog(@"Received error %@ and auth object %@",error, auth);
    if (error) {
        // Do some error handling here.
    } else {
        [self refreshInterfaceBasedOnSignIn];
    }
}
 

- (IBAction)btnTwitter:(id)sender
{
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweesheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        
        [tweesheet setInitialText:@"Rokr Testing Share"];
        [tweesheet addURL:[NSURL URLWithString:@"http://www.TaxiCab.com"]];
        //[tweesheet addImage:[UIImage imageNamed:@"Bootscreen_bg.png"]];
        [self presentViewController:tweesheet animated:YES completion:nil];
    }else
    {
        NSString *message = @"It seems that we cannot talk to Twitter at the moment or you have not yet added your Twitter account to this device. Go to the Settings application to add your Twitter account to this device.";
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oops" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [alertView show];
    }

}

- (IBAction)btnGPlus:(id)sender
{
    id<GPPShareBuilder> shareBuilder = [[GPPShare sharedInstance] nativeShareDialog];
    [self postGooglePlus];
    
}

-(void)postGooglePlus
{
    [shareHelperinReaderMode postBitInGooglePlus: self.bit];
}


- (IBAction) didTapShare: (id)sender
{
    // Use the native share dialog in your app:
    id<GPPNativeShareBuilder> shareBuilder = [[GPPShare sharedInstance] nativeShareDialog];
    [shareBuilder setURLToShare:[NSURL URLWithString:@"https://www.example.com/restaurant/sf/1234567/"]];
    
    [shareBuilder setPrefillText:@"txt here"];
    [shareBuilder setContentDeepLinkID:@"rest=1234567"];
    
    [shareBuilder setCallToActionButtonWithLabel:@"RSVP"
                                             URL:[NSURL URLWithString:@"https://www.realboxapp.com"]
                                      deepLinkID:@"rsvp=4815162342"];
    
    [shareBuilder open];
}

- (IBAction)btnPinterest:(id)sender
{
    
    
}


@end
