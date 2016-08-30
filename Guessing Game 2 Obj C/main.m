#import <Foundation/Foundation.h>

void guessingGame();
void startGame();
void endGame();

int restartGame ();
int playAgainInput = -1;
int input = -1;

int main(int argc, const char * argv[]) {
    startGame();
    return 0;
}

void startGame() {
    
    NSString *winner = @"You win!\n";
    
    NSMutableArray *badGuesses = [NSMutableArray arrayWithCapacity:100];
    NSNumber *gen = @(arc4random_uniform(5));
    NSNumber *numberInput = [NSNumber numberWithInt:input];
    
    while ([numberInput intValue] != [gen intValue]) {
        
        NSLog(@"Guess a number between 0 and 4!\n");
        
        fpurge(stdin);
        scanf("%d", &input);
        numberInput = [NSNumber numberWithInt:input];
        [badGuesses addObject:numberInput];
        NSLog(@"You guessed %@", numberInput);
        
        NSLog(@"%@ are your guesses so far", badGuesses);
    }
    
    NSLog(@"%@", winner);
    
    
    NSLog(@"%@ is the correct number", gen);
    
    return endGame();
}


void endGame() {
    if (restartGame() == 0 ) {
        startGame();
    }
}

int restartGame() {
    
    int playAgain = -1;
    
    while (playAgain != 0 && playAgain != 1) {
        NSLog(@"Do you want to play again?\n");
        NSLog(@"0: YES\n1: NO\n");
        scanf("%d", &playAgainInput);
        playAgain = playAgainInput;
    }
    return playAgain;
}
