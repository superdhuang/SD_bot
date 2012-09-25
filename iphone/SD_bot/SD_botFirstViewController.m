//
//  SD_botFirstViewController.m
//  SD_bot
//
//  Created by SuperD on 12/9/20.
//  Copyright (c) 2012年 SuperD. All rights reserved.
//

#import "SD_botFirstViewController.h"
#import "chance.h"
#import "UIWebControll.h"

@interface SD_botFirstViewController ()

@end

@implementation SD_botFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    chanceObj = [[chance alloc] init];
    
    //    NSURL *url = [NSURL URLWithString:@""];
    //    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //    [webview loadRequest:request];
    //NSLog(@"%@", chanceObj.res);

    
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)diceButtonPressed:(id)sender
{

    content.text = [chanceObj dice];
}

- (IBAction)explainButtonPressed:(id)sender
{
    NSString *URLString = [NSString stringWithFormat:@"http://superd.tw/a.php?a=%03i",chanceObj.res];
    NSLog(@"%@", URLString);
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:URLString]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
