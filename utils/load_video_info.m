function seq = load_video_info(video_path)

ground_truth = dlmread([video_path '/groundtruth_rect.txt']);

img_path = [video_path '/img/'];
img_files = dir([img_path '*.jpg']);
img_files = sort({img_files.name});

seq.format = 'otb';
seq.len = numel(img_files);
seq.init_rect = ground_truth(1,:);

for i = 1 : seq.len
    img_files{i} = [img_path img_files{i}];
end

seq.s_frames = img_files;

end

