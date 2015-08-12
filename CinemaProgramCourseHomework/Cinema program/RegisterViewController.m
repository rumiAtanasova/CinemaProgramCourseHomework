
#import "RegisterViewController.h"
#import "ViewController.h"
#import "ListWithUsers.h"
#import "User.h"

@interface RegisterViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usernameTextFiled;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextFiled;
@property (weak, nonatomic) IBOutlet UITextField *nameTextFiled;
@property (weak, nonatomic) IBOutlet UITextField *addressTextFiled;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];    
    self.usernameTextFiled.delegate = self;
    self.passwordTextFiled.delegate = self;
    self.nameTextFiled.delegate = self;
    self.addressTextFiled.delegate = self;
   
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}
- (IBAction)makeRegistration:(id)sender {
    if ([[ListWithUsers sharedInstance] isUsernameFree:self.usernameTextFiled.text]) {
        User* newUser = [[User alloc]initWithUserName:self.usernameTextFiled.text andPersonName:self.nameTextFiled.text andPassword:self.passwordTextFiled.text andAdrress:self.addressTextFiled.text];
        [[ListWithUsers sharedInstance] addUser:newUser];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    else {
        self.messageLabel.text = @"Username is not free! Choese another!";
    }
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
