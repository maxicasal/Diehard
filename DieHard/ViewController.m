
#import "ViewController.h"

@interface ViewController () <DieDelegate>
@property (weak, nonatomic) IBOutlet UILabel *dieLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.die = [[Die alloc] init];
    self.die.delegate = self;
}
- (IBAction)onRollButtonPressed:(id)sender {
    [self.die roll];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (void)dieRolledWithValue:(int)value{
    self.dieLabel.text =@(value).description;
    NSLog(@"Hi I'm ViewController and the Die told me its Roll is: %d", value);
}

- (void)dieFellOffTheTable{
    self.dieLabel.text =@"😊";
}
@end
