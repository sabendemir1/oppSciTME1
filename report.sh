mkdir system-report
cd system-report/
touch a.info
touch b.info
touch c.info
#Excercise 1
df -h | grep sda[0-9] >> a.info 2>> a.error
cat /proc/meminfo | grep MemTotal >> a.info 2>> a.error
cat /proc/cpuinfo | grep "cpu cores" | uniq >> a.info 2>> a.error
lspci -v -s 01:0.0 >> a.info 2>> a.error
#Excersice 2
cd ~ ; ls -al >> system-report/b.info 2>> system-report/b.error
cd ~ & ls -al >> system-report/b.info 2>> system-report/b.error
cd ~ && ls -al >> system-report/b.info 2>> system-report/b.error
echo $HOME >> system-report/b.info 2>> system-report/b.error
du -hs >> system-report/b.info 2>> system-report/b.error
du -h --max-depth=1 >> system-report/b.info 2>> system-report/b.error
quota >> system-report/b.info 2>> system-report/b.error
cd system-report/ ; find *\.info| wc -l >> b.info 2>> b.error ; cd ~
#Exercise 3
ps -aux | grep ^`whoami` >> system-report/c.info 2>> system-report/c.error
ps -aux --sort=-%mem,-%cpu | head -n 11 >> system-report/c.info 2>> system-report/c.error
#Exercise 8
cd system-report/
touch d.info

ip addr >> d.info 2>> d.error
ip route get 1.1.1.1 >> d.info 2>> d.error
#Exercise 9
# crontab -e
# 0 7 * * 1 //users/Etu5/21211875/system-report.sh # chaque lundi a 7:00
