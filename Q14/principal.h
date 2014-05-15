//
//  ViewController.h
//  Quiniela 14
//
//  Created by Miguel Caballero on 12/04/14.
//  Copyright (c) 2014 Comunicación Interactiva DeRu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface principal : UIViewController <UIAlertViewDelegate>
{ int mainInt;
    NSTimer *timer;
    IBOutlet UIImageView *anuncio;
}

@property (strong, nonatomic) IBOutlet UIWebView *weeeeb;
@property (strong, nonatomic) IBOutlet UILabel *second;

-(IBAction)presionlarga:(UILongPressGestureRecognizer *)recognizer;
-(IBAction)presiones:(UITapGestureRecognizer *)recognizer;
-(IBAction)start:(id)sender;
- (IBAction)banner:(UITapGestureRecognizer *)recognizer2;


@end
