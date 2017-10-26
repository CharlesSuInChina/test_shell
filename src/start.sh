#/usr/bin/sh
echo "###########   start record  #############" >> a.txt
while 1>0
do
    hour=$(date +%H)
    minite=$(date +%M)
    second=$(date +%S)
    echo $hour:$minite:$second >> a.txt
    if test $hour -eq 10;then
         if test $minite -eq 30;then
             echo "start execute" >> a.txt
             uiautomator runtest mtbf.jar -c com.yunos.mtbf.tests.setup.SetupInput -e runner com.yunos.test.uitest.framework.AliUiTestRunner
             echo "finish execute" >> a.txt
             sleep 60
         fi
    elif test $hour -eq 14;then
         if test $minite -eq 30;then
             echo "start execute" >> a.txt
             uiautomator runtest mtbf.jar -c com.yunos.mtbf.tests.setup.SetupInput -e runner com.yunos.test.uitest.framework.AliUiTestRunner
             echo "finish execute" >> a.txt
             sleep 60
         fi
    elif test $hour -eq 14;then
         if test $minite -eq 30;then
             echo "start execute" >> a.txt
             uiautomator runtest mtbf.jar -c com.yunos.mtbf.tests.setup.SetupInput -e runner com.yunos.test.uitest.framework.AliUiTestRunner
             echo "finish execute" >> a.txt
             sleep 60
         fi
    fi
    sleep 10
done
