# nov/12/2019 13:10:59 by RouterOS 6.45.7
# software id = XVHU-K18U
#
# model = 951Ui-2HnD
# serial number = 8A73095BC40D
/ip firewall mangle
add action=change-ttl chain=postrouting new-ttl=set:1 out-interface=\
    bridge-sewu passthrough=yes
add action=mark-connection chain=prerouting comment=private-lokal \
    dst-address-list=private-lokal new-connection-mark=private-lokal \
    passthrough=yes src-address-list=private-lokal
add action=accept chain=prerouting comment=private-lokal connection-mark=\
    private-lokal dst-address-list=private-lokal src-address-list=\
    private-lokal
add action=mark-connection chain=prerouting comment=PING dst-address-list=\
    !private-lokal new-connection-mark=PING passthrough=yes protocol=icmp \
    src-address-list=private-lokal
add action=accept chain=prerouting comment=PING connection-mark=PING
add action=mark-connection chain=prerouting comment=dns dst-address-list=\
    !private-lokal dst-port=53,5353,123,1194 new-connection-mark=PING \
    passthrough=yes protocol=tcp src-address-list=private-lokal
add action=mark-connection chain=prerouting comment=dns dst-address-list=\
    !private-lokal dst-port=53,5353,123,1194 new-connection-mark=PING \
    passthrough=yes protocol=udp src-address-list=private-lokal
add action=mark-connection chain=prerouting comment=Mobile-Legend \
    dst-address-list=ML new-connection-mark=ML passthrough=yes \
    src-address-list=private-lokal
add action=accept chain=prerouting comment=Mobile-Legend connection-mark=ML
add action=mark-connection chain=prerouting comment=GARENA dst-address-list=\
    GARENA new-connection-mark=GARENA passthrough=yes src-address-list=\
    private-lokal
add action=accept chain=prerouting comment=GARENA connection-mark=GARENA
add action=mark-connection chain=prerouting comment=VAINGLORY \
    dst-address-list=VAINGLORY new-connection-mark=VAINGLORY passthrough=yes \
    src-address-list=private-lokal
add action=accept chain=prerouting comment=VAINGLORY connection-mark=\
    VAINGLORY
add action=mark-connection chain=prerouting comment=PUBG dst-address-list=\
    PUBG new-connection-mark=PUBG passthrough=yes src-address-list=\
    private-lokal
add action=accept chain=prerouting comment=PUBG connection-mark=PUBG
add action=mark-connection chain=prerouting comment=WA dst-address-list=WA \
    new-connection-mark=sosmed-wa passthrough=yes src-address-list=\
    private-lokal
add action=accept chain=prerouting comment=WA connection-mark=sosmed-wa
add action=mark-connection chain=prerouting comment=tiktok dst-address-list=\
    tiktok new-connection-mark=tiktok passthrough=yes src-address-list=\
    private-lokal
add action=accept chain=prerouting comment=tiktok connection-mark=tiktok
add action=mark-connection chain=prerouting comment=twitter dst-address-list=\
    twitter new-connection-mark=twitter passthrough=yes src-address-list=\
    private-lokal
add action=accept chain=prerouting comment=twitter connection-mark=twitter
add action=mark-connection chain=prerouting comment=FB dst-address-list=FB \
    new-connection-mark=sosmed-fb passthrough=yes src-address-list=\
    private-lokal
add action=accept chain=prerouting comment=FB connection-mark=sosmed-fb
add action=mark-connection chain=prerouting comment=IG dst-address-list=ig \
    new-connection-mark=sosmed-ig passthrough=yes src-address-list=\
    private-lokal
add action=accept chain=prerouting comment=IG connection-mark=sosmed-ig
add action=mark-connection chain=prerouting comment=ggc-telkom \
    dst-address-list=ggc-telkom new-connection-mark=ggc-redirector \
    passthrough=yes src-address-list=private-lokal
add action=accept chain=prerouting comment=ggc-redirector connection-mark=\
    ggc-redirector
add action=mark-connection chain=prerouting comment=Youtube dst-address-list=\
    youtube new-connection-mark=youtube passthrough=yes src-address-list=\
    private-lokal
add action=accept chain=prerouting comment=Youtube connection-mark=youtube
add action=mark-connection chain=prerouting comment=all-trafik \
    dst-address-list=!private-lokal new-connection-mark=all-trafik \
    passthrough=yes src-address-list=private-lokal
add action=accept chain=prerouting comment=all-trafik connection-mark=\
    all-trafik
add action=jump chain=forward in-interface=pppoe-indihome jump-target=\
    qos-down
add action=mark-packet chain=qos-down comment=PING-down connection-mark=PING \
    new-packet-mark=PING-down passthrough=no
add action=mark-packet chain=qos-down comment=ML-down connection-mark=ML \
    new-packet-mark=ML-down passthrough=no
add action=mark-packet chain=qos-down comment=GARENA-down connection-mark=\
    GARENA new-packet-mark=GARENA-down passthrough=no
