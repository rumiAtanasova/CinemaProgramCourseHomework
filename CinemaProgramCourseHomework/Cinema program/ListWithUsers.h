
#import <Foundation/Foundation.h>
#import "User.h"

@interface ListWithUsers : NSObject
+(instancetype)sharedInstance;

-(void)addUserWithUserName:(NSString*)userName andPersonName:(NSString*)name andPassword:(NSString*)password andAdrress:(NSString*)address;
-(BOOL)isUserCorrect:(NSString*)userName andPassword:(NSString*)password;
-(BOOL)isUsernameFree:(NSString*)username;
-(void)addUser:(User*)user;
@end
