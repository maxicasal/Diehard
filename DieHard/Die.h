
#import <Foundation/Foundation.h>

@protocol DieDelegate

-(void) dieRolledWithValue: (int) value;
-(void) dieFellOffTheTable;

@end

@interface Die : NSObject

- (void) roll;

@property id<DieDelegate> delegate;

@end
