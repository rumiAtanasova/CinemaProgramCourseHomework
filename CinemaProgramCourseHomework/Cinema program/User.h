

#import <Foundation/Foundation.h>


@interface User : NSObject
@property(readonly)NSString* userName;
@property(readonly)NSString* name;
@property(readonly)NSString* password;
@property NSString* address;

- (instancetype)initWithUserName:(NSString*)userName andPersonName:(NSString*)name andPassword:(NSString*)password andAdrress:(NSString*)address;
@end
