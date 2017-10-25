#/usr/bin/sh

while 1>0
do
    hour=$(date +%H)
    minite=$(date +%M)
    second=$(date +%S)
    echo "################################"
    echo $hour
    echo $minite
    echo $second
    if test $hour -eq 10;then
         if test $minite -eq 30;then
             echo "execute"
             uiautomator runtest mtbf.jar -c com.yunos.mtbf.tests.setup.SetupInput -e runner com.yunos.test.uitest.framework.AliUiTestRunner
         fi
    elif test $hour -eq 14;then
         if test $minite -eq 30;then
             echo "execute"
             uiautomator runtest mtbf.jar -c com.yunos.mtbf.tests.setup.SetupInput -e runner com.yunos.test.uitest.framework.AliUiTestRunner
         fi
    elif test $hour -eq 14;then
         if test $minite -eq 30;then
             echo "execute"
             uiautomator runtest mtbf.jar -c com.yunos.mtbf.tests.setup.SetupInput -e runner com.yunos.test.uitest.framework.AliUiTestRunner
         fi
    fi
    sleep 60
done
