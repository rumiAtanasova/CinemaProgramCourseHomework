

#import "Cinemas.h"
#import "Cinema.h"
#import "Movie.h"

@interface Cinemas ()
@property(nonatomic, strong) NSMutableArray* cinemas;
@property(readwrite, nonatomic, strong) NSString* reservedTicketsForMovie;
@end

@implementation Cinemas
+ (id)sharedInstance {
    static Cinemas* instance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        instance = [[super alloc] init];
    });
    return instance;
}

+(instancetype)alloc {
    return [Cinemas sharedInstance];
}

- (Cinema*)cinemaForNumber:(NSInteger)number {
    return [self.cinemas objectAtIndex:number];
}

-(NSInteger)allCinemasCount {
    return [self.cinemas count];
}

-(void)updateReservedTickets:(NSString*)numberOfTickets {
    self.reservedTicketsForMovie = numberOfTickets;
}

- (NSMutableArray*)cinemas {
    if (_cinemas == nil) {
        self.cinemas = [NSMutableArray array];
        
        Cinema* arenaOne = [[Cinema alloc]initWithName:@"Арена Deluxe Bulgaria Mall" andAddress:@"Адрес:гр.София Бул. България 69" andWorkingTime:@"Работно време: 12:00 - 01:00" andPicture:@"arena.jpg" andPictureTwo:@"arena4.jpg" andPhoneNumber:@"Телефон за контакт: 0888552266" andParkingPlaces:@"Паркоместа: 30"];
        
        [arenaOne addMovieWithName:@"THE EXPENDABLES" andPicture:@"expendables.jpeg" andWorkingTime:@"12:00, 15:00, 18:00, 21:00"];
        [arenaOne addMovieWithName:@"ICE AGE 4" andPicture:@"ice.jpg" andWorkingTime:@"13:00, 16:00, 19:00, 22:00"];
        [arenaOne addMovieWithName: @"STEP UP ALL IN" andPicture:@"Step_up.jpg" andWorkingTime:@"12:30, 15:00, 19:00, 22:00"];
        [arenaOne addMovieWithName:@"THE BOURNE LEGANCY" andPicture:@"bourne.jpg" andWorkingTime:@"12:00, 15:00, 19:00, 23:00"];
        
        Cinema* arenaTwo = [[Cinema alloc]initWithName:@"Арена The Mall" andAddress:@"Адрес:гр.София бул. Цариградско шосе 115" andWorkingTime:@"Работно време: 11:00 - 24:00" andPicture:@"arena2.jpg" andPictureTwo:@"arena3.jpg" andPhoneNumber:@"Телефон за контакт: 0895773355" andParkingPlaces:@"Паркоместа: 20"];
        [arenaTwo addMovieWithName:@"THE EXPENDABLES" andPicture:@"expendables.jpeg" andWorkingTime:@"11:00, 15:00, 18:00, 21:00"];
        [arenaTwo addMovieWithName:@"ICE AGE 4" andPicture:@"ice.jpg" andWorkingTime:@"12:00, 16:00, 18:30, 22:00"];
        [arenaTwo addMovieWithName: @"STEP UP ALL IN" andPicture:@"Step_up.jpg" andWorkingTime:@"14:00, 18:00, 20:00"];
        [arenaTwo addMovieWithName:@"THE BOURNE LEGANCY" andPicture:@"bourne.jpg" andWorkingTime:@"15:00, 20:00"];
        
        Cinema* cineGrand = [[Cinema alloc]initWithName:@"Cine Grand" andAddress:@"Адрес:гр.София бул.Арсеналски  2, ет.2" andWorkingTime:@"Работно време: 10:00 - 01:00" andPicture:@"cine grand .jpg" andPictureTwo:@"cine grand2.jpg" andPhoneNumber:@"Телефон за контакт: 0888110011" andParkingPlaces:@"Паркоместа: 50"];
        [cineGrand addMovieWithName:@"THE EXPENDABLES" andPicture:@"expendables.jpeg" andWorkingTime:@"13:00, 16:00, 20:00, 23:00"];
        [cineGrand addMovieWithName:@"ICE AGE 4" andPicture:@"ice.jpg" andWorkingTime:@"10:00, 13:00, 16:00, 21:00"];
        [cineGrand addMovieWithName: @"STEP UP ALL IN" andPicture:@"Step_up.jpg" andWorkingTime:@"11:00, 14:00, 17:00, 21:00"];
        [cineGrand addMovieWithName:@"THE BOURNE LEGANCY" andPicture:@"bourne.jpg" andWorkingTime:@"11:00, 15:00, 22:00"];

                             
        [self.cinemas addObject:arenaOne];
        [self.cinemas addObject:arenaTwo];
        [self.cinemas addObject:cineGrand];
    }
    return  _cinemas;
}


@end
