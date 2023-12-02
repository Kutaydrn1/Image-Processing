% Kutay DURAN
% 190722137

batu = imread('batu.jpg'); % Uploading the image

grayImage = rgb2gray(batu); % Changing image colour level to gray

eqImage = histeq(grayImage); % Equalization histogram (Constrast enhancement)

edgeImage = edge(eqImage, 'Canny'); % Edge detection (Canny Technique)

edgeImage = uint8(edgeImage) * 255; % Transform the logical data type to uint8 data type

% GAUSS FILTER (GAUSSIAN BLUR)
sigma = 2; % Standard deviation
filterSize = 2 * ceil(2 * sigma) + 1; % Calculating the filter size
blurredImage = imgaussfilt(edgeImage, sigma, 'FilterSize', filterSize); % Giving a blur effect by applying a Gaussian filter

% DISPLAYING THE IMAGES SIDE BY SIDE
subplot(2, 3, 1); % A 2-line, 3-column sub-table will be created and the transition to the 1st region of this sub-table will be made.
imshow(batu); % Displays the original photograph
title('ORIGINAL'); % Displays the title on the photograph

subplot(2, 3, 2); % A 2-line, 3-column sub-table will be created and the transition to the 2nd region of this sub-table will be made.
imshow(eqImage); % Displays the contrast-encahced photograph
title('CONTRAST ENHANCEMENT'); % Displays the title on the photograph

subplot(2, 3, 3); % A 2-line, 3-column sub-table will be created and the transition to the 3rd region of this sub-table will be made.
imshow(edgeImage); % Displays the edge-detected photograph
title('EDGE DETECTION'); % Displays the title on the photograph

subplot(2, 3, 4); % A 2-line, 3-column sub-table will be created and the transition to the 4th region of this sub-table will be made.
imshow(blurredImage); % Displays the Blurred photograph
title('GAUSS (BLUR)'); % Displays the title on the photograph

subplot(2, 3, 5); % A 2-line, 3-column sub-table will be created and the transition to the 5th region of this sub-table will be made.
imhist(grayImage); % Draws the histogram of Gray-Level photograph
title('Histogram (Gray Level)'); % Displays the title on the histogram

subplot(2, 3, 6); % A 2-line, 3-column sub-table will be created and the transition to the 6th region of this sub-table will be made.
imhist(edgeImage); % Draws the histogram of Edge-Detected photograph
title('Histogram (Edge Detection)'); % Displays the title on the histogram