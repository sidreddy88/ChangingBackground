//
//  BackgroundImage.h
//  ChangingBackground
//
//  Created by Siddharth Sukumar on 5/7/14.
//  Copyright (c) 2014 Ora Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BackgroundView : UIView

@property (nonatomic, strong) UIImage *backgroundImage;

- (void) animatingTheForegroundImagewithImage : (UIImage *) image;

//- (void) animatingTheForegroundImage;

//- (void) addSublayers;

@end
