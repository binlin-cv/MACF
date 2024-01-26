
% This demo script runs the MACF tracker on the
% included SAT video "012_26".

% Add paths
setup_paths();

%  Load video information
base_path  =  './sequences';
video = '012_26';

video_path = [base_path '/' video];
seq = load_video_info(video_path);
seq.name = video;

% Run MACF
results = run_MACF(seq);