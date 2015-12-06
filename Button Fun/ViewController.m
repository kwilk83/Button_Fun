//
//  ViewController.m
//  Button Fun
//
//  Created by Kevin on 12/6/15.
//  Copyright © 2015 Kevin. All rights reserved.
//

#import "ViewController.h"
#import "ColorButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([self respondsToSelector:@selector(setNeedsStatusBarAppearanceUpdate)]) {
        [self performSelector:@selector(setNeedsStatusBarAppearanceUpdate)];
    }
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self setupButtons];
}

-(void)setupButtons
{
    int buttonsWide = self.view.bounds.size.width / 40;
    int buttonsTall = self.view.bounds.size.height / 40;
    NSMutableArray* mutButtonsArray = [[NSMutableArray alloc] init];
    
    for (int i = 0; i <= buttonsWide; i++)
    {
        for (int j = 0; j <= buttonsTall; j++)
        {
            ColorButton* button = [[ColorButton alloc]init];
            button.frame = CGRectMake(i * 40, j * 40, 40, 40);
            [self.view addSubview:button];
            [mutButtonsArray addObject:button];
        }
    }
    
    self.buttonsArray = mutButtonsArray;
}


@end
