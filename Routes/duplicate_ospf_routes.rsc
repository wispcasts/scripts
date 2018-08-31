# Script below will copy and duplicate all routes from OSPF routing protocol with specified
# distance value

#Distance - specify new value for Distance for duplicated routes
:global distance 120

#### DO NOT TOUCH BELOW
:foreach route in=[/ip route find ospf=yes] do={
    /ip route add distance=$distance copy-from=$route
}
