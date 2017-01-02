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
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
@property (weak, nonatomic) IBOutlet UIButton *finishButton;
@property (weak, nonatomic) IBOutlet UILabel *wordDefBox;

//Button Function Declaration
- (IBAction)ArtAction:(id)sender;
- (IBAction)HappyAction:(id)sender;
- (IBAction)PQAction:(id)sender;
- (IBAction)NegativeAction:(id)sender;
- (IBAction)SATAction:(id)sender;
- (IBAction)NextAction:(id)sender;
- (IBAction)FinishAction:(id)sender;


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
    self.nextButton.hidden = false;
    self.finishButton.hidden = true;
    self.wordDefBox.hidden = false;
    
    //open file THIS IS WHAT IS NOT WORKING
    //@autoreleasepool {
        
        NSURL *url = [NSURL fileURLWithPath:@"artList.txt"];
        
        NSString *fileContent = [NSString stringWithContentsOfURL:url encoding: NSUTF8StringEncoding error:nil];
        
        NSLog(@"fileContent = %@", fileContent);
        _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, fileContent];
   // }
    

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
    self.nextButton.hidden = false;
    self.finishButton.hidden = true;
    self.wordDefBox.hidden = false;
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
    self.nextButton.hidden = false;
    self.finishButton.hidden = true;
    self.wordDefBox.hidden = false;
    
   // NSString *Deferential = @"deferential: Showing deference; respectful.";
    
   // _wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, Deferential];
    
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
    self.nextButton.hidden = false;
    self.finishButton.hidden = true;
    self.wordDefBox.hidden = false;
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
    self.nextButton.hidden = false;
    self.finishButton.hidden = true;
    self.wordDefBox.hidden = false;
}

- (IBAction)NextAction:(id)sender {
    
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
    self.nextButton.hidden = false;
    self.finishButton.hidden = true;
    self.wordDefBox.hidden = false;
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
    self.nextButton.hidden = false;
    self.finishButton.hidden = false;
    self.wordDefBox.hidden = false;
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
    self.nextButton.hidden = true;
    self.finishButton.hidden = true;
    self.wordDefBox.hidden = false;
    

    //writing to text box
    //NSString *data = (@"HEllo this is a test");
    
    //_wordDefBox.text = [NSString stringWithFormat:@"%@%@",_wordDefBox.text, data];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
