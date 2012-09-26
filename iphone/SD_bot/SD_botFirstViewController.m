//
//  SD_botFirstViewController.m
//  SD_bot
//
//  Created by SuperD on 12/9/20.
//  Copyright (c) 2012年 SuperD. All rights reserved.
//

#import "SD_botFirstViewController.h"
#import "chance.h"
#import "expUIWeb.h"

@interface SD_botFirstViewController ()

@end

@implementation SD_botFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    chanceObj = [[chance alloc] init];
        
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)diceButtonPressed:(id)sender
{

    content.text = [chanceObj dice];
}

- (IBAction)explainButtonPressed:(id)sender
{
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"passcode"]) {
        expUIWeb *destViewController = segue.destinationViewController;
        
        destViewController.url = [NSString stringWithFormat:@"http://superd.tw/a.php?a=%03i",chanceObj.res];
    }
}

@end
