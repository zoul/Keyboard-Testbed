#import "KTKeyboardViewController.h"

@interface KTKeyboardViewController ()
@property(strong) UIButton *button;
@end

@implementation KTKeyboardViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    [self setButton:[[UIButton alloc] init]];
    [_button setTitle:@"Do Something" forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(doSomething) forControlEvents:UIControlEventTouchUpInside];
    [_button sizeToFit];
    [[self inputView] addSubview:_button];
}

- (void) viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    [_button setCenter:[[self inputView] center]];
}

- (void) doSomething
{
    NSLog(@"I’m doing something.");
}

@end
