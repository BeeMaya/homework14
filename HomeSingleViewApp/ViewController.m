#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *Red;
@property (weak, nonatomic) IBOutlet UIButton *Green;
@property (weak, nonatomic) IBOutlet UIButton *Yellow;
@property (weak, nonatomic) IBOutlet UISlider *Slider1;
@property (weak, nonatomic) IBOutlet UISlider *Slider2;
@property (weak, nonatomic) IBOutlet UISlider *Slider3;
@property (weak, nonatomic) IBOutlet UILabel *LabelSlider1Value;
@property (weak, nonatomic) IBOutlet UILabel *LabelSlider2Value;
@property (weak, nonatomic) IBOutlet UILabel *LabelSlider3Value;
@property (weak, nonatomic) IBOutlet UILabel *LabelSliderColor;
- (IBAction)changeBackgroundInRed:(id)sender;
- (IBAction)changeBackgroundInGreen:(id)sender;
- (IBAction)changeBackgroundInYellow:(id)sender;
- (IBAction)OnSwitchAvailableButtons:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.LabelSlider1Value.text = [NSString stringWithFormat:@"%g", self.Slider1.value];
    self.LabelSlider2Value.text = [NSString stringWithFormat:@"%g", self.Slider2.value];
    self.LabelSlider3Value.text = [NSString stringWithFormat:@"%g", self.Slider3.value];
    self.LabelSliderColor.backgroundColor = [UIColor colorWithRed:(2) green:(3) blue:(1) alpha:(5)];
    
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
    self.Yellow.backgroundColor = switchState ? [UIColor grayColor] : self.Yellow.backgroundColor;
}

- (IBAction)OnSlider1:(UISlider*)sender {
    self.LabelSlider1Value.text = [NSString stringWithFormat:@"%g", self.Slider1.value];
}

- (IBAction)OnSlider2:(UISlider *)sender {
    self.LabelSlider2Value.text = [NSString stringWithFormat:@"%g", self.Slider2.value];
}


- (IBAction)OnSlider3:(UISlider *)sender {
    self.LabelSlider3Value.text = [NSString stringWithFormat:@"%g", self.Slider3.value];
}



@end
