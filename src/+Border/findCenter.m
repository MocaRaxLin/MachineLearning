function centerPos = findCenter( irisImage )
% To find the center of an eye image
%   input a binary irisImage to get the center coordinate centerPos(1) =
%   center column, centerPos(2) = center row.

import Border.*;

% centerPos = [];
% columnSum = sum(irisImage);
% rowSum = sum(irisImage,2);
% 
% find the center peak of columnSum
% centerPos(2) = twoValley(columnSum);
% 
% find the center peak of rowSum
% centerPos(1) = twoValley(rowSum');

% insert btr
%btr Center line 16
MSGID = 'images:imfindcircles:warnForLargeRadiusRange';
warning('off', MSGID);
[centers, radii, metric] = imfindcircles(irisImage,[20 90]);
warning('on', MSGID);
[r index] = max(radii);
centerPos = centers(index,:);
centerPos = fliplr(centerPos);

centerPos = round(centerPos);
end

