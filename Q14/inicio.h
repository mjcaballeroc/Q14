//
//  InicioViewController.h
//  Quiniela 14
//
//  Created by Miguel Caballero on 20/04/14.
//  Copyright (c) 2014 Comunicación Interactiva DeRu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface inicio: UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nombrer;
@property (strong, nonatomic) IBOutlet UISwitch *onOffSwitch;
- (IBAction)acepto:(id)sender;
@end
