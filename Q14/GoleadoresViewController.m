//
//  GoleadoresViewController.m
//  Quiniela 14
//
//  Created by Miguel Caballero on 15/04/14.
//  Copyright (c) 2014 Comunicación Interactiva DeRu. All rights reserved.
//

#import "GoleadoresViewController.h"

@interface GoleadoresViewController ()

@end

@implementation GoleadoresViewController

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
    NSString *fullURL = @"http://quiniela14.mx/mundial/resultados.php";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_webb loadRequest:requestObj];
     [self start:nil];
}
-(IBAction)start:(id)sender{
    mainInt = 5;
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countDown) userInfo:nil repeats:YES];
}

- (IBAction)banner:(UITapGestureRecognizer *)recognizer2 {
    if (anuncio.image == [UIImage imageNamed: @"banners-publicidad.png"]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://appderu.com"]];
    }
    else if (anuncio.image == [UIImage imageNamed: @"bellini.png"]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.bellini.com.mx/"]];
    }
    else if (anuncio.image == [UIImage imageNamed: @"bioparque.png"]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://bioparquemexico.mx/"]];
    }
    else if (anuncio.image == [UIImage imageNamed: @"mambocafe.png"]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.mambocafe.com.mx/"]];
    }
}

-(void)countDown{
    mainInt -=1;
    _second.text = [NSString stringWithFormat:@"%i",mainInt];
    if (mainInt == 0) {
        [timer invalidate];
        if (anuncio.image == [UIImage imageNamed: @"banners-publicidad.png"]) {
            [anuncio setImage:[UIImage imageNamed: @"bellini.png"]];
            [self start:nil];
        }
        else if (anuncio.image == [UIImage imageNamed: @"bellini.png"]){
            [anuncio setImage:[UIImage imageNamed: @"bioparque.png"]];
            [self start:nil];
        }
        else if (anuncio.image == [UIImage imageNamed: @"bioparque.png"]){
            [anuncio setImage:[UIImage imageNamed: @"mambocafe.png"]];
            [self start:nil];
        }
        else if (anuncio.image == [UIImage imageNamed: @"mambocafe.png"]){
            [anuncio setImage:[UIImage imageNamed: @"banners-publicidad.png"]];
            [self start:nil];
        }
    }
    
}
- (BOOL)prefersStatusBarHidden {
    return YES;
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

@end
