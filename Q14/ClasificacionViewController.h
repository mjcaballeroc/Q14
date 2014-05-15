//
//  ClasificacionViewController.h
//  Quiniela 14
//
//  Created by Miguel Caballero on 15/04/14.
//  Copyright (c) 2014 Comunicación Interactiva DeRu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClasificacionViewController : UIViewController
{ int mainInt;
    NSTimer *timer;
    IBOutlet UIImageView *anuncio;
}
-(IBAction)start:(id)sender;
- (IBAction)banner:(UITapGestureRecognizer *)recognizer2;
@property (strong, nonatomic) IBOutlet UILabel *second;

@property (strong, nonatomic) IBOutlet UIWebView *webb;

@end
