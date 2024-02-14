

cd /home/imsoniprashant/Desktop/ibriz/production_support

function check_relay_balance(){
    #  bash -c "source main.sh;check_balance"
    echo "checking balance of btp mainnet relays..."
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
    echo "checking balance of btp mainnet deployers..."
    echo
    
    cd ./icon-ibc-balance-tracker
    go run main_deployer.go
    
}

function check_ibc_status_mainnet(){
    #  bash -c "source main.sh;check_ibc_status"
    echo "checking ibc status on mainnets..."
    echo
    cd ./ibc-status-scripts/mainnet
    ./packet_info_mainnet.sh
}

function check_ibc_status_testnet(){
    #  bash -c "source main.sh;check_ibc_status"
    echo "checking ibc status on testnet ..."
    echo
    cd ./ibc-status-scripts/lisbon
    ./packet_info.sh
}

function send_ibc_status_lisbon(){
    #  bash -c "source main.sh;check_ibc_status"
    echo
    cd ./ibc-status-scripts/lisbon
    echo "Sending from archway to icon"
    echo
    ./archway_packet.sh
    echo "From icon : "
    echo 
    ./icon_packet.sh --archway
    echo 
    ./icon_packet.sh --neutron
    echo
    ./icon_packet.sh --injective
}

function icon_bridge_status(){
    echo
    # echo "checking icon_bridge_status..."
    cd ./icon-bridge-status-check
    ./icon-bridge-stat.sh
}