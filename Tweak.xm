@interface SBAwayView {}
- (void)showMediaControls;
@end

%hook SBAwayView
- (void)hideMediaControls {  }
- (void)_hideMediaControls {  }
%end

%hook SBAwayController
- (void)activate {
  [self showMediaControls];
  %orig;
}
%end
