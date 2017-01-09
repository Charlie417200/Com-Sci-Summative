//
//  FirstViewController.m
//  Tabbed Application
//
//  Created by Sam Faulkner on 2016-12-19.
//  Copyright © 2016 Sam Faulkner and Arsheya Jain. All rights reserved.
//

#import "FirstViewController.h"
#import <Foundation/Foundation.h>

@interface FirstViewController ()

//Variable Declaration
@property (weak, nonatomic) IBOutlet UILabel *LearnWTitle;
@property (weak, nonatomic) IBOutlet UIImageView *ArtPic;
@property (weak, nonatomic) IBOutlet UIImageView *happyPic;
@property (weak, nonatomic) IBOutlet UIImageView *PQPic;
@property (weak, nonatomic) IBOutlet UIImageView *NegativePic;
@property (weak, nonatomic) IBOutlet UIImageView *SATPic;
@property (weak, nonatomic) IBOutlet UIButton *ArtPress;
@property (weak, nonatomic) IBOutlet UIButton *HappyPress;
@property (weak, nonatomic) IBOutlet UIButton *PQPress;
@property (weak, nonatomic) IBOutlet UIButton *NegativePress;
@property (weak, nonatomic) IBOutlet UIButton *SATPress;
@property (weak, nonatomic) IBOutlet UIButton *finishButton;
@property (weak, nonatomic) IBOutlet UILabel *wordDefBox;
@property (weak, nonatomic) IBOutlet UIButton *nextArtButton;
@property (weak, nonatomic) IBOutlet UIButton *nextPQButton;
@property (weak, nonatomic) IBOutlet UIButton *nextSadButton;
@property (weak, nonatomic) IBOutlet UIButton *nextHappyButton;
@property (weak, nonatomic) IBOutlet UIButton *nextSATButton;


//Button Function Declaration
- (IBAction)ArtAction:(id)sender;
- (IBAction)HappyAction:(id)sender;
- (IBAction)PQAction:(id)sender;
- (IBAction)NegativeAction:(id)sender;
- (IBAction)SATAction:(id)sender;
- (IBAction)FinishAction:(id)sender;
- (void)viewDidAppear:(BOOL)animated;
- (IBAction)nextArtAction:(id)sender;
- (IBAction)nextPQAction:(id)sender;
- (IBAction)nextSadAction:(id)sender;
- (IBAction)nextHappyAction:(id)sender;
- (IBAction)nextSATAction:(id)sender;

@end

@implementation FirstViewController

//Button Functions
- (IBAction)ArtAction:(id)sender {
    
    //hiding all of the images
    self.LearnWTitle.hidden = false;
    self.ArtPic.hidden = true;
    self.happyPic.hidden = true;
    self.PQPic.hidden = true;
    self.NegativePic.hidden = true;
    self.SATPic.hidden = true;
    self.ArtPress.hidden = true;
    self.HappyPress.hidden = true;
    self.PQPress.hidden = true;
    self.NegativePress.hidden = true;
    self.SATPress.hidden = true;
    self.nextPQButton.hidden = true;
    self.nextArtButton.hidden = false;
    self.nextSadButton.hidden = true;
    self.nextSATButton.hidden = true;
    self.nextHappyButton.hidden = true;
    self.finishButton.hidden = false;
    self.wordDefBox.hidden = false;
    

    //open file
    NSURL *myURL = [[NSBundle mainBundle]
                        URLForResource: @"artList" withExtension:@"txt"];
    NSError *error = nil;
    NSString *string = [NSString stringWithContentsOfURL:myURL encoding:NSUTF8StringEncoding error:&error];
        
    NSArray *lines = [string componentsSeparatedByString:@"\n"];

    //output first definition to screen
    _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[0]];
    _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
    _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[1]];
    _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
    
}

- (IBAction)HappyAction:(id)sender {
    
    //hiding all of the images
    self.LearnWTitle.hidden = false;
    self.ArtPic.hidden = true;
    self.happyPic.hidden = true;
    self.PQPic.hidden = true;
    self.NegativePic.hidden = true;
    self.SATPic.hidden = true;
    self.ArtPress.hidden = true;
    self.HappyPress.hidden = true;
    self.PQPress.hidden = true;
    self.NegativePress.hidden = true;
    self.SATPress.hidden = true;
    self.nextPQButton.hidden = true;
    self.nextArtButton.hidden = true;
    self.nextSadButton.hidden = true;
    self.nextSATButton.hidden = true;
    self.nextHappyButton.hidden = false;
    self.finishButton.hidden = false;
    self.wordDefBox.hidden = false;
    
    //open file
    NSURL *myURL = [[NSBundle mainBundle]
                    URLForResource: @"happyList" withExtension:@"txt"];
    NSError *error = nil;
    NSString *string = [NSString stringWithContentsOfURL:myURL encoding:NSUTF8StringEncoding error:&error];
    
    NSArray *lines = [string componentsSeparatedByString:@"\n"];
    
    //output first definition to screen
    _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[0]];
    _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
    _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[1]];
    _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
}

