
userid=$(id -u)

if [ $userid -ne 0 ]; then
    echo " run script with root privelege"
    exit 1
fi

dnf install mysql -y
if [ $! -ne 0 ]; then
    echo " failure"
    exit 1
else
    echo " success"
fi