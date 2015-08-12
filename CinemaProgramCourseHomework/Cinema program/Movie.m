

#import "Movie.h"

@interface Movie ()
@property(readwrite, nonatomic) NSString* moviePicture;
@property(readwrite, nonatomic) NSString* movieName;
@property(readwrite, nonatomic) NSString* workingTime;
@end

@implementation Movie

- (instancetype)init
{
    
    return [self initWithName:nil andPicture:nil andWorkingTime:nil];
}

- (instancetype)initWithName:(NSString*)name andPicture:(NSString*)picture andWorkingTime:(NSString*)workingTime
{
    self = [super init];
    if (self) {
        self.movieName = name;
        self.moviePicture = picture;
        self.workingTime = workingTime;
    }
    return self;
}

+ (Movie*)createMovieWithName:(NSString*)name andPicture:(NSString*)picture andWorkingTime:(NSString*)workingTime {
    Movie* movie = [[Movie alloc]initWithName:name andPicture:picture andWorkingTime:workingTime];
    return movie;
}


@end
