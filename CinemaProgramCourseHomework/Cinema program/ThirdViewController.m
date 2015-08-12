

#import "ThirdViewController.h"
#import "CinemaViewController.h"
#import "ReserveViewController.h"
#import "Cinemas.h"
#import "Cinema.h"

@interface ThirdViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *cinemaOneImage;
@property (weak, nonatomic) IBOutlet UIImageView *cinemaTwoImage;
@property (weak, nonatomic) IBOutlet UIImageView *cinemaThreeImage;
@property (weak, nonatomic) IBOutlet UILabel *addresLabelOne;
@property (weak, nonatomic) IBOutlet UILabel *workingTimeOne;
@property (weak, nonatomic) IBOutlet UILabel *addressLabelTwo;
@property (weak, nonatomic) IBOutlet UILabel *workingTomeTwo;
@property (weak, nonatomic) IBOutlet UILabel *addressLabelThree;
@property (weak, nonatomic) IBOutlet UILabel *workingTimeThree;
@property (weak, nonatomic) IBOutlet UILabel *reservedTickets;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Cinemas";
    Cinemas* cinemas = [Cinemas sharedInstance];
    self.reservedTickets.hidden = YES;
    
    for (int i = 0; i < [cinemas allCinemasCount]; i++) {
        self.choosenCinema =  [cinemas cinemaForNumber:i];
        if (i == 0) {
            self.cinemaOneImage.image = [UIImage imageNamed:self.choosenCinema.picture];
            self.addresLabelOne.text = self.choosenCinema.address;
            self.workingTimeOne.text = self.choosenCinema.workingTime;
        }
        if (i == 1) {
            self.cinemaTwoImage.image = [UIImage imageNamed:self.choosenCinema.picture];
            self.addressLabelTwo.text = self.choosenCinema.address;
            self.workingTomeTwo.text = self.choosenCinema.workingTime;
        }
        if (i == 2) {
            self.cinemaThreeImage.image = [UIImage imageNamed:self.choosenCinema.picture];
            self.addressLabelThree.text = self.choosenCinema.address;
            self.workingTimeThree.text = self.choosenCinema.workingTime;
        }
    }

    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    Cinemas* theOne = [Cinemas sharedInstance];
    
    if (theOne.reservedTicketsForMovie) {
        self.reservedTickets.hidden = NO;
        self.reservedTickets.text = theOne.reservedTicketsForMovie;
        [theOne updateReservedTickets: @""];
    }
}

- (void)chooseTheCinemaWithSender:(UIButton*)sender {
    if (sender.tag == 1) {
        self.choosenCinema =  [[Cinemas sharedInstance] cinemaForNumber:0];
    }
    if (sender.tag == 2) {
        self.choosenCinema =  [[Cinemas sharedInstance] cinemaForNumber:1];
    }
    if (sender.tag == 3) {
        self.choosenCinema =  [[Cinemas sharedInstance] cinemaForNumber:2];
    }
}


- (IBAction)goToInfoScreen:(id)sender {
    [self chooseTheCinemaWithSender:sender];
    [self performSegueWithIdentifier:@"toInfoSreen" sender:sender];
    
}


- (IBAction)goToCinemaScreen:(UIButton*)sender {  
    [self chooseTheCinemaWithSender:sender];
    [self performSegueWithIdentifier:@"goToCinema" sender:sender];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