- (IBAction)PQAction:(id)sender {

    //hiding all of the images
    self.LearnWTitle.hidden = false;
    self.ArtPic.hidden = true;
    self.happyPic.hidden = true;
    self.PQPic.hidden = true;
    self.NegativePic.hidden = true;
    self.SATPic.hidden = true;
    self.ArtPress.hidden = true;
    self.HappyPress.hidden = true;
    self.PQPress.hidden = true;
    self.NegativePress.hidden = true;
    self.SATPress.hidden = true;
    self.nextPQButton.hidden = false;
    self.nextArtButton.hidden = true;
    self.nextSadButton.hidden = true;
    self.nextSATButton.hidden = true;
    self.nextHappyButton.hidden = true;
    self.finishButton.hidden = false;
    self.wordDefBox.hidden = false;
    
    //open file
    NSURL *myURL = [[NSBundle mainBundle]
                    URLForResource: @"pqList" withExtension:@"txt"];
    NSError *error = nil;
    NSString *string = [NSString stringWithContentsOfURL:myURL encoding:NSUTF8StringEncoding error:&error];
    
    NSArray *lines = [string componentsSeparatedByString:@"\n"];
    
    //output first definition to screen
    _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[0]];
    _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
    _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[1]];
    _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
    
}

- (IBAction)NegativeAction:(id)sender {
    
    //hiding all of the images
    self.LearnWTitle.hidden = false;
    self.ArtPic.hidden = true;
    self.happyPic.hidden = true;
    self.PQPic.hidden = true;
    self.NegativePic.hidden = true;
    self.SATPic.hidden = true;
    self.ArtPress.hidden = true;
    self.HappyPress.hidden = true;
    self.PQPress.hidden = true;
    self.NegativePress.hidden = true;
    self.SATPress.hidden = true;
    self.nextPQButton.hidden = true;
    self.nextArtButton.hidden = true;
    self.nextSadButton.hidden = false;
    self.nextSATButton.hidden = true;
    self.nextHappyButton.hidden = true;
    self.finishButton.hidden = false;
    self.wordDefBox.hidden = false;
    
    //open file
    NSURL *myURL = [[NSBundle mainBundle]
                    URLForResource: @"sadList" withExtension:@"txt"];
    NSError *error = nil;
    NSString *string = [NSString stringWithContentsOfURL:myURL encoding:NSUTF8StringEncoding error:&error];
    
    NSArray *lines = [string componentsSeparatedByString:@"\n"];
    
    //output first definition to screen
    _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[0]];
    _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
    _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[1]];
    _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
}

- (IBAction)SATAction:(id)sender {
    
    //hiding all of the images
    self.LearnWTitle.hidden = false;
    self.ArtPic.hidden = true;
    self.happyPic.hidden = true;
    self.PQPic.hidden = true;
    self.NegativePic.hidden = true;
    self.SATPic.hidden = true;
    self.ArtPress.hidden = true;
    self.HappyPress.hidden = true;
    self.PQPress.hidden = true;
    self.NegativePress.hidden = true;
    self.SATPress.hidden = true;
    self.nextPQButton.hidden = true;
    self.nextArtButton.hidden = true;
    self.nextSadButton.hidden = true;
    self.nextSATButton.hidden = false;
    self.nextHappyButton.hidden = true;
    self.finishButton.hidden = false;
    self.wordDefBox.hidden = false;
    
    //open file
    NSURL *myURL = [[NSBundle mainBundle]
                    URLForResource: @"SATList" withExtension:@"txt"];
    NSError *error = nil;
    NSString *string = [NSString stringWithContentsOfURL:myURL encoding:NSUTF8StringEncoding error:&error];
    
    NSArray *lines = [string componentsSeparatedByString:@"\n"];
    
    //output first definition to screen
    _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[0]];
    _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
    _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[1]];
    _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
}

