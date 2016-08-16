#import <Foundation/Foundation.h>

NSString *firstName = @"Your Name";
NSString *lastName = @"Here";


int main(int argc, const char * argv[]) {
    
    int input = 0;
    
    NSNumber *gen = @(arc4random_uniform(5));
    
    NSLog(@"%@ %@", firstName, lastName);
    NSLog(@"Pick a number between 0 and 5.");
    
    scanf("%i", &input);
    
    while(input != gen)
    {
        NSLog(@"Your answer %d is wrong!\n", input);
        NSLog(@"Pick again");
        scanf("%i", &input);
        if(input == gen)
        {
            NSLog(@"Correct!");
        }
    }
    
    NSLog(@"Your answer is %d", input);
    
    return 0;
}
