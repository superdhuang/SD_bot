//
//  SD_botFirstViewController.h
//  SD_bot
//
//  Created by SuperD on 12/9/20.
//  Copyright (c) 2012年 SuperD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "chance.h"

@interface SD_botFirstViewController : UIViewController <UIWebViewDelegate>{
    IBOutlet UITextView *content;
    IBOutlet UIWebView *expweb;
    chance *chanceObj; // = [chance alloc];    
}


//@property (nonatomic, retain) IBOutlet UIWebView *expweb;

@end

