

#import "ListWithUsers.h"
#import "User.h"

@interface ListWithUsers ()
@property(nonatomic) NSMutableDictionary* users;
@end

@implementation ListWithUsers
+(instancetype)alloc {
    return [ListWithUsers sharedInstance];
}

+(instancetype)sharedInstance {
    static ListWithUsers* theOnlyOneInstance = nil;
    static dispatch_once_t token;
    if (theOnlyOneInstance == nil) {
        dispatch_once(&token, ^{
            theOnlyOneInstance = [[super alloc] init];
        });
    }
    return theOnlyOneInstance;
}
-(instancetype)copy {
    return [ListWithUsers sharedInstance];
}


-(void)addUserWithUserName:(NSString*)userName andPersonName:(NSString*)name andPassword:(NSString*)password andAdrress:(NSString*)address {
    for (NSString* username in self.users.allKeys) {
        if (![userName isEqualToString:username] && userName != nil) {
            User* user = [[User alloc]initWithUserName:userName andPersonName:name andPassword:password andAdrress:address];
            [self.users setObject:user forKey:userName];
        }
    }
    
}

-(void)addUser:(User*)user {
    for (NSString* username in self.users.allKeys) {
        if ([username isEqualToString:user.userName]== NO ) {
           [self.users setObject:user forKey:user.userName];
        }
    }
}

-(BOOL)isUserCorrect:(NSString*)userName andPassword:(NSString*)password {

    if (![self.users.allKeys containsObject:userName]) {
        return NO;
    }

    
    User* user = [self.users objectForKey:userName];
    return ([user.password isEqualToString:password]);
}

-(BOOL)isUsernameFree:(NSString*)username {
    if ([self.users.allKeys containsObject:username]) {
        return NO;
    }
    return YES;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", self.users];
}

-(NSMutableDictionary*)users {
    if (_users == nil) {
        self.users = [NSMutableDictionary dictionary];
        User* test = [[User alloc]initWithUserName:@"tiriri" andPersonName:@"test" andPassword:@"12345" andAdrress:@"test"];
        [self.users setObject:test forKey:test.userName];
    }
    return _users;
}


@end
