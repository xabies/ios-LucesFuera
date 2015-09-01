//
//  JuegoViewController.m
//  LucesFuera
//
//  Created by xabi on 15/06/2013.
//  Copyright (c) 2013 Xabi. All rights reserved.
//

#import "JuegoViewController.h"

@interface JuegoViewController ()

@end

@implementation JuegoViewController

@synthesize imagen00;
@synthesize imagen01;
@synthesize imagen02;
@synthesize imagen03;
@synthesize imagen04;

@synthesize imagen10;
@synthesize imagen11;
@synthesize imagen12;
@synthesize imagen13;
@synthesize imagen14;

@synthesize imagen20;
@synthesize imagen21;
@synthesize imagen22;
@synthesize imagen23;
@synthesize imagen24;

@synthesize imagen30;
@synthesize imagen31;
@synthesize imagen32;
@synthesize imagen33;
@synthesize imagen34;

@synthesize imagen40;
@synthesize imagen41;
@synthesize imagen42;
@synthesize imagen43;
@synthesize imagen44;


int nivel;
int tablero[5][5];

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
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    nivel=[defaults integerForKey:@"nivel"];
    if(nivel == 0){
        nivel=1;
    }
    [self cargarTablero:nivel];
    [self refrescarTablero];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)refrescarTablero
{
 
    // FILA 0
    if(tablero[0][0]==0)
    {
        imagen00.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen00.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[0][1]==0)
    {
        imagen01.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen01.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[0][2]==0)
    {
        imagen02.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen02.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[0][3]==0)
    {
        imagen03.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen03.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[0][4]==0)
    {
        imagen04.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen04.image=[UIImage imageNamed:@"on"];
    }
    
    
    // FILA 1
    if(tablero[1][0]==0)
    {
        imagen10.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen10.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[1][1]==0)
    {
        imagen11.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen11.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[1][2]==0)
    {
        imagen12.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen12.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[1][3]==0)
    {
        imagen13.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen13.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[1][4]==0)
    {
        imagen14.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen14.image=[UIImage imageNamed:@"on"];
    }

    
    // FILA 2
    if(tablero[2][0]==0)
    {
        imagen20.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen20.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[2][1]==0)
    {
        imagen21.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen21.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[2][2]==0)
    {
        imagen22.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen22.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[2][3]==0)
    {
        imagen23.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen23.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[2][4]==0)
    {
        imagen24.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen24.image=[UIImage imageNamed:@"on"];
    }
    
    // FILA 3
    if(tablero[3][0]==0)
    {
        imagen30.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen30.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[3][1]==0)
    {
        imagen31.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen31.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[3][2]==0)
    {
        imagen32.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen32.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[3][3]==0)
    {
        imagen33.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen33.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[3][4]==0)
    {
        imagen34.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen34.image=[UIImage imageNamed:@"on"];
    }


    // FILA 4
    if(tablero[4][0]==0)
    {
        imagen40.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen40.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[4][1]==0)
    {
        imagen41.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen41.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[4][2]==0)
    {
        imagen42.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen42.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[4][3]==0)
    {
        imagen43.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen43.image=[UIImage imageNamed:@"on"];
    }
    
    if(tablero[4][4]==0)
    {
        imagen44.image=[UIImage imageNamed:@"off"];
    }
    else{
        imagen44.image=[UIImage imageNamed:@"on"];
    }

}

