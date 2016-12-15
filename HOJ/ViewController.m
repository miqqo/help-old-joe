//
//  ViewController.m
//  HOJ
//
//  Created by Mikaela Koller on 2016-11-28.
//  Copyright © 2016 TDDE02. All rights reserved.
//

#import "ViewController.h"
#import "ProfileViewController.h"

@interface ViewController ()
- (IBAction)buildButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *build;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)dismissKeyboard
{
    [self.emailTextField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buildButton:(id)sender {
    [self.build setImage:[UIImage imageNamed:@"ic_build_3x.png"] forState:UIControlStateNormal];
}
@end
