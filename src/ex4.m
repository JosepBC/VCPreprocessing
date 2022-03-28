book = imread('../img/low_contrast/book.jpg');
landscape = imread('../img/low_contrast/landscape.png');
lena_low = imread('../img/low_contrast/lena_low.png');
libro1gray = imread('../img/low_contrast/libro1gray.jpg');
libro2gray = imread('../img/low_contrast/libro2gray.jpg');
unequal = imread('../img/low_contrast/unequal.png');

% 1 - Equalize images and save histogram
histequalization(book, 16, '../dst_img/ex4/histeq/imgs/book16.png', '../dst_img/ex4/histeq/hists/book16.png');
histequalization(book, 64, '../dst_img/ex4/histeq/imgs/book64.png', '../dst_img/ex4/histeq/hists/book64.png');
histequalization(book, 128, '../dst_img/ex4/histeq/imgs/book128.png', '../dst_img/ex4/histeq/hists/book128.png');


histequalization(landscape, 16, '../dst_img/ex4/histeq/imgs/landscape16.png', '../dst_img/ex4/histeq/hists/landscape16.png');
histequalization(landscape, 64, '../dst_img/ex4/histeq/imgs/landscape64.png', '../dst_img/ex4/histeq/hists/landscape64.png');
histequalization(landscape, 128, '../dst_img/ex4/histeq/imgs/landscape128.png', '../dst_img/ex4/histeq/hists/landscape128.png');


histequalization(lena_low, 16, '../dst_img/ex4/histeq/imgs/lena_low16.png', '../dst_img/ex4/histeq/hists/lena_low16.png');
histequalization(lena_low, 64, '../dst_img/ex4/histeq/imgs/lena_low64.png', '../dst_img/ex4/histeq/hists/lena_low64.png');
histequalization(lena_low, 128, '../dst_img/ex4/histeq/imgs/lena_low128.png', '../dst_img/ex4/histeq/hists/lena_low128.png');


histequalization(libro1gray, 16, '../dst_img/ex4/histeq/imgs/libro1gray16.png', '../dst_img/ex4/histeq/hists/libro1gray16.png');
histequalization(libro1gray, 64, '../dst_img/ex4/histeq/imgs/libro1gray64.png', '../dst_img/ex4/histeq/hists/libro1gray64.png');
histequalization(libro1gray, 128, '../dst_img/ex4/histeq/imgs/libro1gray128.png', '../dst_img/ex4/histeq/hists/libro1gray128.png');


histequalization(libro2gray, 16, '../dst_img/ex4/histeq/imgs/libro2gray16.png', '../dst_img/ex4/histeq/hists/libro2gray16.png');
histequalization(libro2gray, 64, '../dst_img/ex4/histeq/imgs/libro2gray64.png', '../dst_img/ex4/histeq/hists/libro2gray64.png');
histequalization(libro2gray, 128, '../dst_img/ex4/histeq/imgs/libro2gray128.png', '../dst_img/ex4/histeq/hists/libro2gray128.png');


histequalization(unequal, 16, '../dst_img/ex4/histeq/imgs/unequal16.png', '../dst_img/ex4/histeq/hists/unequal16.png');
histequalization(unequal, 64, '../dst_img/ex4/histeq/imgs/unequal64.png', '../dst_img/ex4/histeq/hists/unequal64.png');
histequalization(unequal, 128, '../dst_img/ex4/histeq/imgs/unequal128.png', '../dst_img/ex4/histeq/hists/unequal128.png');



% Try some images with adapthisteq
adapthistequalization(book, '../dst_img/ex4/adapthisteq/imgs/book.png', '../dst_img/ex4/adapthisteq/hists/book.png');
adapthistequalization(libro1gray, '../dst_img/ex4/adapthisteq/imgs/libro1gray.png', '../dst_img/ex4/adapthisteq/hists/libro1gray.png');
adapthistequalization(libro2gray, '../dst_img/ex4/adapthisteq/imgs/libro2gray.png', '../dst_img/ex4/adapthisteq/hists/libro2gray.png');



% Functions
function dst = adapthistequalization(src, dst_image, dst_histogram)
    if numel(size(src))>=3
        X = sprintf('Img %s is RGB', dst_image);
        disp(X);
        src = rgb2gray(src);
    end

    dst = adapthisteq(src);
    imwrite(dst, dst_image);
    save_histogram(dst, dst_histogram);
end

function dst = histequalization(src, greyscale_levels, dst_image, dst_histogram)
    if numel(size(src))>=3
        X = sprintf('Img %s is RGB', dst_image);
        disp(X);
        src = rgb2gray(src);
    end

    dst = histeq(src, greyscale_levels);
    %figure, imshow(dst);
    %title(greyscale_levels)
    imwrite(dst, dst_image);
    save_histogram(dst, dst_histogram)
end

function save_histogram(src, dst_path)
    imhist(src);
    saveas(gcf, dst_path);
end