:global distance 120

#### DO NOT TOUCH BELOW
:foreach route in=[/ip route find ospf=yes] do={
    /ip route add distance=$distance copy-from=$route
}
