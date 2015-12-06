//
//  ColorButton.m
//  Button Fun
//
//  Created by Kevin on 12/6/15.
//  Copyright © 2015 Kevin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ColorButton.h"

@implementation ColorButton

-(instancetype)init
{
    if (self = [super init])
    {
        UITapGestureRecognizer *tapGR;
        tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
        tapGR.numberOfTapsRequired = 1;
        [self addGestureRecognizer:tapGR];
        
        self.frame = CGRectMake(0, 0, 40, 40);
        
        [self setRandomColor];
    }
    return self;
}

-(void)handleTap:(UITapGestureRecognizer*)sender
{
    [self setRandomColor];
}

-(void)setRandomColor
{
    float red = (float)rand() / RAND_MAX;
    float blue = (float)rand() / RAND_MAX;
    float green = (float)rand() / RAND_MAX;
    
    self.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
}

@end

