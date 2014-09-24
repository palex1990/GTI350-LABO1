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


@end

@implementation LAB1ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.pointageB1J1.delegate = self;
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
    
}

- (IBAction)finRound:(id)sender {
    NSString * juge1boxer1 = self.pointageB1J1.text;
    NSString * juge2boxer1 = self.pointageB1J2.text;
    NSString * juge3boxer1 = self.pointageB1J3.text;
    
    int totalboxer1 = [juge1boxer1 intValue] + [juge2boxer1 intValue] + [juge3boxer1 intValue];
    
    self.pointageB1R1.text = [NSString stringWithFormat:@"%d", totalboxer1];
    
    //   self.pointageB1J1.textFieldShouldBeginEditing = NO;
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

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    return YES;
}

@end
