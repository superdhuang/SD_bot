//
//  SD_botFirstViewController.h
//  SD_bot
//
//  Created by SuperD on 12/9/20.
//  Copyright (c) 2012年 SuperD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "chance.h"

@interface SD_botFirstViewController : UIViewController{
    IBOutlet UITextView *content;
    chance *chanceObj;
}

@end

