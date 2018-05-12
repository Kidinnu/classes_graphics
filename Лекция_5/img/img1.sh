
convert  globe.jpg -quality 10 globe10.jpg
convert net.pdf net.jpg
convert -density 300 net.pdf net300.jpg
convert FLY.jpg -resize 1000 FLY1000.jpg
convert FLY1000.jpg -shave 150x20 FLY1000_shaved.jpg
convert FLY1000.jpg -colorspace gray FLY1000_grayscale.jpg
# ffmpeg -i net.avi -b:v 4M -vcodec msmpeg4 -acodec wmav2 output.wmv
# ffmpeg -i net.avi -r 5 net_5_fps.avi
# ffmpeg -i net.avi -s 320x240 net_320x240.mp4
# ffmpeg -i net.avi -vf "fade=in:0:30,fade=out:-0:30" net_fade.mp4

