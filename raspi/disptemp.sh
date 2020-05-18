vcgencmd measure_temp | tr -d "temp=" | tr -d "'C" | tr '\n' '\t'

