cpu_name=$1

export wc_out=$(lscpu | grep 'Model name:' | grep $cpu_name | wc -l)

if [ "$wc_out" -eq "0" ]; then
   exit 1;
fi
exit 0