add action=mark-packet chain=qos-down comment=VAINGLORY-down connection-mark=\
    VAINGLORY new-packet-mark=VAINGLORY-down passthrough=no
add action=mark-packet chain=qos-down comment=PUBG-down connection-mark=PUBG \
    new-packet-mark=PUBG-down passthrough=no
add action=mark-packet chain=qos-down comment=FB-down connection-mark=\
    sosmed-fb new-packet-mark=FB-down passthrough=no
add action=mark-packet chain=qos-down comment=tiktok-down connection-mark=\
    tiktok new-packet-mark=tiktok-down passthrough=no
add action=mark-packet chain=qos-down comment=twitter-down connection-mark=\
    twitter new-packet-mark=twitter-down passthrough=no
add action=mark-packet chain=qos-down comment=WA-down connection-mark=\
    sosmed-wa new-packet-mark=WA-down passthrough=no
add action=mark-packet chain=qos-down comment=IG-down connection-mark=\
    sosmed-ig new-packet-mark=IG-down passthrough=no
add action=mark-packet chain=qos-down comment=ggc-telkom-down \
    connection-mark=ggc-redirector new-packet-mark=ggc-telkom-down \
    passthrough=no
add action=mark-packet chain=qos-down comment=Youtube-down connection-mark=\
    youtube new-packet-mark=Youtube-Down passthrough=no
add action=mark-packet chain=qos-down comment=browsing-down connection-bytes=\
    0-1000000 connection-mark=all-trafik new-packet-mark=browsing-down \
    passthrough=no
add action=mark-packet chain=qos-down comment=midle-down connection-bytes=\
    1000001-3000000 connection-mark=all-trafik new-packet-mark=midle-down \
    passthrough=no
add action=mark-packet chain=qos-down comment=high-down connection-bytes=\
    3000001-1000000000 connection-mark=all-trafik new-packet-mark=high-down \
    passthrough=no
add action=mark-packet chain=qos-down comment=unknown-down connection-mark=\
    all-trafik new-packet-mark=unknown-down passthrough=no
add action=mark-packet chain=qos-down comment=unknown-down new-packet-mark=\
    unknown-down passthrough=no
add action=return chain=qos-down
add action=jump chain=forward jump-target=qos-up out-interface=pppoe-indihome
add action=mark-packet chain=qos-up comment=PING-up connection-mark=PING \
    new-packet-mark=PING-up passthrough=no
add action=mark-packet chain=qos-up comment=PUBG-up connection-mark=PUBG \
    new-packet-mark=PUBG-up passthrough=no
add action=mark-packet chain=qos-up comment=ML-up connection-mark=ML \
    new-packet-mark=ML-up passthrough=no
add action=mark-packet chain=qos-up comment=GARENA-up connection-mark=GARENA \
    new-packet-mark=GARENA-up passthrough=no
add action=mark-packet chain=qos-up comment=VAINGLORY-up connection-mark=\
    VAINGLORY new-packet-mark=VAINGLORY-up passthrough=no
add action=mark-packet chain=qos-up comment=Youtube-up connection-mark=\
    youtube new-packet-mark=youtube-up passthrough=no
add action=mark-packet chain=qos-up comment=tiktok-up connection-mark=tiktok \
    new-packet-mark=tiktok-up passthrough=no
add action=mark-packet chain=qos-up comment=twitter-up connection-mark=\
    twitter new-packet-mark=twitter-up passthrough=no
add action=mark-packet chain=qos-up comment=WA-up connection-mark=sosmed-wa \
    new-packet-mark=WA-up passthrough=no
add action=mark-packet chain=qos-up comment=FB-up connection-mark=sosmed-fb \
    new-packet-mark=FB-up passthrough=no
add action=mark-packet chain=qos-up comment=IG-up connection-mark=sosmed-ig \
    new-packet-mark=IG-up passthrough=no
add action=mark-packet chain=qos-up comment=ggc-telkom-up connection-mark=\
    ggc-redirector new-packet-mark=ggc-telkom-up passthrough=no
add action=mark-packet chain=qos-up comment=browsing-up connection-bytes=\
    0-500000 connection-mark=all-trafik new-packet-mark=browsing-up \
    passthrough=no
add action=mark-packet chain=qos-up comment=midle-up connection-bytes=\
    501000-1500000 connection-mark=all-trafik new-packet-mark=midle-up \
    passthrough=no
add action=mark-packet chain=qos-up comment=high-up connection-bytes=\
    1500001-1000000000 connection-mark=all-trafik new-packet-mark=high-up \
    passthrough=no
add action=mark-packet chain=qos-up comment=unknown-up connection-mark=\
    all-trafik new-packet-mark=unknown-up passthrough=no
add action=mark-packet chain=qos-up comment=unknown-up new-packet-mark=\
    unknown-up passthrough=no
add action=return chain=qos-up