- (IBAction)nextArtAction:(id)sender {
    
    //variable declaration
    static int countPressed = 1;
    
    //hiding all of the images
    self.LearnWTitle.hidden = false;
    self.ArtPic.hidden = true;
    self.happyPic.hidden = true;
    self.PQPic.hidden = true;
    self.NegativePic.hidden = true;
    self.SATPic.hidden = true;
    self.ArtPress.hidden = true;
    self.HappyPress.hidden = true;
    self.PQPress.hidden = true;
    self.NegativePress.hidden = true;
    self.SATPress.hidden = true;
    self.nextPQButton.hidden = true;
    self.nextArtButton.hidden = false;
    self.nextSadButton.hidden = true;
    self.nextSATButton.hidden = true;
    self.nextHappyButton.hidden = true;
    self.finishButton.hidden = false;
    self.wordDefBox.hidden = false;
    
    //open file
    NSURL *myURL = [[NSBundle mainBundle]
                    URLForResource: @"artList" withExtension:@"txt"];
    NSError *error = nil;
    NSString *string = [NSString stringWithContentsOfURL:myURL encoding:NSUTF8StringEncoding error:&error];
    
    NSArray *lines = [string componentsSeparatedByString:@"\n"];
   
    
    if(countPressed * 2 < 20) {
        
        //output definition to screen
        _wordDefBox.text = @""; //clearing screen
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[countPressed * 2]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[countPressed *2 + 1]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
        
    }
    
    else if(countPressed * 2 >= 20) {
        countPressed = 0;
        _wordDefBox.text = @""; //clearing screen
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[0]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[1]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
    }
    
    countPressed++;
}

- (IBAction)nextSadAction:(id)sender {
    
    //variable declaration
    static int sadCountPressed = 1;
    
    //hiding all of the images
    self.LearnWTitle.hidden = false;
    self.ArtPic.hidden = true;
    self.happyPic.hidden = true;
    self.PQPic.hidden = true;
    self.NegativePic.hidden = true;
    self.SATPic.hidden = true;
    self.ArtPress.hidden = true;
    self.HappyPress.hidden = true;
    self.PQPress.hidden = true;
    self.NegativePress.hidden = true;
    self.SATPress.hidden = true;
    self.nextPQButton.hidden = true;
    self.nextArtButton.hidden = true;
    self.nextSadButton.hidden = false;
    self.nextSATButton.hidden = true;
    self.nextHappyButton.hidden = true;
    self.finishButton.hidden = false;
    self.wordDefBox.hidden = false;
    
    //open file
    NSURL *sadURL = [[NSBundle mainBundle]
                    URLForResource: @"sadList" withExtension:@"txt"];
    NSError *error = nil;
    NSString *string = [NSString stringWithContentsOfURL:sadURL encoding:NSUTF8StringEncoding error:&error];
    
    NSArray *sadLines = [string componentsSeparatedByString:@"\n"];
    
    if(sadCountPressed * 2 < 46) {
        
        //output definition to screen
        _wordDefBox.text = @""; //clearing screen
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, sadLines[sadCountPressed * 2]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, sadLines[sadCountPressed * 2 + 1]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
        
    }
    else if(sadCountPressed * 2 >= 46) {
        
        sadCountPressed = 0;
        _wordDefBox.text = @""; //clearing screen
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, sadLines[0]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, sadLines[1]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
    }
    
    sadCountPressed++;

}

- (IBAction)nextHappyAction:(id)sender {
   
    static int happyPressed = 1;
    
    self.LearnWTitle.hidden = false;
    self.ArtPic.hidden = true;
    self.happyPic.hidden = true;
    self.PQPic.hidden = true;
    self.NegativePic.hidden = true;
    self.SATPic.hidden = true;
    self.ArtPress.hidden = true;
    self.HappyPress.hidden = true;
    self.PQPress.hidden = true;
    self.NegativePress.hidden = true;
    self.SATPress.hidden = true;
    self.nextPQButton.hidden = true;
    self.nextArtButton.hidden = true;
    self.nextSadButton.hidden = true;
    self.nextSATButton.hidden = true;
    self.nextHappyButton.hidden = false;
    self.finishButton.hidden = false;
    self.wordDefBox.hidden = false;
    
    //open file
    NSURL *myURL = [[NSBundle mainBundle]
                    URLForResource: @"happyList" withExtension:@"txt"];
    NSError *error = nil;
    NSString *string = [NSString stringWithContentsOfURL:myURL encoding:NSUTF8StringEncoding error:&error];
    
    NSArray *lines = [string componentsSeparatedByString:@"\n"];
    
    if(happyPressed * 2 < 36) {
        
        //output definition to screen
        _wordDefBox.text = @""; //clearing screen
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[happyPressed * 2]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[happyPressed * 2 + 1]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
        
    }
    
    else if(happyPressed * 2 >= 36) {
        happyPressed = 0;
        _wordDefBox.text = @""; //clearing screen
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[0]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[1]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
    }
    
    happyPressed++;
}

