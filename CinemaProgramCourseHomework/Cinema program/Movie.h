
#import <Foundation/Foundation.h>

@interface Movie : NSObject
@property(readonly, nonatomic) NSString* moviePicture;
@property(readonly, nonatomic) NSString* movieName;
@property(readonly, nonatomic) NSString* workingTime;

- (instancetype)initWithName:(NSString*)name andPicture:(NSString*)picture andWorkingTime:(NSString*)workingTime;
+ (Movie*)createMovieWithName:(NSString*)name andPicture:(NSString*)picture andWorkingTime:(NSString*)workingTime;
@end
