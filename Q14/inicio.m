//
//  InicioViewController.m
//  Quiniela 14
//
//  Created by Miguel Caballero on 20/04/14.
//  Copyright (c) 2014 Comunicación Interactiva DeRu. All rights reserved.
//

#import "inicio.h"
#import "AppDelegate.h"
#import "principal.h"

@interface inicio ()

@end

@implementation inicio

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)acepto:(id)sender {
    
    if(_onOffSwitch.on) {
        // lights on
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        _nombrer.text = @"aceptado";
        [defaults setValue:_nombrer.text forKey:@"nombreString"];
        [defaults synchronize];
        AppDelegate *sesion = (AppDelegate *) [UIApplication sharedApplication].delegate;
        [sesion resetMainViewController];
    }
    
    else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        _nombrer.text = @"no aceptado";
        [defaults setValue:_nombrer.text forKey:@"nombreString"];
        [defaults synchronize];
        AppDelegate *sesion = (AppDelegate *) [UIApplication sharedApplication].delegate;
        [sesion resetMainViewController];
    }
}

@end
