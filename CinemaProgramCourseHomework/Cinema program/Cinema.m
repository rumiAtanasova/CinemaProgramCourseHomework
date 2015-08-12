

#import "Cinema.h"
#import "Movie.h"

@interface Cinema ()
@property(readwrite, nonatomic, strong) NSString* name;
@property(readwrite, nonatomic, strong) NSString* workingTime;
@property(readwrite, nonatomic, strong) NSString* address;
@property(nonatomic, strong) NSMutableArray* movies;
@property(readwrite, nonatomic, strong) NSString* picture;
@property(readwrite, nonatomic, strong) NSString* pictureTwo;
@property(readwrite, nonatomic, strong) NSString* phoneNumber;
@property(readwrite, nonatomic, strong) NSString* parkingPlaces;
@end

@implementation Cinema
- (instancetype)initWithName:(NSString*)name andAddress:(NSString*)address andWorkingTime:(NSString*)workingTime andPicture:(NSString*)picture andPictureTwo:(NSString*)pictureTwo andPhoneNumber:(NSString*)phoneNumber andParkingPlaces:(NSString*)places
{
    self = [super init];
    if (self) {
        self.name = name;
        self.address = address;
        self.workingTime = workingTime;
        self.picture = picture;
        self.movies = [NSMutableArray array];
        self.pictureTwo = pictureTwo;
        self.phoneNumber = phoneNumber;
        self.parkingPlaces = places;
    }
    return self;
}

- (void)addMovieWithName:(NSString*)name andPicture:(NSString*)picture andWorkingTime:(NSString*)workingTime  {
    [self.movies addObject:[Movie createMovieWithName:name andPicture:picture andWorkingTime:workingTime]];
}

- (NSString*)moviePictureAtIndex:(NSInteger)index {
    Movie* curenMovie = [self.movies objectAtIndex:index];
    return curenMovie.moviePicture;
}

- (NSString*)movieNameAtIndex:(NSInteger)index {
    return [[self.movies objectAtIndex:index]movieName];
}

- (NSString*)movieWorkingTimeAtIndex:(NSInteger)index {
    return [[self.movies objectAtIndex:index]workingTime];
}

@end
