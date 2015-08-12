
#import "CinemaViewController.h"
#import "ThirdViewController.h"
#import "Cinemas.h"
#import "Cinema.h"

@interface CinemaViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageOne;
@property (weak, nonatomic) IBOutlet UIImageView *imageTwo;
@property (weak, nonatomic) IBOutlet UIImageView *imageThree;
@property (weak, nonatomic) IBOutlet UIImageView *imageFour;
@property (weak, nonatomic) IBOutlet UILabel *workingTimeFirsMovie;
@property (weak, nonatomic) IBOutlet UILabel *workingTimeSecondMovie;
@property (weak, nonatomic) IBOutlet UILabel *workingTimeThirdMovie;
@property (weak, nonatomic) IBOutlet UILabel *workingTimeForthMovie;
@property (weak, nonatomic) IBOutlet UIButton *movieOneButton;
@property (weak, nonatomic) IBOutlet UIButton *movieTwoButton;
@property (weak, nonatomic) IBOutlet UIButton *movieThreeButton;
@property (weak, nonatomic) IBOutlet UIButton *movieFourButton;

@end

@implementation CinemaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ThirdViewController* tvc = (ThirdViewController*)self.navigationController.viewControllers[1];    
    self.title = tvc.choosenCinema.name;
    self.imageOne.image = [UIImage imageNamed:[tvc.choosenCinema moviePictureAtIndex:0]];
    self.imageTwo.image = [UIImage imageNamed:[tvc.choosenCinema moviePictureAtIndex:1]];
    self.imageThree.image = [UIImage imageNamed:[tvc.choosenCinema moviePictureAtIndex:2]];
    self.imageFour.image = [UIImage imageNamed:[tvc.choosenCinema moviePictureAtIndex:3]];
    
    self.workingTimeFirsMovie.text = [tvc.choosenCinema movieWorkingTimeAtIndex:0];
    self.workingTimeSecondMovie.text = [tvc.choosenCinema movieWorkingTimeAtIndex:1];
    self.workingTimeThirdMovie.text = [tvc.choosenCinema movieWorkingTimeAtIndex:2];
    self.workingTimeForthMovie.text = [tvc.choosenCinema movieWorkingTimeAtIndex:3];
    
    self.movieOneButton.titleLabel.text = [tvc.choosenCinema movieNameAtIndex:0];
    self.movieTwoButton.titleLabel.text = [tvc.choosenCinema movieNameAtIndex:1];
    self.movieThreeButton.titleLabel.text = [tvc.choosenCinema movieNameAtIndex:2];
    self.movieFourButton.titleLabel.text = [tvc.choosenCinema movieNameAtIndex:3];
}

- (IBAction)goToReserveScreen:(UIButton*)sender {
    if (sender.tag == 1) {
        self.choosenMovie = self.movieOneButton.titleLabel.text;
    }
    if (sender.tag == 2) {
        self.choosenMovie = self.movieTwoButton.titleLabel.text;
    }
    if (sender.tag == 3) {
        self.choosenMovie = self.movieThreeButton.titleLabel.text;
    }
    if (sender.tag == 4) {
        self.choosenMovie = self.movieFourButton.titleLabel.text;
    }
    [self performSegueWithIdentifier:@"goToReserve" sender:sender];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
