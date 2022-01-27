# AWS实验方案
1. 申请一个Elastic IP，长期持有。（需要收费）
2. 使用route53把域名A记录路由到这个IP上。
3. 申请一个Elastic Block Store，我选择的是30GB的gp2，用于存储需要持久化的数据。（长期持有）
4. 每次做实验时，申请一个EC2，系统选择Ubuntu20.04，arch选择x86，使用`env-setup.sh`作为user data初始化机器。
这里我选择的是香港的t3.large，2CPU，8G内存，收费是0.1168 USD每小时，折合人民币也就7、8毛钱。做完实验后及时释放。
否则一个月的费用大概是600多人民币。