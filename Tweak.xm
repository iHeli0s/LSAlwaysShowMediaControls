@interface SBAwayView {}
- (void)showMediaControls;
- (void)setIsShowingControls:(BOOL)arg1;

@end

%hook SBAwayView
- (void)hideMediaControls {

}
- (void)_hideMediaControls {


}

- (void)startAnimations {

%orig;
[self showMediaControls];

}

%end
