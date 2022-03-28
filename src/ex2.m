src = imread('../img/noise/d95a.bmp');

% 1 - Create images
dst1 = add_gaussian_noise(src, '../dst_img/ex2/noise/gaussian_noise/d95a01.bmp', 0.01);
dst2 = add_gaussian_noise(src, '../dst_img/ex2/noise/gaussian_noise/d95a04.bmp', 0.04);
dst3 = add_gaussian_noise(src, '../dst_img/ex2/noise/gaussian_noise/d95a08.bmp', 0.08);



% 2.1 - average filter 3x3 window
average_filter(dst1, '../dst_img/ex2/filtered_gaussian_noise/average/d95a01_3x3.bmp', 3);
average_filter(dst2, '../dst_img/ex2/filtered_gaussian_noise/average/d95a04_3x3.bmp', 3);
average_filter(dst3, '../dst_img/ex2/filtered_gaussian_noise/average/d95a08_3x3.bmp', 3);

% 2.2 - average filter 7x7 window
average_filter(dst1, '../dst_img/ex2/filtered_gaussian_noise/average/d95a01_7x7.bmp', 7);
average_filter(dst2, '../dst_img/ex2/filtered_gaussian_noise/average/d95a04_7x7.bmp', 7);
average_filter(dst3, '../dst_img/ex2/filtered_gaussian_noise/average/d95a08_7x7.bmp', 7);

% 2.3 - average filter 11x11 window
average_filter(dst1, '../dst_img/ex2/filtered_gaussian_noise/average/d95a01_11x11.bmp', 11);
average_filter(dst2, '../dst_img/ex2/filtered_gaussian_noise/average/d95a04_11x11.bmp', 11);
average_filter(dst3, '../dst_img/ex2/filtered_gaussian_noise/average/d95a08_11x11.bmp', 11);



% 3.1 - mean filter 3x3 window
mean_filter(dst1, '../dst_img/ex2/filtered_gaussian_noise/mean/d95a01_3x3.bmp', 3);
mean_filter(dst2, '../dst_img/ex2/filtered_gaussian_noise/mean/d95a04_3x3.bmp', 3);
mean_filter(dst3, '../dst_img/ex2/filtered_gaussian_noise/mean/d95a08_3x3.bmp', 3);

% 3.2 - mean filter 7x7 window
mean_filter(dst1, '../dst_img/ex2/filtered_gaussian_noise/mean/d95a01_7x7.bmp', 7);
mean_filter(dst2, '../dst_img/ex2/filtered_gaussian_noise/mean/d95a04_7x7.bmp', 7);
mean_filter(dst3, '../dst_img/ex2/filtered_gaussian_noise/mean/d95a08_7x7.bmp', 7);

% 3.3 - mean filter 11x11 window
mean_filter(dst1, '../dst_img/ex2/filtered_gaussian_noise/mean/d95a01_11x11.bmp', 11);
mean_filter(dst2, '../dst_img/ex2/filtered_gaussian_noise/mean/d95a04_11x11.bmp', 11);
mean_filter(dst3, '../dst_img/ex2/filtered_gaussian_noise/mean/d95a08_11x11.bmp', 11);


% 3.4 - gaussian filter 3x3 window
gaussian_filter(dst1, '../dst_img/ex2/filtered_gaussian_noise/gaussian/d95a01_3x3.bmp', 3);
gaussian_filter(dst2, '../dst_img/ex2/filtered_gaussian_noise/gaussian/d95a04_3x3.bmp', 3);
gaussian_filter(dst3, '../dst_img/ex2/filtered_gaussian_noise/gaussian/d95a08_3x3.bmp', 3);

% 3.5 - gaussian filter 7x7 window
gaussian_filter(dst1, '../dst_img/ex2/filtered_gaussian_noise/gaussian/d95a01_7x7.bmp', 7);
gaussian_filter(dst2, '../dst_img/ex2/filtered_gaussian_noise/gaussian/d95a04_7x7.bmp', 7);
gaussian_filter(dst3, '../dst_img/ex2/filtered_gaussian_noise/gaussian/d95a08_7x7.bmp', 7);

% 3.6 - gaussian filter 11x11 window
gaussian_filter(dst1, '../dst_img/ex2/filtered_gaussian_noise/gaussian/d95a01_11x11.bmp', 11);
gaussian_filter(dst2, '../dst_img/ex2/filtered_gaussian_noise/gaussian/d95a04_11x11.bmp', 11);
gaussian_filter(dst3, '../dst_img/ex2/filtered_gaussian_noise/gaussian/d95a08_11x11.bmp', 11);