-(void)cargarTablero:(int) nivel
{
    
    if(nivel==1)
    {
        tablero[0][0]=1;
        tablero[0][1]=0;
        tablero[0][2]=0;
        tablero[0][3]=0;
        tablero[0][4]=0;
        
        tablero[1][0]=0;
        tablero[1][1]=1;
        tablero[1][2]=0;
        tablero[1][3]=0;
        tablero[1][4]=0;
        
        tablero[2][0]=0;
        tablero[2][1]=0;
        tablero[2][2]=1;
        tablero[2][3]=0;
        tablero[2][4]=0;
        
        tablero[3][0]=0;
        tablero[3][1]=0;
        tablero[3][2]=0;
        tablero[3][3]=1;
        tablero[3][4]=0;
        
        tablero[4][0]=0;
        tablero[4][1]=0;
        tablero[4][2]=0;
        tablero[4][3]=0;
        tablero[4][4]=1;
    }
    else{
        
        tablero[0][0]=1;
        tablero[0][1]=0;
        tablero[0][2]=0;
        tablero[0][3]=1;
        tablero[0][4]=1;
        
        tablero[1][0]=0;
        tablero[1][1]=0;
        tablero[1][2]=1;
        tablero[1][3]=0;
        tablero[1][4]=0;
        
        tablero[2][0]=0;
        tablero[2][1]=1;
        tablero[2][2]=0;
        tablero[2][3]=1;
        tablero[2][4]=0;
        
        tablero[3][0]=1;
        tablero[3][1]=0;
        tablero[3][2]=1;
        tablero[3][3]=0;
        tablero[3][4]=0;
        
        tablero[4][0]=1;
        tablero[4][1]=1;
        tablero[4][2]=0;
        tablero[4][3]=0;
        tablero[4][4]=1;

        
    }
}

