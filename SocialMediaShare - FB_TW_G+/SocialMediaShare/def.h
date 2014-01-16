//
//  def.h
//  BounceIt
//
//  Created by N.Shabeer Mohamed on 01/04/13.
//  Copyright (c) 2013 Greg D'Amico. All rights reserved.
//

#ifndef BounceIt_defs_h
#define BounceIt_defs_h

#import <GooglePlus/GooglePlus.h>
#import <GooglePlus/GPPShare.h>
//Register page tag 
enum
{
    BSpecindexTitle = 0,
    BSpecindexUsername,
    BSpecindexFirstName,
    BSpecindexGender,
    BSpecindexZipCode,
    BSpecindexAge,
    BSpecindexethnicity,
    BSpecindexrelationship,
    BSpecindexPolitical,
    BSpecindexincome,
    BSpecindexDoneButton
};
enum  {
    rotateLeft = 0,
    rotateRight
    }rotationType;

typedef enum {
    kBitStyleTile = 1,
    kBitStyleRow
} BitStyles;

//Alertview Title
#define BAlertTitle                  @"bounceit!"

//Alertview Message
#define BEmailWrong                  @"Invalid email"
#define BUsernameWrong               @"Invalid username"
#define BWrongPassword               @"Password is not in valid format"
#define BVerifyPassword              @"Please retype the correct password"
#define BWelcome                     @"Welcome To Bounceit"
#define BComments                    @"comments sent"
#define BEmptyEmail                  @"Please enter email"
#define BEmptyUserName               @"Please enter username"
#define BEmptyPassword               @"Please enter password"
#define BEmptyVerifyPassword         @"Please verify password"
#define BEmptyFirstname              @"Please enter your firstname"
#define BEmptyLastname               @"Please enter your lastname"
#define BEmptyGender                 @"Please select gender"
#define BEmptyZipcode                @"Please enter zipcode"
#define BEmptyDateOfBirth            @"Please select your birth date"
#define BIsAdultByDateOfBirth        @"You should be 13 years and over"
#define BEmptyEthinicityId           @"Please select ethnicity"
#define BEmptyRelationshipId         @"Please select relationship"
#define BEmptyComment                @"Please enter comments"
#define BEmptyQuestion               @"Please enter question"
#define BEmptyImage                  @"Please select an image"
#define BInternetConnection          @"Please check your internet connection and try again"
#define BNotFollowingOrNoBits        @"You are not following anyone yet or they have not created bits"

//AlertView BtnStyle
#define BDefault                     @"Ok"
#define BReCall                      @"TryAnother"
#define BCancel                      @"Cancel"

//Styles
#define BBaseFontName                @"GothamUltra"

//WebUrlNames
#define BUserURl                     @"UserUrl"
#define BBitURl                      @"BitUrl"
#define BFollowingURl                @"FollowingUrl"
#define BShareUrl                    @"ShareUrl"

//WebMethodNames
#define BUserMethod                  @"userApi"
#define BUserLoginMethod             @"Login"
#define BFacebookLoginMethod         @"LoginThroughFacebook"
#define BSelectTopBits               @"SelectTop"
#define BSelectMostRecent            @"MostRecent"
#define BCreateBits                  @"create"
#define BUploadBit                   @"UploadFile"
#define BFollowingAdd                @"Add"
#define BFollowingRemove             @"Remove"
#define BFollowingTopBits            @"GetFollowingTopBits"
#define BFollowingMostRecent         @"GetFollowingMostRecent"

//Tag

#define BBounceItHeaderTag          10000

//Hash Tag in twitter

#define TwitterHashTag               @"#bounceit!"

//AppSettings

#define kFollowUserName             @"FollowUser"
#define kFollowUserValueYes         @"Yes"
#define kFollowUserValueNo          @"No"

#define kMainViewTypeName           @"MainViewType"
#define kMainViewTypeMostRecent     @"0"
#define kMainViewTypeTrending       @"1"

//Social Media Keys
#define BTwitterSecretKey               @"TwitterSecretKey"
#define BTwitterConsumerKey             @"TwitterConsumerKey"
#define BGooglePlusKey                  @"GooglePlusKey"

#define BPlaceHolderImage               @"defBckGnd.png"
#define BFacebookTitleString            @"Facebook"
#define BTwitterTitleString             @"Twitter"
#define BTwitterReplyString             @"TwitterReply"
#define BGoogleplusTitleString          @"Google+"
#endif