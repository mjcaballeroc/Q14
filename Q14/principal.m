//
//  ViewController.m
//  Quiniela 14
//
//  Created by Miguel Caballero on 12/04/14.
//  Copyright (c) 2014 Comunicación Interactiva DeRu. All rights reserved.
//

#import "principal.h"
#import "AppDelegate.h"
#import "inicio.h"
#import "easteregg.h"
#import "Internet.h"

@interface principal ()

@end

@implementation principal

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *fullURL = @"http://quiniela14.mx/mundial/online.php";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_weeeeb loadRequest:requestObj];
    
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    NetworkStatus internetStatus = [reachability currentReachabilityStatus];
    
    if(internetStatus == NotReachable) {
        UIAlertView *errorView;
        
        errorView = [[UIAlertView alloc]
                     initWithTitle: NSLocalizedString(@"Error de Conexión", @"Error de Conexión")
                     message: NSLocalizedString(@"Esta aplicación requiere una conexión a Internet para mostrar la información, conéctate a Internet para evitar problemas.", @"Error de Conexión")
                     delegate: self
                     cancelButtonTitle: NSLocalizedString(@"Cerrar", @"Error de Conexión") otherButtonTitles: nil];
        [errorView show];
    }
                [self start:nil]; //inicia el contador para la publicidad
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
    [self start:nil]; //inicia el contador para la publicidad
}
-  (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        exit(0);
    }
}

-(void)webViewDidFinishLoad:(UIWebView *)webView
{
	
	[webView stringByEvaluatingJavaScriptFromString:@"{\
     var a = document.getElementsByTagName(\"a\"); \
     for (var i=0; i<a.length; i++) \
     a[i].target = \"_self\";\
     }"];
}

-(IBAction)presionlarga:(UILongPressGestureRecognizer *)recognizer {
    easteregg *viewControllerB = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([easteregg class])];
    [self presentViewController:viewControllerB animated:YES completion:nil];
}

-(IBAction)presiones:(UITapGestureRecognizer *)recognizer{
    UIAlertView *message = [[UIAlertView alloc]initWithTitle:@"Lo siento" message:@"Así no encontrarás nada oculto aquí" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil];
    [message show];}

@end
