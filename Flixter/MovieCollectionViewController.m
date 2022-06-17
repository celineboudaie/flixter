//
//  MovieCollectionViewController.m
//  Flixter
//
//  Created by Celine Boudaie on 6/17/22.
//

#import "MovieCollectionViewController.h"

@interface MovieCollectionViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property(weak, nonatomic)NSArray *resultsArray;
@end

@implementation MovieCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url = [NSURL URLWithString:@"https://api.themoviedb.org/3/movie/now_playing?api_key=7f1849e764fef1875bf464a4720a3799"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:10.0];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration] delegate:nil delegateQueue:[NSOperationQueue mainQueue]];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
           if (error != nil) {
               NSLog(@"%@", [error localizedDescription]);
               UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Cannot Get Movies" message:@"The internet appears to offline. Try to connect again!" preferredStyle:UIAlertControllerStyleAlert];

               UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                                       //button click event
                                   }];
               
               [alert addAction:ok];
               [self presentViewController:alert animated:YES completion:nil];
           }
           else {
               NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];

               NSArray *resultsArray = dataDictionary[@"results"];
               self.resultsArray = resultsArray;
               [self.collectionView reloadData];
             
           }
       }];

    [task resume];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
