book = imread('../img/low_contrast/book.jpg');
landscape = imread('../img/low_contrast/landscape.png');
lena_low = imread('../img/low_contrast/lena_low.png');
libro1gray = imread('../img/low_contrast/libro1gray.jpg');
libro2gray = imread('../img/low_contrast/libro2gray.jpg');
unequal = imread('../img/low_contrast/unequal.png');

% 0 - Save base histograms
save_histogram(book, '../dst_img/ex3/base_histograms/book.png');
save_histogram(landscape, '../dst_img/ex3/base_histograms/landscape.png');
save_histogram(lena_low, '../dst_img/ex3/base_histograms/lena_low.png');
save_histogram(libro1gray, '../dst_img/ex3/base_histograms/libro1gray.png');
save_histogram(libro2gray, '../dst_img/ex3/base_histograms/libro2gray.png');
save_histogram(unequal, '../dst_img/ex3/base_histograms/unequal.png');

% 1 - Normalize with formula ((pi − min) / (max − min)) * 255
normalize(book, '../dst_img/ex3/normalized/imgs/book.png', '../dst_img/ex3/normalized/hist/book.png');
normalize(landscape, '../dst_img/ex3/normalized/imgs/landscape.png', '../dst_img/ex3/normalized/hist/landscape.png');
normalize(lena_low, '../dst_img/ex3/normalized/imgs/lena_low.png', '../dst_img/ex3/normalized/hist/lena_low.png');
normalize(libro1gray, '../dst_img/ex3/normalized/imgs/libro1gray.png', '../dst_img/ex3/normalized/hist/libro1gray.png');
normalize(libro2gray, '../dst_img/ex3/normalized/imgs/libro2gray.png', '../dst_img/ex3/normalized/hist/libro2gray.png');
normalize(unequal, '../dst_img/ex3/normalized/imgs/unequal.png', '../dst_img/ex3/normalized/hist/unequal.png');

% 2 - Normalize with imcontrast
norm_imcontrast(book);
norm_imcontrast(landscape);
norm_imcontrast(lena_low);
norm_imcontrast(libro1gray);
norm_imcontrast(libro2gray);
norm_imcontrast(unequal);

% 3 - Normalize with imadjust + stretchlim
lena_low_imadjust = imadjust(lena_low, stretchlim(lena_low));
imwrite(lena_low_imadjust, '../dst_img/ex3/lena_low_imadjust.png');

% Functions
function norm_imcontrast(src)
    if numel(size(src))>=3
        X = sprintf('Img is RGB');
        disp(X);
        src = rgb2gray(src);
    end
    figure, imshow(src);
    imcontrast
end

function norm = normalize(src, dst_image, dst_histogram)
    if numel(size(src))>=3
        X = sprintf('Img %s is RGB', dst_image);
        disp(X);
        src = rgb2gray(src);
    end

    src = im2double(src);

    min_src = min(src(:));
    max_src = max(src(:));

    norm = (src - min_src) / (max_src - min_src);
    norm = norm * 255;
    norm = uint8(norm);

    %figure, imshow(norm);
    imwrite(norm, dst_image);
    %save_histogram(norm, dst_histogram);
end

function save_histogram(src, dst_path)
    imhist(src);
    saveas(gcf, dst_path);
end