//
//  RegisterViewController.h
//  Cinema program
//
//  Created by Rumyana Atanasova on 24.05.15.
//  Copyright (c) 2015 г. Rumyana Atanasova. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface RegisterViewController : UIViewController<UITextFieldDelegate>
@property User* user;
@end
