//
//  BackgroundImage.m
//  ChangingBackground
//
//  Created by Siddharth Sukumar on 5/7/14.
//  Copyright (c) 2014 Ora Interactive. All rights reserved.
//

#import "BackgroundView.h"


@interface BackgroundView ()
@property (nonatomic, strong) IBOutlet UIImageView *backgroundImageView;
@property (nonatomic, strong) IBOutlet UIImageView *foregroundImageView;


@end

@implementation BackgroundView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

     }
    return self;
}

- (void)setBackgroundImage:(UIImage *)backgroundImage {

    self.backgroundImageView.image = backgroundImage;

}

- (void) animatingTheForegroundImagewithImage : (UIImage *) image {

    self.foregroundImageView.image = image;

    CABasicAnimation *theAnimation;

    //within the animation we will adjust the "opacity"value of the layer

    theAnimation=[CABasicAnimation animationWithKeyPath:@"opacity"];
    theAnimation.duration=1.5;

    //changing the opacity (1=fully visible, 0=unvisible)
    
    theAnimation.fromValue=[NSNumber numberWithFloat:0.0];
    theAnimation.toValue=[NSNumber numberWithFloat:1.0];
    [self.foregroundImageView.layer addAnimation:theAnimation
                                                 forKey:@"animateOpacity"];


    
}



@end
