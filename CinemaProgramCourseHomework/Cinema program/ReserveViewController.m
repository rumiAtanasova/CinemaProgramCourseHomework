

#import "ReserveViewController.h"
#import "ThirdViewController.h"
#import "CinemaViewController.h"
#import "Cinemas.h"

@interface ReserveViewController ()
@property (weak, nonatomic) IBOutlet UILabel *numberOfTicket;
@property (weak, nonatomic) IBOutlet UIStepper *stepperButton;



@end

@implementation ReserveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeNumberOfTickets:(UIStepper*)sender {
    [self.numberOfTicket setText:[NSString stringWithFormat:@"%.0f", self.stepperButton.value]];

}

- (IBAction)ticketsReserve:(id)sender {
    CinemaViewController* cvc = (CinemaViewController*)self.navigationController.viewControllers[2];
    Cinemas* theOne = [Cinemas sharedInstance];
    NSLocale* currentLocale = [NSLocale currentLocale];
    NSString* reserveInfo = [NSString stringWithFormat:@"You have reserved %@ tickets for %@ film at %@.", self.numberOfTicket.text, cvc.choosenMovie, [[NSDate date] descriptionWithLocale:currentLocale]];
    [theOne updateReservedTickets: reserveInfo];
    [self performSegueWithIdentifier:@"backToCinemas" sender:sender];
    
}

@end
