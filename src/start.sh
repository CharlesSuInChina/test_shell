#/usr/bin/sh
echo "###########   start record  #############" >> a.txt
while 1>0;do
    year=$(date +%Y)
    month=$(date +%m)
    day=$(date +%d)
    hour=$(date +%H)
    minute=$(date +%M)
    second=$(date +%S)
    echo $year/$month/$day/$hour:$minute:$second >> a.txt
    if [[ $hour -eq "06" || $hour -eq "18" ]];then
        echo "start execute" >> a.txt
        uiautomator runtest mtbf.jar -c com.yunos.mtbf.tests.setup.SetupInput -e runner com.yunos.test.uitest.framework.AliUiTestRunner
        echo "finish execute" >> a.txt
        sleep 60
    fi
    sleep 10
done
