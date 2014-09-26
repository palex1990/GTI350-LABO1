//
//  LAB1ViewController.m
//  LAB1
//
//  Created by Pierre-Alexandre Day on 2014-09-16.
//  Copyright (c) 2014 Pierre-Alexandre Day. All rights reserved.
//

#import "LAB1ViewController.h"

@interface LAB1ViewController ()
- (IBAction)joueur1Disqualifie:(id)sender;
- (IBAction)joueur1Chute:(id)sender;
- (IBAction)joueur1KO:(id)sender;
- (IBAction)Joueur2Disqualifie:(id)sender;
- (IBAction)joueur2Chute:(id)sender;
- (IBAction)joueur2KO:(id)sender;
- (IBAction)debutCombat:(id)sender;
- (IBAction)finRound:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *nomBoxerRouge;
@property (weak, nonatomic) IBOutlet UITextField *nomBoxerBleu;
@property (weak, nonatomic) IBOutlet UITextField *nomJuge1;
@property (weak, nonatomic) IBOutlet UITextField *nomJuge2;
@property (weak, nonatomic) IBOutlet UITextField *nomJuge3;
@property (weak, nonatomic) IBOutlet UITextField *numeroRound;
@property (weak, nonatomic) IBOutlet UILabel *nomPointageJoueur1;
@property (weak, nonatomic) IBOutlet UILabel *nomPointageJoueur2;
@property (weak, nonatomic) IBOutlet UILabel *nomPointRoundJ1;
@property (weak, nonatomic) IBOutlet UILabel *nomPointRoundJ2;
@property (weak, nonatomic) IBOutlet UILabel *nomFautesJ1;
@property (weak, nonatomic) IBOutlet UILabel *nomFautesJ2;
@property (weak, nonatomic) IBOutlet UITextField *pointageB1J1;
@property (weak, nonatomic) IBOutlet UITextField *pointageB1J2;
@property (weak, nonatomic) IBOutlet UITextField *pointageB1J3;
@property (weak, nonatomic) IBOutlet UITextField *pointageB2J1;
@property (weak, nonatomic) IBOutlet UITextField *pointageB2J2;
@property (weak, nonatomic) IBOutlet UITextField *pointageB2J3;

@property (weak, nonatomic) IBOutlet UILabel *pointageB1R1;
@property (weak, nonatomic) IBOutlet UILabel *pointageB1R2;
@property (weak, nonatomic) IBOutlet UILabel *pointageB1R3;
@property (weak, nonatomic) IBOutlet UILabel *pointageB1R4;
@property (weak, nonatomic) IBOutlet UILabel *pointageB1R5;
@property (weak, nonatomic) IBOutlet UILabel *pointageB1R6;
@property (weak, nonatomic) IBOutlet UILabel *pointageB1R7;
@property (weak, nonatomic) IBOutlet UILabel *pointageB1R8;
@property (weak, nonatomic) IBOutlet UILabel *pointageB1R9;
@property (weak, nonatomic) IBOutlet UILabel *pointageB1R10;
@property (weak, nonatomic) IBOutlet UILabel *pointageB1R11;
@property (weak, nonatomic) IBOutlet UILabel *pointageB1R12;
@property (weak, nonatomic) IBOutlet UILabel *pointageTotalBoxer1;

@property (weak, nonatomic) IBOutlet UILabel *pointageB2R1;
@property (weak, nonatomic) IBOutlet UILabel *pointageB2R2;
@property (weak, nonatomic) IBOutlet UILabel *pointageB2R3;
@property (weak, nonatomic) IBOutlet UILabel *pointageB2R4;
@property (weak, nonatomic) IBOutlet UILabel *pointageB2R5;
@property (weak, nonatomic) IBOutlet UILabel *pointageB2R6;
@property (weak, nonatomic) IBOutlet UILabel *pointageB2R7;
@property (weak, nonatomic) IBOutlet UILabel *pointageB2R8;
@property (weak, nonatomic) IBOutlet UILabel *pointageB2R9;
@property (weak, nonatomic) IBOutlet UILabel *pointageB2R10;
@property (weak, nonatomic) IBOutlet UILabel *pointageB2R11;
@property (weak, nonatomic) IBOutlet UILabel *pointageB2R12;
@property (weak, nonatomic) IBOutlet UILabel *pointageTotalBoxer2;
@property (weak, nonatomic) IBOutlet UIButton *debutCombatOutlet;
@property (weak, nonatomic) IBOutlet UIButton *finRoundOutlet;


