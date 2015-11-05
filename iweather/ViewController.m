//
//  ViewController.m
//  iweather
//
//  Created by tuanvu on 11/4/15.
//  Copyright © 2015 tuanvu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UIButton *temperature;
@property (weak, nonatomic) IBOutlet UIImageView *weatherIcon;
@property (weak, nonatomic) IBOutlet UILabel *quote; 

@end

@implementation ViewController
{
    NSArray* quotes;
    NSArray* locations;
    NSArray* photofiles;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    quotes = @[@"Lửa thử vàng, gian nan thử sức", @"Học, học nữa, học mãi", @"Đi một ngày đàng, học một sàng khôn", @"Nói ít, làm nhiều"];
    locations = @[@"Hồ Chí Minh, Việt Nam",@"Dubai, Indian", @"Quảng Đông, Trung Quốc", @"Rome, Italy", @"Berlin, Đức"];
    photofiles = @[@"rainy", @"sunny", @"windy", @"thunder"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)updateWeather:(id)sender {
    int quoteIndex = arc4random_uniform(quotes.count);
    NSLog(@"%d", quoteIndex);
    self.quote.text = quotes[quoteIndex];
    int locationIndex = arc4random_uniform(locations.count);
    self.location.text = locations[locationIndex];
    int photofileIndex = arc4random_uniform(photofiles.count);
    self.weatherIcon.image = [UIImage imageNamed:photofiles[photofileIndex]];
    
    NSString* string = [NSString stringWithFormat:@"%2.1f", [self getTemperature]];
    [self.temperature setTitle:string forState:UIControlStateNormal];
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
}
- (float) getTemperature {
    return 14.0 + arc4random_uniform(18) + (float)arc4random()/(float) INT32_MAX;
}


@end
