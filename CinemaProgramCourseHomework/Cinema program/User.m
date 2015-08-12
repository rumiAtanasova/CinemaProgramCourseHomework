#import "User.h"

@interface User ()
@property(readwrite)NSString* userName;
@property(readwrite)NSString* name;
@property(readwrite)NSString* password;
@end

@implementation User

- (instancetype)initWithUserName:(NSString*)userName andPersonName:(NSString*)name andPassword:(NSString*)password andAdrress:(NSString*)address
{
    self = [super init];
    if (self) {
        if (userName != nil) {
            self.userName = userName;
        }
        
        self.name = name;
        self.password = password;
        self.address = address;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@", self.userName, self.password];
}

@end