@end

@implementation LAB1ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    self.pointageB1J1.delegate = self;
    self.pointageB1J1.hidden = YES;
    self.pointageB1J2.hidden = YES;
    self.pointageB1J3.hidden = YES;
    self.pointageB2J1.hidden = YES;
    self.pointageB2J2.hidden = YES;
    self.pointageB2J3.hidden = YES;
    self.finRoundOutlet.hidden = YES;
    self.numeroRound.userInteractionEnabled = NO;
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)joueur1Disqualifie:(id)sender {
}

- (IBAction)joueur1Chute:(id)sender {
}

- (IBAction)joueur1KO:(id)sender {
}

- (IBAction)Joueur2Disqualifie:(id)sender {
}

- (IBAction)joueur2Chute:(id)sender {
}

- (IBAction)joueur2KO:(id)sender {
}

- (IBAction)debutCombat:(id)sender {
    self.numeroRound.text = @"1";
    self.pointageB1J1.text = @"";
    self.pointageB1J2.text = @"";
    self.pointageB1J3.text = @"";
    self.pointageB2J1.text = @"";
    self.pointageB2J2.text = @"";
    self.pointageB2J3.text = @"";
    self.pointageB1J1.hidden = NO;
    self.pointageB1J2.hidden = NO;
    self.pointageB1J3.hidden = NO;
    self.pointageB2J1.hidden = NO;
    self.pointageB2J2.hidden = NO;
    self.pointageB2J3.hidden = NO;
    self.finRoundOutlet.hidden = NO;
    self.debutCombatOutlet.hidden = YES;
    self.nomBoxerBleu.userInteractionEnabled = NO;
    self.nomBoxerRouge.userInteractionEnabled = NO;
    self.nomJuge1.userInteractionEnabled = NO;
    self.nomJuge2.userInteractionEnabled = NO;
    self.nomJuge3.userInteractionEnabled = NO;
    
}

