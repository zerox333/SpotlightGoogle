#line 1 "/Users/dev/Desktop/SpotlightGoogle/SpotlightGoogle/SpotlightGoogle.xm"

#include <logos/logos.h>
#include <substrate.h>
@class SPUISearchViewController; 
static void (*_logos_orig$_ungrouped$SPUISearchViewController$_searchFieldReturnPressed)(SPUISearchViewController*, SEL); static void _logos_method$_ungrouped$SPUISearchViewController$_searchFieldReturnPressed(SPUISearchViewController*, SEL); 

#line 2 "/Users/dev/Desktop/SpotlightGoogle/SpotlightGoogle/SpotlightGoogle.xm"



static void _logos_method$_ungrouped$SPUISearchViewController$_searchFieldReturnPressed(SPUISearchViewController* self, SEL _cmd) {	
	UITextField *searchField = [[self valueForKey:@"searchHeader"] valueForKey:@"searchField"];
	NSLog(@"_searchFieldReturnPressed : %@", searchField.text);
	NSString *text = [searchField.text stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
	text = [@"google://search?q=" stringByAppendingString:text];
	NSLog(@"openURL : %@", text);
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:text]];
	searchField.text = @"";
	_logos_orig$_ungrouped$SPUISearchViewController$_searchFieldReturnPressed(self, _cmd);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SPUISearchViewController = objc_getClass("SPUISearchViewController"); MSHookMessageEx(_logos_class$_ungrouped$SPUISearchViewController, @selector(_searchFieldReturnPressed), (IMP)&_logos_method$_ungrouped$SPUISearchViewController$_searchFieldReturnPressed, (IMP*)&_logos_orig$_ungrouped$SPUISearchViewController$_searchFieldReturnPressed);} }
#line 17 "/Users/dev/Desktop/SpotlightGoogle/SpotlightGoogle/SpotlightGoogle.xm"
