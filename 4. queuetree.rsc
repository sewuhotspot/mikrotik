# nov/12/2019 13:32:34 by RouterOS 6.45.7
# software id = XVHU-K18U
#
# model = 951Ui-2HnD
# serial number = 8A73095BC40D
/queue tree
add bucket-size=0 max-limit=1G name=DOWNLOAD parent=global queue=default
add bucket-size=0 limit-at=1M max-limit=1G name=1.ICMP packet-mark=PING-down \
    parent=DOWNLOAD priority=1 queue=default
add bucket-size=0 limit-at=4M max-limit=1G name=2.GAMES parent=DOWNLOAD \
    priority=2 queue=default
add limit-at=10M max-limit=15M name=3.NORMAL parent=DOWNLOAD queue=default
add limit-at=2M max-limit=15M name=3.2.BROWSING packet-mark=browsing-down \
    parent=3.NORMAL priority=5 queue=pcq-download-default
add limit-at=1M max-limit=5M name=3.3.MIDDLE packet-mark=midle-down parent=\
    3.NORMAL priority=7 queue=pcq-download-default
add limit-at=1M max-limit=2M name=3.4.HIGH packet-mark=high-down parent=\
    3.NORMAL queue=pcq-download-default
add limit-at=1M max-limit=5M name=3.5.UNKNOWN packet-mark=unknown-down \
    parent=3.NORMAL queue=pcq-download-default
add limit-at=1M max-limit=20M name=5.GOOGLE packet-mark=ggc-telkom-down \
    parent=DOWNLOAD queue=pcq-download-default
add max-limit=1G name=UPLOAD parent=global queue=default
add limit-at=512k max-limit=1G name=1.U-ICMP packet-mark=PING-up parent=\
    UPLOAD priority=1 queue=pcq-download-default
add limit-at=1M max-limit=3M name=2.U-GAMES packet-mark=games-up parent=\
    UPLOAD priority=3 queue=pcq-upload-default
add limit-at=2M max-limit=3M name=3.U-NORMAL parent=UPLOAD queue=default
add limit-at=1M max-limit=3M name=3.1.U-BROWSING packet-mark=browsing-up \
    parent=3.U-NORMAL priority=5 queue=pcq-upload-default
add limit-at=256k max-limit=3M name=3.2.U-MIDDLE packet-mark=midle-up parent=\
    3.U-NORMAL priority=7 queue=pcq-upload-default
add limit-at=256k max-limit=2M name=3.3.U-HIGH packet-mark=high-up parent=\
    3.U-NORMAL queue=pcq-upload-default
add limit-at=256k max-limit=3M name=3.4.U-UNKNOWN packet-mark=unknown-up \
    parent=3.U-NORMAL queue=pcq-upload-default
add limit-at=256k max-limit=5M name=5.U-GOOGLE packet-mark=ggc-telkom-up \
    parent=UPLOAD queue=pcq-upload-default
add limit-at=5M max-limit=7M name="3.1. SOSMED" parent=3.NORMAL priority=5 \
    queue=default
add limit-at=1M max-limit=3M name="3.1. U-SOSMED" parent=3.U-NORMAL queue=\
    default
add bucket-size=0 limit-at=2M max-limit=1G name=2.1.ML packet-mark=ML-down \
    parent=2.GAMES priority=1 queue=pcq-download-default
add bucket-size=0 limit-at=2M max-limit=1G name=2.2.PUBG packet-mark=\
    PUBG-down parent=2.GAMES priority=1 queue=pcq-download-default
add limit-at=512k max-limit=1M name=2.1.U-ML packet-mark=ML-up parent=\
    2.U-GAMES priority=3 queue=pcq-upload-default
add limit-at=512k max-limit=3M name=2.1.U-PUBG packet-mark=PUBG-up parent=\
    2.U-GAMES priority=3 queue=pcq-upload-default
add bucket-size=0 limit-at=2M max-limit=1G name=2.3.GARENA packet-mark=\
    GARENA-down parent=2.GAMES priority=1 queue=pcq-download-default
add limit-at=512k max-limit=3M name=2.3.U-GARENA packet-mark=PUBG-up parent=\
    2.U-GAMES priority=3 queue=pcq-upload-default
add limit-at=1M max-limit=7M name=3.4.TIKTOK packet-mark=tiktok-down parent=\
    "3.1. SOSMED" priority=5 queue=pcq-download-default
add limit-at=204k max-limit=3M name=3.5.U-TWITTER packet-mark=twitter-up \
    parent="3.1. U-SOSMED" priority=5 queue=pcq-upload-default
add bucket-size=0 limit-at=2M max-limit=1G name=2.4.VAINGLORY packet-mark=\
    VAINGLORY-down parent=2.GAMES priority=1 queue=pcq-download-default
add limit-at=204k max-limit=3M name=3.4.U-Tiktok packet-mark=tiktok-up \
    parent="3.1. U-SOSMED" priority=5 queue=pcq-upload-default
add limit-at=2M max-limit=4M name=6.YOUTUBE packet-mark=Youtube-Down parent=\
    DOWNLOAD priority=3 queue=pcq-download-default
add limit-at=512k max-limit=3M name=6.U-YOUTUBE packet-mark=youtube-up \
    parent=UPLOAD
add limit-at=1M max-limit=7M name=3.5.TWITTER packet-mark=twitter-down \
    parent="3.1. SOSMED" priority=5 queue=pcq-download-default
add limit-at=1M max-limit=7M name=3.1.WA packet-mark=WA-down parent=\
    "3.1. SOSMED" priority=5 queue=pcq-download-default
add limit-at=204k max-limit=3M name=3.1.U-WA packet-mark=WA-up parent=\
    "3.1. U-SOSMED" priority=5 queue=pcq-upload-default
add limit-at=512k max-limit=3M name=3.2.U-FB packet-mark=FB-up parent=\
    "3.1. U-SOSMED" priority=5 queue=pcq-upload-default
add limit-at=1M max-limit=7M name=3.2.FB packet-mark=FB-down parent=\
    "3.1. SOSMED" priority=5 queue=pcq-download-default
add limit-at=1M max-limit=7M name=3.3.IG packet-mark=IG-down parent=\
    "3.1. SOSMED" priority=5 queue=pcq-download-default
add limit-at=204k max-limit=3M name=3.3.U-IG packet-mark=IG-up parent=\
    "3.1. U-SOSMED" priority=5 queue=pcq-upload-default
