//
//  easteregg.h
//  Quiniela 14
//
//  Created by Miguel Caballero on 21/04/14.
//  Copyright (c) 2014 Comunicación Interactiva DeRu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface easteregg : UIViewController <MFMailComposeViewControllerDelegate>
- (IBAction)showMail:(id)sender;

@end
