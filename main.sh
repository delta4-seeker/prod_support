

cd /home/imsoniprashant/Desktop/ibriz/production_support

function check_balance(){
    #  bash -c "source main.sh;check_balance"
 echo "checking balance of relay..."
 echo 

cd ./icon-ibc-balance-tracker
go run main.go

}

function check_ibc_status(){
    #  bash -c "source main.sh;check_ibc_status"     
    echo "checking ibc status..."
    echo
    cd ./ibc-status-scripts/mainnet 
./packet_info_mainnet.sh
}

function icon_bridge_status(){
 echo 
 echo "checking icon_bridge_status..."
 cd ./icon-bridge-status-check
 ./icon-bridge-stat.sh
}