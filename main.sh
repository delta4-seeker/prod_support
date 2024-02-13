

cd /home/imsoniprashant/Desktop/ibriz/production_support

function check_relay_balance(){
    #  bash -c "source main.sh;check_balance"
    echo "checking balance of btp relays..."
    echo
    
    cd ./icon-ibc-balance-tracker
    go run main_relay.go
}
function check_testnet_relay_balance(){
    #  bash -c "source main.sh;check_balance"
    echo "checking balance of ibc testnet relays..."
    echo
    
    cd ./icon-ibc-balance-tracker
    go run main_testnet_relay.go
}
function check_deployer_balance(){
    #  bash -c "source main.sh;check_balance"
    echo "checking balance of btp deployers..."
    echo
    
    cd ./icon-ibc-balance-tracker
    go run main_deployer.go
    
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
    # echo "checking icon_bridge_status..."
    cd ./icon-bridge-status-check
    ./icon-bridge-stat.sh
}