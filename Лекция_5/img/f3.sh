avconv -i concat:"net.avi|net.avi" -c copy 2nets.avi


avconv -i net.avi -i net.wmv -filter_complex concat  2net_v2.avi