- (IBAction)nextSATAction:(id)sender {
    
    static int SATPressed = 1;
    
    self.LearnWTitle.hidden = false;
    self.ArtPic.hidden = true;
    self.happyPic.hidden = true;
    self.PQPic.hidden = true;
    self.NegativePic.hidden = true;
    self.SATPic.hidden = true;
    self.ArtPress.hidden = true;
    self.HappyPress.hidden = true;
    self.PQPress.hidden = true;
    self.NegativePress.hidden = true;
    self.SATPress.hidden = true;
    self.nextPQButton.hidden = true;
    self.nextArtButton.hidden = true;
    self.nextSadButton.hidden = true;
    self.nextSATButton.hidden = false;
    self.nextHappyButton.hidden = true;
    self.finishButton.hidden = false;
    self.wordDefBox.hidden = false;
    
    //open file
    NSURL *myURL = [[NSBundle mainBundle]
                    URLForResource: @"SATList" withExtension:@"txt"];
    NSError *error = nil;
    NSString *string = [NSString stringWithContentsOfURL:myURL encoding:NSUTF8StringEncoding error:&error];
    
    NSArray *lines = [string componentsSeparatedByString:@"\n"];
    
    if(SATPressed * 2 < 334) {
        
        //output definition to screen
        _wordDefBox.text = @""; //clearing screen
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[SATPressed * 2]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[SATPressed * 2 + 1]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
        
    }
    
    else if(SATPressed * 2 >= 334) {
        SATPressed = 0;
        _wordDefBox.text = @""; //clearing screen
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[0]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[1]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
    }
    
    SATPressed++;
}

- (IBAction)nextPQAction:(id)sender {
    
    static int pqPressed = 1;
    
    self.LearnWTitle.hidden = false;
    self.ArtPic.hidden = true;
    self.happyPic.hidden = true;
    self.PQPic.hidden = true;
    self.NegativePic.hidden = true;
    self.SATPic.hidden = true;
    self.ArtPress.hidden = true;
    self.HappyPress.hidden = true;
    self.PQPress.hidden = true;
    self.NegativePress.hidden = true;
    self.SATPress.hidden = true;
    self.nextPQButton.hidden = false;
    self.nextArtButton.hidden = true;
    self.nextSadButton.hidden = true;
    self.nextSATButton.hidden = true;
    self.nextHappyButton.hidden = true;
    self.finishButton.hidden = false;
    self.wordDefBox.hidden = false;
    
    //open file
    NSURL *myURL = [[NSBundle mainBundle]
                    URLForResource: @"pqList" withExtension:@"txt"];
    NSError *error = nil;
    NSString *string = [NSString stringWithContentsOfURL:myURL encoding:NSUTF8StringEncoding error:&error];
    
    NSArray *lines = [string componentsSeparatedByString:@"\n"];
    
    if(pqPressed * 2 < 22) {
        
        //output definition to screen
        _wordDefBox.text = @""; //clearing screen
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[pqPressed * 2]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[pqPressed * 2 + 1]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
        
    }
    
    else if(pqPressed * 2 >= 22) {
        pqPressed = 0;
        _wordDefBox.text = @""; //clearing screen
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[0]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, lines[1]];
        _wordDefBox.text = [NSString stringWithFormat:@"%@%s",_wordDefBox.text, "\n"];
    }
    
    pqPressed++;
}

- (IBAction)FinishAction:(id)sender {
    
    //hiding all of the images
    self.LearnWTitle.hidden = false;
    self.ArtPic.hidden = true;
    self.happyPic.hidden = true;
    self.PQPic.hidden = true;
    self.NegativePic.hidden = true;
    self.SATPic.hidden = true;
    self.ArtPress.hidden = true;
    self.HappyPress.hidden = true;
    self.PQPress.hidden = true;
    self.NegativePress.hidden = true;
    self.SATPress.hidden = true;
    self.nextPQButton.hidden = true;
    self.nextArtButton.hidden = true;
    self.nextSadButton.hidden = true;
    self.nextSATButton.hidden = true;
    self.nextHappyButton.hidden = true;
    self.finishButton.hidden = false;
    self.wordDefBox.hidden = false;
    
     _wordDefBox.text = @""; //clearing screen
    [self viewDidLoad];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Home page: What you first see
    self.LearnWTitle.hidden = false;
    self.ArtPic.hidden = false;
    self.happyPic.hidden = false;
    self.PQPic.hidden = false;
    self.NegativePic.hidden = false;
    self.SATPic.hidden = false;
    self.ArtPress.hidden = false;
    self.HappyPress.hidden = false;
    self.PQPress.hidden = false;
    self.NegativePress.hidden = false;
    self.SATPress.hidden = false;
    self.nextPQButton.hidden = true;
    self.nextArtButton.hidden = true;
    self.nextSadButton.hidden = true;
    self.nextSATButton.hidden = true;
    self.nextHappyButton.hidden = true;
    self.finishButton.hidden = true;
    self.wordDefBox.hidden = false;
 
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
