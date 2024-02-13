colorRed='\033[0;31m'
colorGreen='\033[0;32m'
colorReset='\033[0m'
colorBlue='\033[0;34m'

check_all:
	@bash -c "source main.sh;icon_bridge_status" 

	@echo -e ${colorGreen}==================================================================
	@echo -e ${colorReset}
	@echo  

	@bash -c "source main.sh;check_testnet_relay_balance" 

	@echo -e ${colorGreen}==================================================================
	@echo -e ${colorReset}
	@echo  

	@bash -c "source main.sh;check_relay_balance" 

	@echo -e ${colorGreen}==================================================================
	@echo -e ${colorReset}
	@echo  

	@bash -c "source main.sh;check_deployer_balance" 

	@echo  
	@echo -e ${colorGreen}==================================================================
	@echo -e ${colorReset}

	@bash -c "source main.sh;check_ibc_status"     



check_relay_balance:
	@bash -c "source main.sh;check_relay_balance"     

check_deployer_balance:
	@bash -c "source main.sh;check_deployer_balance"     

check_ibc_status:
	@bash -c "source main.sh;check_ibc_status"     

icon_bridge_status:
	@bash -c "source main.sh;icon_bridge_status"     
