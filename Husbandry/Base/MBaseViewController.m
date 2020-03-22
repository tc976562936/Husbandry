//
//  MBaseViewController.m
//

#import "MBaseViewController.h"

@implementation MBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

}

- (void)setTitle:(NSString *)title {
    [super setTitle:title];
   
}

- (BOOL)shouldCustomizeNavigationBarTransitionIfHideable {
    return YES;
}

@end
