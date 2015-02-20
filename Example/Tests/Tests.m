#import "Specs.h"

SpecBegin(Spec)

describe(@"", ^{

    beforeEach(^{
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        UIViewController *viewController = [storyboard instantiateInitialViewController];
        [UIApplication sharedApplication].delegate.window.rootViewController = viewController;
    });

    afterEach(^{
    });

    describe(@"when a user taps on navigation segue button", ^{
        beforeEach(^{
            [tester waitForViewWithAccessibilityLabel:@"Main View"];
            [tester tapViewWithAccessibilityLabel:@"Navigation Segue"];
        });
        it(@"should segue into the first view controller", ^{
            [tester waitForViewWithAccessibilityLabel:@"First View"];
        });
    });

    describe(@"when a user taps on modal segue button", ^{
        beforeEach(^{
            [tester waitForViewWithAccessibilityLabel:@"Main View"];
            [tester tapViewWithAccessibilityLabel:@"Modal Segue"];
        });
        it(@"should segue into the second view controller", ^{
            [tester waitForViewWithAccessibilityLabel:@"Second View"];
        });
    });

    describe(@"when a user taps on the close button from the second view", ^{
        beforeEach(^{
            [tester waitForViewWithAccessibilityLabel:@"Main View"];
            [tester tapViewWithAccessibilityLabel:@"Modal Segue"];
            [tester waitForViewWithAccessibilityLabel:@"Second View"];
            [tester tapViewWithAccessibilityLabel:@"Close"];
        });
        it(@"should return to the main view", ^{
            [tester waitForViewWithAccessibilityLabel:@"Main View"];
        });
    });
    
});

SpecEnd