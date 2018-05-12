

# ffmpeg -r 1/5 -i p%1d.png -c:v libx264 -r 30 -y -pix_fmt yuv420p pendulum_slide.mp4 

ffmpeg -i net.avi -vf "drawtext=text='Захват сетью':fontcolor=black@0.5:fontsize=30:box=1:boxcolor=black@0.0:x=1:y=0" -b:v 4M -y net_annotated.avi
ffmpeg -i net.avi -vframes 1 -y net_wo_annotation.png
ffmpeg -i net_annotated.avi -vframes 1 -y net_with_annotation.png