% 4.1 Add salt & pepper noise
dst4 = add_salt_pepper_noise(src, '../dst_img/ex2/noise/salt_pepper/d95a02.bmp', 0.02);
dst5 = add_salt_pepper_noise(src, '../dst_img/ex2/noise/salt_pepper/d95a04.bmp', 0.04);
dst6 = add_salt_pepper_noise(src, '../dst_img/ex2/noise/salt_pepper/d95a06.bmp', 0.06);

% 4.2 - mean filter 3x3 window
mean_filter(dst4, '../dst_img/ex2/filtered_salt_pepper/mean/d95a02_3x3.bmp', 3);
mean_filter(dst5, '../dst_img/ex2/filtered_salt_pepper/mean/d95a04_3x3.bmp', 3);
mean_filter(dst6, '../dst_img/ex2/filtered_salt_pepper/mean/d95a06_3x3.bmp', 3);

% 4.3 - mean filter 7x7 window
mean_filter(dst4, '../dst_img/ex2/filtered_salt_pepper/mean/d95a02_7x7.bmp', 7);
mean_filter(dst5, '../dst_img/ex2/filtered_salt_pepper/mean/d95a04_7x7.bmp', 7);
mean_filter(dst6, '../dst_img/ex2/filtered_salt_pepper/mean/d95a06_7x7.bmp', 7);

% 4.4 - mean filter 11x11 window
mean_filter(dst4, '../dst_img/ex2/filtered_salt_pepper/mean/d95a02_11x11.bmp', 11);
mean_filter(dst5, '../dst_img/ex2/filtered_salt_pepper/mean/d95a04_11x11.bmp', 11);
mean_filter(dst6, '../dst_img/ex2/filtered_salt_pepper/mean/d95a06_11x11.bmp', 11);


% 4.5 - gaussian filter 3x3 window
gaussian_filter(dst4, '../dst_img/ex2/filtered_salt_pepper/gaussian/d95a02_3x3.bmp', 3);
gaussian_filter(dst5, '../dst_img/ex2/filtered_salt_pepper/gaussian/d95a04_3x3.bmp', 3);
gaussian_filter(dst6, '../dst_img/ex2/filtered_salt_pepper/gaussian/d95a06_3x3.bmp', 3);

% 4.6 - gaussian filter 7x7 window
gaussian_filter(dst4, '../dst_img/ex2/filtered_salt_pepper/gaussian/d95a02_7x7.bmp', 7);
gaussian_filter(dst5, '../dst_img/ex2/filtered_salt_pepper/gaussian/d95a04_7x7.bmp', 7);
gaussian_filter(dst6, '../dst_img/ex2/filtered_salt_pepper/gaussian/d95a06_7x7.bmp', 7);

% 4.7 - gaussian filter 11x11 window
gaussian_filter(dst4, '../dst_img/ex2/filtered_salt_pepper/gaussian/d95a02_11x11.bmp', 11);
gaussian_filter(dst5, '../dst_img/ex2/filtered_salt_pepper/gaussian/d95a04_11x11.bmp', 11);
gaussian_filter(dst6, '../dst_img/ex2/filtered_salt_pepper/gaussian/d95a06_11x11.bmp', 11);




% Noise foos
function dst = add_gaussian_noise(src, dst_path, var_gauss)
    dst = imnoise(src, 'gaussian', 0, var_gauss);
    imwrite(dst, dst_path);
    figure, imshow(dst);
    title(var_gauss)
end

function dst = add_salt_pepper_noise(src, dst_path, density)
    dst = imnoise(src, 'salt & pepper', density);
    imwrite(dst, dst_path);
    figure, imshow(dst);
    title(density)
end

% Filters
function dst = average_filter(src, dst_path, window_size)
    filter = fspecial("average", window_size);
    dst = imfilter(src, filter);
    imwrite(dst, dst_path);
    figure, imshow(dst);
    title(window_size)
end

function dst = mean_filter(src, dst_path, size)
    dst = medfilt2(src, [size, size]);
    imwrite(dst, dst_path);
    figure, imshow(dst);
    title(size)
end

function dst = gaussian_filter(src, dst_path, window_size)
    dst = imgaussfilt(src, "FilterSize", window_size);
    imwrite(dst, dst_path);
    figure, imshow(dst);
    title(window_size)
end

