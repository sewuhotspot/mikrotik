# nov/12/2019 13:01:22 by RouterOS 6.45.7
# software id = XVHU-K18U
#
# model = 951Ui-2HnD
# serial number = 8A73095BC40D
/ip firewall raw
add action=add-dst-to-address-list address-list=VAINGLORY \
    address-list-timeout=none-dynamic chain=prerouting comment=Vainglory \
    dst-address-list=!private-lokal dst-port=7000-8020 protocol=tcp \
    src-address-list=private-lokal
add action=add-dst-to-address-list address-list=VAINGLORY \
    address-list-timeout=none-dynamic chain=prerouting comment=Vainglory \
    content=.superevil.net dst-address-list=!private-lokal src-address-list=\
    private-lokal
add action=add-dst-to-address-list address-list=ML address-list-timeout=\
    none-dynamic chain=prerouting comment="Mobile Legends" dst-address-list=\
    !private-lokal dst-port=30000-30150 protocol=tcp src-address-list=\
    private-lokal
add action=add-dst-to-address-list address-list=ML address-list-timeout=\
    none-dynamic chain=prerouting comment="Mobile Legends" content=\
    .youngjoygame.com dst-address-list=!private-lokal src-address-list=\
    private-lokal
add action=add-dst-to-address-list address-list=PUBG address-list-timeout=\
    none-dynamic chain=prerouting comment="PUBG Mobile" dst-address-list=\
    !private-lokal dst-port=10012,17500 protocol=tcp src-address-list=\
    private-lokal
add action=add-dst-to-address-list address-list=PUBG address-list-timeout=\
    none-dynamic chain=prerouting comment="PUBG Mobile" dst-address-list=\
    !private-lokal dst-port="10491,10010,10013,10612,20002,20001,20000,12235,1\
    3748,13972,13894,11455,10096,10039" protocol=udp src-address-list=\
    private-lokal
add action=add-dst-to-address-list address-list=PUBG address-list-timeout=\
    none-dynamic chain=prerouting comment="PUBG Mobile" content=.igamecj.com \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=PUBG address-list-timeout=\
    none-dynamic chain=prerouting comment="PUBG Mobile" content=\
    tencentgames.helpshift.com dst-address-list=!private-lokal \
    src-address-list=private-lokal
add action=add-dst-to-address-list address-list=GARENA address-list-timeout=\
    none-dynamic chain=prerouting comment=Garena content=.garenanow.com \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=ig address-list-timeout=\
    none-dynamic chain=prerouting comment=ig content=.cdninstagram.com \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=ig address-list-timeout=\
    none-dynamic chain=prerouting comment=ig content=.instagram.com \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=youtube address-list-timeout=\
    none-dynamic chain=prerouting comment=youtube content=.youtube.com \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=youtube address-list-timeout=\
    none-dynamic chain=prerouting comment=youtube content=.googlevideo.com \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=WA address-list-timeout=\
    none-dynamic chain=prerouting comment=WA content=.whatsapp.net \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=WA address-list-timeout=\
    none-dynamic chain=prerouting comment=WA content=.whatsapp.com \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=sosmed address-list-timeout=\
    none-dynamic chain=prerouting comment=life360 content=.life360.com \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=FB address-list-timeout=\
    none-dynamic chain=prerouting comment=fb content=.facebook.com \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=FB address-list-timeout=\
    none-dynamic chain=prerouting comment=fb content=.facebook.net \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=FB address-list-timeout=\
    none-dynamic chain=prerouting comment=fb content=.fbcdn.net \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=twitter address-list-timeout=\
    none-dynamic chain=prerouting comment=twitter content=.twitter.com \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=twitter address-list-timeout=\
    none-dynamic chain=prerouting comment=twitter content=.twimg.com \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=tiktok address-list-timeout=\
    none-dynamic chain=prerouting comment=tiktok content=.tiktokv.com \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=games address-list-timeout=\
    none-dynamic chain=prerouting comment=Vainglory dst-address-list=\
    !private-lokal dst-port=7000-8020 protocol=tcp src-address-list=\
    private-lokal
add action=add-dst-to-address-list address-list=games address-list-timeout=\
    none-dynamic chain=prerouting comment=Vainglory content=.superevil.net \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=games address-list-timeout=\
    none-dynamic chain=prerouting comment="Mobile Legends" dst-address-list=\
    !private-lokal dst-port=30000-30150 protocol=tcp src-address-list=\
    private-lokal
add action=add-dst-to-address-list address-list=games address-list-timeout=\
    none-dynamic chain=prerouting comment="Mobile Legends" content=\
    .youngjoygame.com dst-address-list=!private-lokal src-address-list=\
    private-lokal
add action=add-dst-to-address-list address-list=games address-list-timeout=\
    none-dynamic chain=prerouting comment="PUBG Mobile" dst-address-list=\
    !private-lokal dst-port=10012,17500 protocol=tcp src-address-list=\
    private-lokal
add action=add-dst-to-address-list address-list=games address-list-timeout=\
    none-dynamic chain=prerouting comment="PUBG Mobile" dst-address-list=\
    !private-lokal dst-port="10491,10010,10013,10612,20002,20001,20000,12235,1\
    3748,13972,13894,11455,10096,10039" protocol=udp src-address-list=\
    private-lokal
add action=add-dst-to-address-list address-list=games address-list-timeout=\
    none-dynamic chain=prerouting comment="PUBG Mobile" content=.igamecj.com \
    dst-address-list=!private-lokal src-address-list=private-lokal
add action=add-dst-to-address-list address-list=games address-list-timeout=\
    none-dynamic chain=prerouting comment="PUBG Mobile" content=\
    tencentgames.helpshift.com dst-address-list=!private-lokal \
    src-address-list=private-lokal
add action=add-dst-to-address-list address-list=games address-list-timeout=\
    none-dynamic chain=prerouting comment=Garena content=.garenanow.com \
    dst-address-list=!private-lokal src-address-list=private-lokal
