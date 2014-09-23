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
- (IBAction)debutRound:(id)sender;
- (IBAction)finRound:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *nomBoxerRouge;
@property (weak, nonatomic) IBOutlet UITextField *nomBoxerBleu;
@property (weak, nonatomic) IBOutlet UITextField *numeroRound;
@property (weak, nonatomic) IBOutlet UITextField *pointageJ1Juge1;
@property (weak, nonatomic) IBOutlet UILabel *pointageJ1Juge1;
@property (weak, nonatomic) IBOutlet UILabel *pointageJ1Juge2;
@property (weak, nonatomic) IBOutlet UILabel *pointageJ1Juge3;
@property (weak, nonatomic) IBOutlet UILabel *nomPointageJoueur1;
@property (weak, nonatomic) IBOutlet UILabel *nomPointageJoueur2;
@property (weak, nonatomic) IBOutlet UILabel *pointageJ2Juge1;
@property (weak, nonatomic) IBOutlet UILabel *pointageJ2Juge2;
@property (weak, nonatomic) IBOutlet UILabel *pointageJ2Juge3;

@end

@implementation LAB1ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
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

- (IBAction)debutRound:(id)sender {
}

- (IBAction)finRound:(id)sender {
}

- (IBAction)textFieldReturn:(id)sender{
    [sender resignFirstResponder];
    self.nomPointageJoueur1.text = self.nomBoxerRouge.text;
    self.nomPointageJoueur2.text = self.nomBoxerBleu.text;
}

@end
