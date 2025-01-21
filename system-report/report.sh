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
cd ~ ; ls -al >> /users/Etu3/21210463/system-report/b.info 2>> /users/Etu3/21210463/system-report/b.error
cd ~ & ls -al >> /users/Etu3/21210463/system-report/b.info 2>> /users/Etu3/21210463/system-report/b.error
cd ~ && ls -al >> /users/Etu3/21210463/system-report/b.info 2>> /users/Etu3/21210463/system-report/b.error
echo $HOME >> /users/Etu3/21210463/system-report/b.info 2>> /users/Etu3/21210463/system-report/b.error
du -hs >> /users/Etu3/21210463/system-report/b.info 2>> /users/Etu3/21210463/system-report/b.error
du -h --max-depth=1 >> /users/Etu3/21210463/system-report/b.info 2>> /users/Etu3/21210463/system-report/b.error
quota >> /users/Etu3/21210463/system-report/b.info 2>> /users/Etu3/21210463/system-report/b.error
cd system-report/ ; find *\.info| wc -l >> b.info 2>> b.error ; cd ~
#Exercise 3
ps -aux | grep ^`whoami` >> /users/Etu3/21210463/system-report/c.info 2>> /users/Etu3/21210463/system-report/c.error
ps -aux --sort=-%mem,-%cpu | head -n 11 >> /users/Etu3/21210463/system-report/c.info 2>> /users/Etu3/21210463/system-report/c.error
#Exercise 8
touch d.info
cd system-report/
ip addr >> /users/Etu3/21210463/system-report/d.info 2>> /users/Etu3/21210463/system-report/d.error
ip route get 1.1.1.1 >> /users/Etu3/21210463/system-report/d.info 2>> /users/Etu3/21210463/system-report/d.error
#Exercise 9
# crontab -e
# 0 7 * * 1 //users/Etu5/21211875/system-report.sh
