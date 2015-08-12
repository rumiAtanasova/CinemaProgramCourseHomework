
#import <Foundation/Foundation.h>

@interface Cinema : NSObject

@property(readonly, nonatomic, strong) NSString* name;
@property(readonly, nonatomic, strong) NSString* workingTime;
@property(readonly, nonatomic, strong) NSString* address;
@property(readonly, nonatomic, strong) NSString* picture;
@property(readonly, nonatomic, strong) NSString* pictureTwo;
@property(readonly, nonatomic, strong) NSString* phoneNumber;
@property(readonly, nonatomic, strong) NSString* parkingPlaces;

- (instancetype)initWithName:(NSString*)name andAddress:(NSString*)address andWorkingTime:(NSString*)workingTime andPicture:(NSString*)picture andPictureTwo:(NSString*)pictureTwo andPhoneNumber:(NSString*)phoneNumber andParkingPlaces:(NSString*)places;
- (void)addMovieWithName:(NSString*)name andPicture:(NSString*)picture andWorkingTime:(NSString*)workingTime;
- (NSString*)moviePictureAtIndex:(NSInteger)index;
- (NSString*)movieNameAtIndex:(NSInteger)index;
- (NSString*)movieWorkingTimeAtIndex:(NSInteger)index;

@end
