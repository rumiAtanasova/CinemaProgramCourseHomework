
#import <Foundation/Foundation.h>
#import "Cinema.h"

@interface Cinemas : NSObject

@property(readonly, nonatomic, strong) NSString* reservedTicketsForMovie;

+ (id)sharedInstance;
- (Cinema*)cinemaForNumber:(NSInteger)number;
-(NSInteger)allCinemasCount;
-(void)updateReservedTickets:(NSString*)numberOfTickets;

@end
