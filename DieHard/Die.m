

#import "Die.h"

@implementation Die

- (void) roll{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"This happens second");
        int randomNumber = arc4random_uniform(6)+1;
        if (randomNumber > 4) {
            [self.delegate dieFellOffTheTable];
        }else{
            NSLog(@"Hi I'm the Die and I'm about to tell my delegate that the Roll is %d", randomNumber);
            [self.delegate dieRolledWithValue:randomNumber];            
        }
    });
    NSLog(@"This happens first");
}

@end
