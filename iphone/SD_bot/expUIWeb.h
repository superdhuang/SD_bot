//
//  expUIWeb.h
//  SD_bot
//
//  Created by SuperD on 12/9/25.
//  Copyright (c) 2012年 SuperD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface expUIWeb : UIViewController
{
    IBOutlet UIWebView *expWebView;
}
    
@property (nonatomic,retain) NSString *url;

@end
