#import "KTKeyboardViewController.h"

@interface KTKeyboardViewController ()
@property(strong) UIButton *actionButton;
@property(strong) UIButton *keyboardSwitchButton;
@end

@implementation KTKeyboardViewController

- (void) viewDidLoad
{
    [super viewDidLoad];

    UIColor *standardIOSBlue = [UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0];

    [self setActionButton:[[UIButton alloc] init]];
    [_actionButton setTitle:@"Do Something" forState:UIControlStateNormal];
    [_actionButton setTitleColor:standardIOSBlue forState:UIControlStateNormal];
    [_actionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [_actionButton addTarget:self action:@selector(doSomething) forControlEvents:UIControlEventTouchUpInside];
    [_actionButton sizeToFit];

    [self setKeyboardSwitchButton:[[UIButton alloc] init]];
    [_keyboardSwitchButton setTitle:@"Switch" forState:UIControlStateNormal];
    [_keyboardSwitchButton setTitleColor:standardIOSBlue forState:UIControlStateNormal];
    [_keyboardSwitchButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [_keyboardSwitchButton addTarget:self action:@selector(advanceToNextInputMode) forControlEvents:UIControlEventTouchUpInside];
    [_keyboardSwitchButton sizeToFit];

    [[self inputView] addSubview:_actionButton];
    [[self inputView] addSubview:_keyboardSwitchButton];
}

- (void) viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    [_actionButton setCenter:[[self inputView] center]];
    CGRect containerFrame = [[self inputView] frame];
    CGRect kbSwitchFrame = [_keyboardSwitchButton frame];
    [_keyboardSwitchButton setCenter:CGPointMake(
        CGRectGetMaxX(containerFrame)-CGRectGetWidth(kbSwitchFrame)/2-10,
        CGRectGetMaxY(containerFrame)-CGRectGetHeight(kbSwitchFrame)/2-10)];
}

- (void) doSomething
{
    NSLog(@"I’m doing something.");
}

@end
