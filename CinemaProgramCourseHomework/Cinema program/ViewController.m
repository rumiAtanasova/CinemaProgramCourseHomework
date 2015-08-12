

#import "ViewController.h"
#import "ListWithUsers.h"
#import "RegisterViewController.h"
#import "ThirdViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.users = [ListWithUsers sharedInstance];
    self.passwordTextField.secureTextEntry = YES;
}


- (IBAction)login:(id)sender {
    NSString* username = self.usernameTextField.text;
    NSString* password = self.passwordTextField.text;
    
    if ([self.users isUserCorrect:username andPassword:password]) {
        self.messageLabel.text = @"You are Login";
        
        [self performSegueWithIdentifier:@"toCinemas" sender:sender];
    }
    else {
        self.messageLabel.text = @"Wrong username or password! Are you registred?";
    }
    [self.passwordTextField resignFirstResponder];    
    
}
- (IBAction)goToRegisterPage:(id)sender {
    self.usernameTextField.text = @"";
    self.passwordTextField.text = @"";
    self.messageLabel.text = @"";
    RegisterViewController* vc = [[RegisterViewController alloc]initWithNibName:nil bundle:nil];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
