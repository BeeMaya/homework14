#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *Red;
@property (weak, nonatomic) IBOutlet UIButton *Green;
@property (weak, nonatomic) IBOutlet UIButton *Yellow;
- (IBAction)changeBackgroundInRed:(id)sender;
- (IBAction)changeBackgroundInGreen:(id)sender;
- (IBAction)changeBackgroundInYellow:(id)sender;
- (IBAction)OnSwitchAvailableButtons:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)changeBackgroundInRed:(id)sender {
    [self.view setBackgroundColor:[UIColor redColor]];
}


- (IBAction)changeBackgroundInGreen:(id)sender {
   [self.view setBackgroundColor:[UIColor greenColor]];
}


- (IBAction)changeBackgroundInYellow:(id)sender {
  [self.view setBackgroundColor:[UIColor yellowColor]];
}


- (IBAction)OnSwitchAvailableButtons:(UISwitch*)sender {
    BOOL switchState = [sender isOn];
    self.Yellow.enabled = switchState;
    self.Yellow.backgroundColor = switchState ? [UIColor lightGrayColor] : self.Yellow.backgroundColor;
}


@end
