/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "AMapPolylineManager.h"

#import "RCTBridge.h"
#import "RCTConvert.h"
#import "RCTConvert+CoreLocation.h"
#import "RCTConvert+AMapKit.h"
#import "RCTEventDispatcher.h"
#import "UIView+React.h"
#import "AMapMarker.h"
#import "RCTViewManager.h"
#import "AMapPolyline.h"

@interface AMapPolylineManager()

@end

@implementation AMapPolylineManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    AMapPolyline *polyline = [AMapPolyline new];
    return polyline;
}

RCT_EXPORT_VIEW_PROPERTY(coordinates, AMapCoordinateArray)
RCT_EXPORT_VIEW_PROPERTY(strokeColor, UIColor)
RCT_EXPORT_VIEW_PROPERTY(strokeWidth, CGFloat)
RCT_EXPORT_VIEW_PROPERTY(lineCap, CGLineCap)
RCT_EXPORT_VIEW_PROPERTY(lineJoin, CGLineJoin)
RCT_EXPORT_VIEW_PROPERTY(miterLimit, CGFloat)
RCT_EXPORT_VIEW_PROPERTY(lineDashPhase, CGFloat)
RCT_EXPORT_VIEW_PROPERTY(lineDashPattern, NSArray)

// NOTE(lmr):
// for now, onPress events for overlays will be left unimplemented. Seems it is possible with some work, but
// it is difficult to achieve in both ios and android so I decided to leave it out.
//RCT_EXPORT_VIEW_PROPERTY(onPress, RCTBubblingEventBlock)

@end