-(void)comprobarCompletado
{
    Boolean completado=YES;
    for(int i=0;i<5;i++)
    {
        for(int j=0;j<5;j++)
        {
            if(tablero[i][j]==1){
                completado=NO;
                break;
            }
        }
    }
    
    if(completado)
    {
        UIAlertView *dialogo = [[UIAlertView alloc] initWithTitle:@"Luces Fuera" message:@"Enhorabuena. Has completado el nivel" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [dialogo show];
        NSLog(@"Nivel completado!!!");
        nivel++;
        
        NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
        [defaults setInteger:nivel forKey:@"nivel"];
        
        [self cargarTablero:nivel];
        [self refrescarTablero];
    }
    else
    {
        NSLog(@"Tadavia NO se completo el juego");
    }
}

-(IBAction)pulsa00:(id)sender
{
    
    // YO
    if(tablero[0][0]==0)
    {
        tablero[0][0]=1;
    }
    else
    {
        tablero[0][0]=0;
    }
    
    // Arriba
    
    // Abajo
    if(tablero[1][0]==0)
    {
        tablero[1][0]=1;
    }
    else
    {
        tablero[1][0]=0;
    }
    
    // Derecha
    if(tablero[0][1]==0)
    {
        tablero[0][1]=1;
    }
    else
    {
        tablero[0][1]=0;
    }
    
    // Izquierda
    
    [self refrescarTablero];
    [self comprobarCompletado];
}



-(IBAction)pulsa01:(id)sender
{
    // YO
    if(tablero[0][1]==0){
        tablero[0][1]=1;
    }
    else{
        tablero[0][1]=0;
    }
    // ARRIBA
    
    // ABAJO
    if(tablero[1][1]==0){
        tablero[1][1]=1;
    }
    else{
        tablero[1][1]=0;
    }
    
    // DERECHA
    if(tablero[0][2]==0){
        tablero[0][2]=1;
    }
    else{
        tablero[0][2]=0;
    }
    
    // IZQUIERDA
    if(tablero[0][0]==0){
        tablero[0][0]=1;
    }
    else{
        tablero[0][0]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}



-(IBAction)pulsa02:(id)sender
{
    // YO
    if(tablero[0][2]==0){
        tablero[0][2]=1;
    }
    else{
        tablero[0][2]=0;
    }
    // ARRIBA
    
    // ABAJO
    if(tablero[1][2]==0){
        tablero[1][2]=1;
    }
    else{
        tablero[1][2]=0;
    }
    
    // DERECHA
    if(tablero[0][3]==0){
        tablero[0][3]=1;
    }
    else{
        tablero[0][3]=0;
    }
    
    // IZQUIERDA
    if(tablero[0][1]==0){
        tablero[0][1]=1;
    }
    else{
        tablero[0][1]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}


-(IBAction)pulsa03:(id)sender
{
    // YO
    if(tablero[0][3]==0){
        tablero[0][3]=1;
    }
    else{
        tablero[0][3]=0;
    }
    // ARRIBA
    
    // ABAJO
    if(tablero[1][3]==0){
        tablero[1][3]=1;
    }
    else{
        tablero[1][3]=0;
    }
    
    // DERECHA
    if(tablero[0][4]==0){
        tablero[0][4]=1;
    }
    else{
        tablero[0][4]=0;
    }
    
    // IZQUIERDA
    if(tablero[0][2]==0){
        tablero[0][2]=1;
    }
    else{
        tablero[0][2]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}



-(IBAction)pulsa04:(id)sender
{
    // YO
    if(tablero[0][4]==0){
        tablero[0][4]=1;
    }
    else{
        tablero[0][4]=0;
    }
    // ARRIBA
    
    // ABAJO
    if(tablero[1][4]==0){
        tablero[1][4]=1;
    }
    else{
        tablero[1][4]=0;
    }
    
    // DERECHA
   
    
    // IZQUIERDA
    if(tablero[0][3]==0){
        tablero[0][3]=1;
    }
    else{
        tablero[0][3]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}










////
////
//// FILA 1
////
////


-(IBAction)pulsa10:(id)sender
{
    // YO
    if(tablero[1][0]==0){
        tablero[1][0]=1;
    }
    else{
        tablero[1][0]=0;
    }
    // ARRIBA
    if(tablero[0][0]==0){
        tablero[0][0]=1;
    }
    else{
        tablero[0][0]=0;
    }
    
    // ABAJO
    if(tablero[2][0]==0){
        tablero[2][0]=1;
    }
    else{
        tablero[2][0]=0;
    }
    
    // DERECHA
    if(tablero[1][1]==0){
        tablero[1][1]=1;
    }
    else{
        tablero[1][1]=0;
    }
    
    // IZQUIERDA
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}




-(IBAction)pulsa11:(id)sender
{
    // YO
    if(tablero[1][1]==0){
        tablero[1][1]=1;
    }
    else{
        tablero[1][1]=0;
    }
    // ARRIBA
    if(tablero[0][1]==0){
        tablero[0][1]=1;
    }
    else{
        tablero[0][1]=0;
    }
    
    // ABAJO
    if(tablero[2][1]==0){
        tablero[2][1]=1;
    }
    else{
        tablero[2][1]=0;
    }
    
    // DERECHA
    if(tablero[1][2]==0){
        tablero[1][2]=1;
    }
    else{
        tablero[1][2]=0;
    }
    
    // IZQUIERDA
    if(tablero[1][0]==0){
        tablero[1][0]=1;
    }
    else{
        tablero[1][0]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}




-(IBAction)pulsa12:(id)sender
{
    // YO
    if(tablero[1][2]==0){
        tablero[1][2]=1;
    }
    else{
        tablero[1][2]=0;
    }
    // ARRIBA
    if(tablero[0][2]==0){
        tablero[0][2]=1;
    }
    else{
        tablero[0][2]=0;
    }
    
    // ABAJO
    if(tablero[2][2]==0){
        tablero[2][2]=1;
    }
    else{
        tablero[2][2]=0;
    }
    
    // DERECHA
    if(tablero[1][3]==0){
        tablero[1][3]=1;
    }
    else{
        tablero[1][3]=0;
    }
    
    // IZQUIERDA
    if(tablero[1][1]==0){
        tablero[1][1]=1;
    }
    else{
        tablero[1][1]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}




-(IBAction)pulsa13:(id)sender
{
    // YO
    if(tablero[1][3]==0){
        tablero[1][3]=1;
    }
    else{
        tablero[1][3]=0;
    }
    // ARRIBA
    if(tablero[0][3]==0){
        tablero[0][3]=1;
    }
    else{
        tablero[0][3]=0;
    }
    
    // ABAJO
    if(tablero[2][3]==0){
        tablero[2][3]=1;
    }
    else{
        tablero[2][3]=0;
    }
    
    // DERECHA
    if(tablero[1][4]==0){
        tablero[1][4]=1;
    }
    else{
        tablero[1][4]=0;
    }
    
    // IZQUIERDA
    if(tablero[1][2]==0){
        tablero[1][2]=1;
    }
    else{
        tablero[1][2]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}




-(IBAction)pulsa14:(id)sender
{
    // YO
    if(tablero[1][4]==0){
        tablero[1][4]=1;
    }
    else{
        tablero[1][4]=0;
    }
    // ARRIBA
    if(tablero[0][4]==0){
        tablero[0][4]=1;
    }
    else{
        tablero[0][4]=0;
    }
    
    // ABAJO
    if(tablero[2][4]==0){
        tablero[2][4]=1;
    }
    else{
        tablero[2][4]=0;
    }
    
    // DERECHA

    
    // IZQUIERDA
    if(tablero[1][3]==0){
        tablero[1][3]=1;
    }
    else{
        tablero[1][3]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}









////
////
//// FILA 2
////
////


-(IBAction)pulsa20:(id)sender
{
    // YO
    if(tablero[2][0]==0){
        tablero[2][0]=1;
    }
    else{
        tablero[2][0]=0;
    }
    // ARRIBA
    if(tablero[1][0]==0){
        tablero[1][0]=1;
    }
    else{
        tablero[1][0]=0;
    }
    
    // ABAJO
    if(tablero[3][0]==0){
        tablero[3][0]=1;
    }
    else{
        tablero[3][0]=0;
    }
    
    // DERECHA
    if(tablero[2][1]==0){
        tablero[2][1]=1;
    }
    else{
        tablero[2][1]=0;
    }
    
    // IZQUIERDA
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}




-(IBAction)pulsa21:(id)sender
{
    // YO
    if(tablero[2][1]==0){
        tablero[2][1]=1;
    }
    else{
        tablero[2][1]=0;
    }
    // ARRIBA
    if(tablero[1][1]==0){
        tablero[1][1]=1;
    }
    else{
        tablero[1][1]=0;
    }
    
    // ABAJO
    if(tablero[3][1]==0){
        tablero[3][1]=1;
    }
    else{
        tablero[3][1]=0;
    }
    
    // DERECHA
    if(tablero[2][2]==0){
        tablero[2][2]=1;
    }
    else{
        tablero[2][2]=0;
    }
    
    // IZQUIERDA
    if(tablero[2][0]==0){
        tablero[2][0]=1;
    }
    else{
        tablero[2][0]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}




-(IBAction)pulsa22:(id)sender
{
    // YO
    if(tablero[2][2]==0){
        tablero[2][2]=1;
    }
    else{
        tablero[2][2]=0;
    }
    // ARRIBA
    if(tablero[1][2]==0){
        tablero[1][2]=1;
    }
    else{
        tablero[1][2]=0;
    }
    
    // ABAJO
    if(tablero[3][2]==0){
        tablero[3][2]=1;
    }
    else{
        tablero[3][2]=0;
    }
    
    // DERECHA
    if(tablero[2][3]==0){
        tablero[2][3]=1;
    }
    else{
        tablero[2][3]=0;
    }
    
    // IZQUIERDA
    if(tablero[2][1]==0){
        tablero[2][1]=1;
    }
    else{
        tablero[2][1]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}




-(IBAction)pulsa23:(id)sender
{
    // YO
    if(tablero[2][3]==0){
        tablero[2][3]=1;
    }
    else{
        tablero[2][3]=0;
    }
    // ARRIBA
    if(tablero[1][3]==0){
        tablero[1][3]=1;
    }
    else{
        tablero[1][3]=0;
    }
    
    // ABAJO
    if(tablero[3][3]==0){
        tablero[3][3]=1;
    }
    else{
        tablero[3][3]=0;
    }
    
    // DERECHA
    if(tablero[2][4]==0){
        tablero[2][4]=1;
    }
    else{
        tablero[2][4]=0;
    }
    
    // IZQUIERDA
    if(tablero[2][2]==0){
        tablero[2][2]=1;
    }
    else{
        tablero[2][2]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}




-(IBAction)pulsa24:(id)sender
{
    // YO
    if(tablero[2][4]==0){
        tablero[2][4]=1;
    }
    else{
        tablero[2][4]=0;
    }
    // ARRIBA
    if(tablero[1][4]==0){
        tablero[1][4]=1;
    }
    else{
        tablero[1][4]=0;
    }
    
    // ABAJO
    if(tablero[3][4]==0){
        tablero[3][4]=1;
    }
    else{
        tablero[3][4]=0;
    }
    
    // DERECHA
    
    
    // IZQUIERDA
    if(tablero[2][3]==0){
        tablero[2][3]=1;
    }
    else{
        tablero[2][3]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}












////
////
//// FILA 3
////
////


-(IBAction)pulsa30:(id)sender
{
    // YO
    if(tablero[3][0]==0){
        tablero[3][0]=1;
    }
    else{
        tablero[3][0]=0;
    }
    // ARRIBA
    if(tablero[2][0]==0){
        tablero[2][0]=1;
    }
    else{
        tablero[2][0]=0;
    }
    
    // ABAJO
    if(tablero[4][0]==0){
        tablero[4][0]=1;
    }
    else{
        tablero[4][0]=0;
    }
    
    // DERECHA
    if(tablero[3][1]==0){
        tablero[3][1]=1;
    }
    else{
        tablero[3][1]=0;
    }
    
    // IZQUIERDA
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}




-(IBAction)pulsa31:(id)sender
{
    // YO
    if(tablero[3][1]==0){
        tablero[3][1]=1;
    }
    else{
        tablero[3][1]=0;
    }
    // ARRIBA
    if(tablero[2][1]==0){
        tablero[2][1]=1;
    }
    else{
        tablero[2][1]=0;
    }
    
    // ABAJO
    if(tablero[4][1]==0){
        tablero[4][1]=1;
    }
    else{
        tablero[4][1]=0;
    }
    
    // DERECHA
    if(tablero[3][2]==0){
        tablero[3][2]=1;
    }
    else{
        tablero[3][2]=0;
    }
    
    // IZQUIERDA
    if(tablero[3][0]==0){
        tablero[3][0]=1;
    }
    else{
        tablero[3][0]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}




-(IBAction)pulsa32:(id)sender
{
    // YO
    if(tablero[3][2]==0){
        tablero[3][2]=1;
    }
    else{
        tablero[3][2]=0;
    }
    // ARRIBA
    if(tablero[2][2]==0){
        tablero[2][2]=1;
    }
    else{
        tablero[2][2]=0;
    }
    
    // ABAJO
    if(tablero[4][2]==0){
        tablero[4][2]=1;
    }
    else{
        tablero[4][2]=0;
    }
    
    // DERECHA
    if(tablero[3][3]==0){
        tablero[3][3]=1;
    }
    else{
        tablero[3][3]=0;
    }
    
    // IZQUIERDA
    if(tablero[3][1]==0){
        tablero[3][1]=1;
    }
    else{
        tablero[3][1]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}




-(IBAction)pulsa33:(id)sender
{
    // YO
    if(tablero[3][3]==0){
        tablero[3][3]=1;
    }
    else{
        tablero[3][3]=0;
    }
    // ARRIBA
    if(tablero[2][3]==0){
        tablero[2][3]=1;
    }
    else{
        tablero[2][3]=0;
    }
    
    // ABAJO
    if(tablero[4][3]==0){
        tablero[4][3]=1;
    }
    else{
        tablero[4][3]=0;
    }
    
    // DERECHA
    if(tablero[3][4]==0){
        tablero[3][4]=1;
    }
    else{
        tablero[3][4]=0;
    }
    
    // IZQUIERDA
    if(tablero[3][2]==0){
        tablero[3][2]=1;
    }
    else{
        tablero[3][2]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}




-(IBAction)pulsa34:(id)sender
{
    // YO
    if(tablero[3][4]==0){
        tablero[3][4]=1;
    }
    else{
        tablero[3][4]=0;
    }
    // ARRIBA
    if(tablero[2][4]==0){
        tablero[2][4]=1;
    }
    else{
        tablero[2][4]=0;
    }
    
    // ABAJO
    if(tablero[4][4]==0){
        tablero[4][4]=1;
    }
    else{
        tablero[4][4]=0;
    }
    
    // DERECHA
    
    
    // IZQUIERDA
    if(tablero[3][3]==0){
        tablero[3][3]=1;
    }
    else{
        tablero[3][3]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}







////
////
//// FILA 4
////
////


-(IBAction)pulsa40:(id)sender
{
    // YO
    if(tablero[4][0]==0){
        tablero[4][0]=1;
    }
    else{
        tablero[4][0]=0;
    }
    // ARRIBA
    if(tablero[3][0]==0){
        tablero[3][0]=1;
    }
    else{
        tablero[3][0]=0;
    }
    
    // ABAJO
    
    
    // DERECHA
    if(tablero[4][1]==0){
        tablero[4][1]=1;
    }
    else{
        tablero[4][1]=0;
    }
    
    // IZQUIERDA
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}




-(IBAction)pulsa41:(id)sender
{
    // YO
    if(tablero[4][1]==0){
        tablero[4][1]=1;
    }
    else{
        tablero[4][1]=0;
    }
    // ARRIBA
    if(tablero[3][1]==0){
        tablero[3][1]=1;
    }
    else{
        tablero[3][1]=0;
    }
    
    // ABAJO

    
    // DERECHA
    if(tablero[4][2]==0){
        tablero[4][2]=1;
    }
    else{
        tablero[4][2]=0;
    }
    
    // IZQUIERDA
    if(tablero[4][0]==0){
        tablero[4][0]=1;
    }
    else{
        tablero[4][0]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}




-(IBAction)pulsa42:(id)sender
{
    // YO
    if(tablero[4][2]==0){
        tablero[4][2]=1;
    }
    else{
        tablero[4][2]=0;
    }
    // ARRIBA
    if(tablero[3][2]==0){
        tablero[3][2]=1;
    }
    else{
        tablero[3][2]=0;
    }
    
    // ABAJO

    
    // DERECHA
    if(tablero[4][3]==0){
        tablero[4][3]=1;
    }
    else{
        tablero[4][3]=0;
    }
    
    // IZQUIERDA
    if(tablero[4][1]==0){
        tablero[4][1]=1;
    }
    else{
        tablero[4][1]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}




-(IBAction)pulsa43:(id)sender
{
    // YO
    if(tablero[4][3]==0){
        tablero[4][3]=1;
    }
    else{
        tablero[4][3]=0;
    }
    // ARRIBA
    if(tablero[3][3]==0){
        tablero[3][3]=1;
    }
    else{
        tablero[3][3]=0;
    }
    
    // ABAJO

    
    // DERECHA
    if(tablero[4][4]==0){
        tablero[4][4]=1;
    }
    else{
        tablero[4][4]=0;
    }
    
    // IZQUIERDA
    if(tablero[4][2]==0){
        tablero[4][2]=1;
    }
    else{
        tablero[4][2]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}




-(IBAction)pulsa44:(id)sender
{
    // YO
    if(tablero[4][4]==0){
        tablero[4][4]=1;
    }
    else{
        tablero[4][4]=0;
    }
    // ARRIBA
    if(tablero[3][4]==0){
        tablero[3][4]=1;
    }
    else{
        tablero[3][4]=0;
    }
    
    // ABAJO

    
    // DERECHA
    
    
    // IZQUIERDA
    if(tablero[4][3]==0){
        tablero[4][3]=1;
    }
    else{
        tablero[4][3]=0;
    }
    
    
    [self refrescarTablero];
    [self comprobarCompletado];
    
}



@end
