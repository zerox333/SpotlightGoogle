
%hook SPUISearchViewController

- (void)_searchFieldReturnPressed
{	
	UITextField *searchField = [[self valueForKey:@"searchHeader"] valueForKey:@"searchField"];
	NSLog(@"_searchFieldReturnPressed : %@", searchField.text);
	NSString *text = [searchField.text stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
	text = [@"google://search?q=" stringByAppendingString:text];
	NSLog(@"openURL : %@", text);
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:text]];
	searchField.text = @"";
	%orig;
}

%end
