//
//  MyActiveTweet.h
//  twiz
//
//  Created by John D. Storey on 6/17/14.
//
//

#import <Foundation/Foundation.h>

@interface MyActiveTweet : NSObject

@property (strong, nonatomic) NSString *correctAnswerID;
@property (strong, nonatomic) UIImage *correctAnswerPhoto;
@property (strong, nonatomic) NSString *tweet;
@property (strong,nonatomic) NSMutableArray *possibleAnswers;

@end
