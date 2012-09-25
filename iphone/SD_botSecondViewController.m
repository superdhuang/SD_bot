//
//  SD_botSecondViewController.m
//  SD_bot
//
//  Created by SuperD on 12/9/20.
//  Copyright (c) 2012年 SuperD. All rights reserved.
//

#import "SD_botSecondViewController.h"

@interface SD_botSecondViewController ()

@end

@implementation SD_botSecondViewController
NSInteger dicecnt = 0;
NSInteger dicesucc = 0;
NSInteger dicefail = 0;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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

- (IBAction)diceButtonPressed:(id)sender
{
    dicecnt++;
    UIImage *succ = [UIImage imageNamed:@"succ.jpg"];
    UIImage *lunar = [UIImage imageNamed:@"lunar.jpg"];
    UIImage *laugh = [UIImage imageNamed:@"laugh.jpg"];
    
    switch (arc4random() % 4) {
        case 0:
            diceResLabel.text = @"聖杯";
            [diceImageView setImage:succ];
            dicesucc++;
            break;
        case 1:
            diceResLabel.text = @"聖杯";
            [diceImageView setImage:succ];
            dicesucc++;
            break;
        case 2:
            diceResLabel.text = @"氣杯";
            [diceImageView setImage:lunar];
            dicefail++;
            break;
        case 3:
            diceResLabel.text = @"笑杯";
            [diceImageView setImage:laugh];
            dicefail++;
            break;
        default:
            break;
    }
    dictSuccLabel.text = [NSString stringWithFormat:@"聖杯數:%d",dicesucc];
    dictFailLabel.text = [NSString stringWithFormat:@"沒杯數:%d",dicefail];
    dictCntLabel.text  = [NSString stringWithFormat:@"筊杯數:%d",dicecnt];
}

- (IBAction)resetButtonPressed:(id)sender
{
    dicesucc = 0;
    dicefail = 0;
    dicecnt  = 0;

    dictSuccLabel.text = [NSString stringWithFormat:@"聖杯數:%d",dicesucc];
    dictFailLabel.text = [NSString stringWithFormat:@"沒杯數:%d",dicefail];
    dictCntLabel.text  = [NSString stringWithFormat:@"筊杯數:%d",dicecnt];
}
@end
