
#import "InfoViewController.h"
#import "ThirdViewController.h"

@interface InfoViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageOne;
@property (weak, nonatomic) IBOutlet UIImageView *imageTwo;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *workingTime;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumber;
@property (weak, nonatomic) IBOutlet UILabel *parkingPlaces;

@end

@implementation InfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ThirdViewController* tvc = (ThirdViewController*)self.navigationController.viewControllers[1];
    self.title = tvc.choosenCinema.name;
    self.imageOne.image = [UIImage imageNamed:tvc.choosenCinema.picture];
    self.imageTwo.image = [UIImage imageNamed:tvc.choosenCinema.pictureTwo];
    self.addressLabel.text = tvc.choosenCinema.address;
    self.workingTime.text = tvc.choosenCinema.workingTime;
    self.phoneNumber.text = tvc.choosenCinema.phoneNumber;
    self.parkingPlaces.text = tvc.choosenCinema.parkingPlaces;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
