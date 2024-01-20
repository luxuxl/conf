:: 1. 激活 Administrator 账户，必须要斜线
net user Administrator /active:yes

:: 2. 取消 Administrator 账户密码
net user Administrator ""

:: 3. 删除当前账户，用户名改为创建的用户名
::net user your_account /del

:: 以管理员身份运行