- (IBAction)finRound:(id)sender {
   
    int totalboxer1 = [self.pointageB1J1.text intValue] + [self.pointageB1J2.text intValue] + [self.pointageB1J3.text intValue];
    int totalboxer2 =[self.pointageB2J1.text intValue] + [self.pointageB2J2.text intValue] + [self.pointageB2J3.text intValue];
    
    int pointageTotalB1J1;
    int pointageTotalB1J2;
    int pointageTotalB1J3;
    int pointageTotalB2J1;
    int pointageTotalB2J2;
    int pointageTotalB2J3;
    
    int decisionJuge1 = 0;
    int decisionJuge2 = 0;
    int decisionJuge3 = 0;
    
    
    switch ([self.numeroRound.text intValue]) {
        case 1:
            self.pointageB1R1.text = [NSString stringWithFormat:@"%d", totalboxer1];
            self.pointageB2R1.text = [NSString stringWithFormat:@"%d", totalboxer2];
            self.numeroRound.text = @"2";
            
            self.pointageTotalBoxer1.text = [NSString stringWithFormat:@"%d",[self.pointageB1R1.text intValue]];
            self.pointageTotalBoxer2.text = [NSString stringWithFormat:@"%d",[self.pointageB2R1.text intValue]];
            
            pointageTotalB1J1 = pointageTotalB1J1 + [self.pointageB1J1.text intValue];
            pointageTotalB1J2 = pointageTotalB1J2 + [self.pointageB1J2.text intValue];
            pointageTotalB1J3 = pointageTotalB1J3 + [self.pointageB1J3.text intValue];
            pointageTotalB2J1 = pointageTotalB2J1 + [self.pointageB2J1.text intValue];
            pointageTotalB2J2 = pointageTotalB2J2 + [self.pointageB2J2.text intValue];
            pointageTotalB2J3 = pointageTotalB2J3 + [self.pointageB2J3.text intValue];
            
            
            break;
        case 2:
            self.pointageB1R2.text = [NSString stringWithFormat:@"%d", totalboxer1];
            self.pointageB2R2.text = [NSString stringWithFormat:@"%d", totalboxer2];
            self.numeroRound.text = @"3";
            
            self.pointageTotalBoxer1.text = [NSString stringWithFormat:@"%d",[self.pointageB1R1.text intValue] + [self.pointageB1R2.text intValue]];
            self.pointageTotalBoxer2.text = [NSString stringWithFormat:@"%d",[self.pointageB2R1.text intValue] + [self.pointageB2R2.text intValue]];
            
            pointageTotalB1J1 = pointageTotalB1J1 + [self.pointageB1J1.text intValue];
            pointageTotalB1J2 = pointageTotalB1J2 + [self.pointageB1J2.text intValue];
            pointageTotalB1J3 = pointageTotalB1J3 + [self.pointageB1J3.text intValue];
            pointageTotalB2J1 = pointageTotalB2J1 + [self.pointageB2J1.text intValue];
            pointageTotalB2J2 = pointageTotalB2J2 + [self.pointageB2J2.text intValue];
            pointageTotalB2J3 = pointageTotalB2J3 + [self.pointageB2J3.text intValue];

            break;
        case 3:
            self.pointageB1R3.text = [NSString stringWithFormat:@"%d", totalboxer1];
            self.pointageB2R3.text = [NSString stringWithFormat:@"%d", totalboxer2];
            self.numeroRound.text = @"4";
            
            self.pointageTotalBoxer1.text = [NSString stringWithFormat:@"%d",[self.pointageB1R1.text intValue] + [self.pointageB1R2.text intValue] + [self.pointageB1R3.text intValue]];
            self.pointageTotalBoxer2.text = [NSString stringWithFormat:@"%d",[self.pointageB2R1.text intValue] + [self.pointageB2R2.text intValue] + [self.pointageB2R3.text intValue]];
            
            pointageTotalB1J1 = pointageTotalB1J1 + [self.pointageB1J1.text intValue];
            pointageTotalB1J2 = pointageTotalB1J2 + [self.pointageB1J2.text intValue];
            pointageTotalB1J3 = pointageTotalB1J3 + [self.pointageB1J3.text intValue];
            pointageTotalB2J1 = pointageTotalB2J1 + [self.pointageB2J1.text intValue];
            pointageTotalB2J2 = pointageTotalB2J2 + [self.pointageB2J2.text intValue];
            pointageTotalB2J3 = pointageTotalB2J3 + [self.pointageB2J3.text intValue];
 
            break;
        case 4:
            self.pointageB1R4.text = [NSString stringWithFormat:@"%d", totalboxer1];
            self.pointageB2R4.text = [NSString stringWithFormat:@"%d", totalboxer2];
            self.numeroRound.text = @"5";
            
            self.pointageTotalBoxer1.text = [NSString stringWithFormat:@"%d",[self.pointageB1R1.text intValue] + [self.pointageB1R2.text intValue] + [self.pointageB1R3.text intValue] + [self.pointageB1R4.text intValue]];
            self.pointageTotalBoxer2.text = [NSString stringWithFormat:@"%d",[self.pointageB2R1.text intValue] + [self.pointageB2R2.text intValue] + [self.pointageB2R3.text intValue] + [self.pointageB2R4.text intValue]];
            
            pointageTotalB1J1 = pointageTotalB1J1 + [self.pointageB1J1.text intValue];
            pointageTotalB1J2 = pointageTotalB1J2 + [self.pointageB1J2.text intValue];
            pointageTotalB1J3 = pointageTotalB1J3 + [self.pointageB1J3.text intValue];
            pointageTotalB2J1 = pointageTotalB2J1 + [self.pointageB2J1.text intValue];
            pointageTotalB2J2 = pointageTotalB2J2 + [self.pointageB2J2.text intValue];
            pointageTotalB2J3 = pointageTotalB2J3 + [self.pointageB2J3.text intValue];

            break;
        case 5:
            self.pointageB1R5.text = [NSString stringWithFormat:@"%d", totalboxer1];
            self.pointageB2R5.text = [NSString stringWithFormat:@"%d", totalboxer2];
            self.numeroRound.text = @"6";
            
            self.pointageTotalBoxer1.text = [NSString stringWithFormat:@"%d",[self.pointageB1R1.text intValue] + [self.pointageB1R2.text intValue] + [self.pointageB1R3.text intValue] + [self.pointageB1R4.text intValue] + [self.pointageB1R5.text intValue]];
            self.pointageTotalBoxer2.text = [NSString stringWithFormat:@"%d",[self.pointageB2R1.text intValue] + [self.pointageB2R2.text intValue] + [self.pointageB2R3.text intValue] + [self.pointageB2R4.text intValue] + [self.pointageB2R5.text intValue]];
            
            pointageTotalB1J1 = pointageTotalB1J1 + [self.pointageB1J1.text intValue];
            pointageTotalB1J2 = pointageTotalB1J2 + [self.pointageB1J2.text intValue];
            pointageTotalB1J3 = pointageTotalB1J3 + [self.pointageB1J3.text intValue];
            pointageTotalB2J1 = pointageTotalB2J1 + [self.pointageB2J1.text intValue];
            pointageTotalB2J2 = pointageTotalB2J2 + [self.pointageB2J2.text intValue];
            pointageTotalB2J3 = pointageTotalB2J3 + [self.pointageB2J3.text intValue];

            break;
        case 6:
            self.pointageB1R6.text = [NSString stringWithFormat:@"%d", totalboxer1];
            self.pointageB2R6.text = [NSString stringWithFormat:@"%d", totalboxer2];
            self.numeroRound.text = @"7";
            
            self.pointageTotalBoxer1.text = [NSString stringWithFormat:@"%d",[self.pointageB1R1.text intValue] + [self.pointageB1R2.text intValue] + [self.pointageB1R3.text intValue] + [self.pointageB1R4.text intValue] + [self.pointageB1R5.text intValue] + [self.pointageB1R6.text intValue]];
            self.pointageTotalBoxer2.text = [NSString stringWithFormat:@"%d",[self.pointageB2R1.text intValue] + [self.pointageB2R2.text intValue] + [self.pointageB2R3.text intValue] + [self.pointageB2R4.text intValue] + [self.pointageB2R5.text intValue] + [self.pointageB2R6.text intValue]];
            
            pointageTotalB1J1 = pointageTotalB1J1 + [self.pointageB1J1.text intValue];
            pointageTotalB1J2 = pointageTotalB1J2 + [self.pointageB1J2.text intValue];
            pointageTotalB1J3 = pointageTotalB1J3 + [self.pointageB1J3.text intValue];
            pointageTotalB2J1 = pointageTotalB2J1 + [self.pointageB2J1.text intValue];
            pointageTotalB2J2 = pointageTotalB2J2 + [self.pointageB2J2.text intValue];
            pointageTotalB2J3 = pointageTotalB2J3 + [self.pointageB2J3.text intValue];
            
            break;
        case 7:
            self.pointageB1R7.text = [NSString stringWithFormat:@"%d", totalboxer1];
            self.pointageB2R7.text = [NSString stringWithFormat:@"%d", totalboxer2];
            self.numeroRound.text = @"8";
            
            self.pointageTotalBoxer1.text = [NSString stringWithFormat:@"%d",[self.pointageB1R1.text intValue] + [self.pointageB1R2.text intValue] + [self.pointageB1R3.text intValue] + [self.pointageB1R4.text intValue] + [self.pointageB1R5.text intValue] + [self.pointageB1R6.text intValue] + [self.pointageB1R7.text intValue]];
            self.pointageTotalBoxer2.text = [NSString stringWithFormat:@"%d",[self.pointageB2R1.text intValue] + [self.pointageB2R2.text intValue] + [self.pointageB2R3.text intValue] + [self.pointageB2R4.text intValue] + [self.pointageB2R5.text intValue] + [self.pointageB2R6.text intValue] + [self.pointageB2R7.text intValue]];
            
            pointageTotalB1J1 = pointageTotalB1J1 + [self.pointageB1J1.text intValue];
            pointageTotalB1J2 = pointageTotalB1J2 + [self.pointageB1J2.text intValue];
            pointageTotalB1J3 = pointageTotalB1J3 + [self.pointageB1J3.text intValue];
            pointageTotalB2J1 = pointageTotalB2J1 + [self.pointageB2J1.text intValue];
            pointageTotalB2J2 = pointageTotalB2J2 + [self.pointageB2J2.text intValue];
            pointageTotalB2J3 = pointageTotalB2J3 + [self.pointageB2J3.text intValue];
 
            break;
        case 8:
            self.pointageB1R8.text = [NSString stringWithFormat:@"%d", totalboxer1];
            self.pointageB2R8.text = [NSString stringWithFormat:@"%d", totalboxer2];
            self.numeroRound.text = @"9";
            
            self.pointageTotalBoxer1.text = [NSString stringWithFormat:@"%d",[self.pointageB1R1.text intValue] + [self.pointageB1R2.text intValue] + [self.pointageB1R3.text intValue] + [self.pointageB1R4.text intValue] + [self.pointageB1R5.text intValue] + [self.pointageB1R6.text intValue] + [self.pointageB1R7.text intValue] + [self.pointageB1R8.text intValue]];
            self.pointageTotalBoxer2.text = [NSString stringWithFormat:@"%d",[self.pointageB2R1.text intValue] + [self.pointageB2R2.text intValue] + [self.pointageB2R3.text intValue] + [self.pointageB2R4.text intValue] + [self.pointageB2R5.text intValue] + [self.pointageB2R6.text intValue] + [self.pointageB2R7.text intValue] + [self.pointageB2R8.text intValue]];
            
            pointageTotalB1J1 = pointageTotalB1J1 + [self.pointageB1J1.text intValue];
            pointageTotalB1J2 = pointageTotalB1J2 + [self.pointageB1J2.text intValue];
            pointageTotalB1J3 = pointageTotalB1J3 + [self.pointageB1J3.text intValue];
            pointageTotalB2J1 = pointageTotalB2J1 + [self.pointageB2J1.text intValue];
            pointageTotalB2J2 = pointageTotalB2J2 + [self.pointageB2J2.text intValue];
            pointageTotalB2J3 = pointageTotalB2J3 + [self.pointageB2J3.text intValue];

            break;
        case 9:
            self.pointageB1R9.text = [NSString stringWithFormat:@"%d", totalboxer1];
            self.pointageB2R9.text = [NSString stringWithFormat:@"%d", totalboxer2];
            self.numeroRound.text = @"10";
            
            self.pointageTotalBoxer1.text = [NSString stringWithFormat:@"%d",[self.pointageB1R1.text intValue] + [self.pointageB1R2.text intValue] + [self.pointageB1R3.text intValue] + [self.pointageB1R4.text intValue] + [self.pointageB1R5.text intValue] + [self.pointageB1R6.text intValue] + [self.pointageB1R7.text intValue] + [self.pointageB1R8.text intValue] + [self.pointageB1R9.text intValue]];
            self.pointageTotalBoxer2.text = [NSString stringWithFormat:@"%d",[self.pointageB2R1.text intValue] + [self.pointageB2R2.text intValue] + [self.pointageB2R3.text intValue] + [self.pointageB2R4.text intValue] + [self.pointageB2R5.text intValue] + [self.pointageB2R6.text intValue] + [self.pointageB2R7.text intValue] + [self.pointageB2R8.text intValue] + [self.pointageB2R9.text intValue]];
            
            pointageTotalB1J1 = pointageTotalB1J1 + [self.pointageB1J1.text intValue];
            pointageTotalB1J2 = pointageTotalB1J2 + [self.pointageB1J2.text intValue];
            pointageTotalB1J3 = pointageTotalB1J3 + [self.pointageB1J3.text intValue];
            pointageTotalB2J1 = pointageTotalB2J1 + [self.pointageB2J1.text intValue];
            pointageTotalB2J2 = pointageTotalB2J2 + [self.pointageB2J2.text intValue];
            pointageTotalB2J3 = pointageTotalB2J3 + [self.pointageB2J3.text intValue];

            break;
        case 10:
            self.pointageB1R10.text = [NSString stringWithFormat:@"%d", totalboxer1];
            self.pointageB2R10.text = [NSString stringWithFormat:@"%d", totalboxer2];
            self.numeroRound.text = @"11";
            
            self.pointageTotalBoxer1.text = [NSString stringWithFormat:@"%d",[self.pointageB1R1.text intValue] + [self.pointageB1R2.text intValue] + [self.pointageB1R3.text intValue] + [self.pointageB1R4.text intValue] + [self.pointageB1R5.text intValue] + [self.pointageB1R6.text intValue] + [self.pointageB1R7.text intValue] + [self.pointageB1R8.text intValue] + [self.pointageB1R9.text intValue] + [self.pointageB1R10.text intValue]];
            self.pointageTotalBoxer2.text = [NSString stringWithFormat:@"%d",[self.pointageB2R1.text intValue] + [self.pointageB2R2.text intValue] + [self.pointageB2R3.text intValue] + [self.pointageB2R4.text intValue] + [self.pointageB2R5.text intValue] + [self.pointageB2R6.text intValue] + [self.pointageB2R7.text intValue] + [self.pointageB2R8.text intValue] + [self.pointageB2R9.text intValue] + [self.pointageB2R10.text intValue]];
            
            pointageTotalB1J1 = pointageTotalB1J1 + [self.pointageB1J1.text intValue];
            pointageTotalB1J2 = pointageTotalB1J2 + [self.pointageB1J2.text intValue];
            pointageTotalB1J3 = pointageTotalB1J3 + [self.pointageB1J3.text intValue];
            pointageTotalB2J1 = pointageTotalB2J1 + [self.pointageB2J1.text intValue];
            pointageTotalB2J2 = pointageTotalB2J2 + [self.pointageB2J2.text intValue];
            pointageTotalB2J3 = pointageTotalB2J3 + [self.pointageB2J3.text intValue];

            break;
        case 11:
            self.pointageB1R11.text = [NSString stringWithFormat:@"%d", totalboxer1];
            self.pointageB2R11.text = [NSString stringWithFormat:@"%d", totalboxer2];
            self.numeroRound.text = @"12";
            
            self.pointageTotalBoxer1.text = [NSString stringWithFormat:@"%d",[self.pointageB1R1.text intValue] + [self.pointageB1R2.text intValue] + [self.pointageB1R3.text intValue] + [self.pointageB1R4.text intValue] + [self.pointageB1R5.text intValue] + [self.pointageB1R6.text intValue] + [self.pointageB1R7.text intValue] + [self.pointageB1R8.text intValue] + [self.pointageB1R9.text intValue] + [self.pointageB1R10.text intValue] + [self.pointageB1R11.text intValue]];
            self.pointageTotalBoxer2.text = [NSString stringWithFormat:@"%d",[self.pointageB2R1.text intValue] + [self.pointageB2R2.text intValue] + [self.pointageB2R3.text intValue] + [self.pointageB2R4.text intValue] + [self.pointageB2R5.text intValue] + [self.pointageB2R6.text intValue] + [self.pointageB2R7.text intValue] + [self.pointageB2R8.text intValue] + [self.pointageB2R9.text intValue] + [self.pointageB2R10.text intValue] + [self.pointageB2R11.text intValue]];
            
            pointageTotalB1J1 = pointageTotalB1J1 + [self.pointageB1J1.text intValue];
            pointageTotalB1J2 = pointageTotalB1J2 + [self.pointageB1J2.text intValue];
            pointageTotalB1J3 = pointageTotalB1J3 + [self.pointageB1J3.text intValue];
            pointageTotalB2J1 = pointageTotalB2J1 + [self.pointageB2J1.text intValue];
            pointageTotalB2J2 = pointageTotalB2J2 + [self.pointageB2J2.text intValue];
            pointageTotalB2J3 = pointageTotalB2J3 + [self.pointageB2J3.text intValue];

            break;
        case 12:
            self.pointageB1R12.text = [NSString stringWithFormat:@"%d", totalboxer1];
            self.pointageB2R12.text = [NSString stringWithFormat:@"%d", totalboxer2];
            self.numeroRound.text = @"Fin";
            
            self.pointageTotalBoxer1.text = [NSString stringWithFormat:@"%d",[self.pointageB1R1.text intValue] + [self.pointageB1R2.text intValue] + [self.pointageB1R3.text intValue] + [self.pointageB1R4.text intValue] + [self.pointageB1R5.text intValue] + [self.pointageB1R6.text intValue] + [self.pointageB1R7.text intValue] + [self.pointageB1R8.text intValue] + [self.pointageB1R9.text intValue] + [self.pointageB1R10.text intValue] + [self.pointageB1R11.text intValue] + [self.pointageB1R12.text intValue]];
            self.pointageTotalBoxer2.text = [NSString stringWithFormat:@"%d",[self.pointageB2R1.text intValue] + [self.pointageB2R2.text intValue] + [self.pointageB2R3.text intValue] + [self.pointageB2R4.text intValue] + [self.pointageB2R5.text intValue] + [self.pointageB2R6.text intValue] + [self.pointageB2R7.text intValue] + [self.pointageB2R8.text intValue] + [self.pointageB2R9.text intValue] + [self.pointageB2R10.text intValue] + [self.pointageB2R11.text intValue] + [self.pointageB2R12.text intValue]];
            
            pointageTotalB1J1 = pointageTotalB1J1 + [self.pointageB1J1.text intValue];
            pointageTotalB1J2 = pointageTotalB1J2 + [self.pointageB1J2.text intValue];
            pointageTotalB1J3 = pointageTotalB1J3 + [self.pointageB1J3.text intValue];
            pointageTotalB2J1 = pointageTotalB2J1 + [self.pointageB2J1.text intValue];
            pointageTotalB2J2 = pointageTotalB2J2 + [self.pointageB2J2.text intValue];
            pointageTotalB2J3 = pointageTotalB2J3 + [self.pointageB2J3.text intValue];
          
        if (pointageTotalB1J1 < pointageTotalB2J1) {
            decisionJuge1 = 2;
        }
        else if (pointageTotalB1J1 > pointageTotalB2J1) {
            decisionJuge1 = 1;
        }
            
        if (pointageTotalB1J2 < pointageTotalB2J2) {
            decisionJuge2 = 2;
        }
        else if (pointageTotalB1J2 > pointageTotalB2J2) {
            decisionJuge2 = 1;
        }
            
        if (pointageTotalB1J3 < pointageTotalB2J3) {
            decisionJuge3 = 2;
        }
        else if (pointageTotalB1J3 > pointageTotalB2J3) {
            decisionJuge3 = 1;
        }
 /*
            if (decisionJuge1 == 1 && decisionJuge2 == 1 && decisionJuge3 == 1) {
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Voici le gagnant du combat" message:[NSString stringWithFormat:@"Le gagnant du match est %@", self.nomBoxerRouge.text] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            }
            else if (decisionJuge1 == 2 && decisionJuge2 == 2 && decisionJuge3 == 2) {
            {
               UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Voici le gagnant du combat" message:[NSString stringWithFormat:@"Le gagnant du match est %@", self.nomBoxerBleu.text] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            }
            else{
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Voici le gagnant du combat" message:[NSString stringWithFormat:@"Le match est nul"] delegate:nil cancelButtonTitle:@"Vive moi" otherButtonTitles:nil];
            }
 */
            
            break;
        default:
            break;
           
    }
    
    self.pointageB1J1.text = @"";
    self.pointageB1J2.text = @"";
    self.pointageB1J3.text = @"";
    self.pointageB2J1.text = @"";
    self.pointageB2J2.text = @"";
    self.pointageB2J3.text = @"";
   
}

- (IBAction)textFieldReturn:(id)sender{
    [sender resignFirstResponder];
    self.nomPointageJoueur1.text = self.nomBoxerRouge.text;
    self.nomPointageJoueur2.text = self.nomBoxerBleu.text;
    self.nomPointRoundJ1.text = self.nomBoxerRouge.text;
    self.nomPointRoundJ2.text = self.nomBoxerBleu.text;
    self.nomFautesJ1.text = self.nomBoxerRouge.text;
    self.nomFautesJ2.text = self.nomBoxerBleu.text;
    
}

@end
