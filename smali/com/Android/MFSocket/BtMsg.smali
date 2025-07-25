.class public Lcom/Android/MFSocket/BtMsg;
.super Ljava/lang/Object;
.source "BtMsg.java"


# instance fields
.field private final WIFI_ENABLE_TIMEOUT_2_SECS:I

.field private final WIFI_ENABLE_TOTAL:I

.field m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/Android/MFSocket/BtMsg;->WIFI_ENABLE_TIMEOUT_2_SECS:I

    .line 17
    const/4 v0, 0x6

    iput v0, p0, Lcom/Android/MFSocket/BtMsg;->WIFI_ENABLE_TOTAL:I

    .line 20
    iput-object p1, p0, Lcom/Android/MFSocket/BtMsg;->m_context:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method closeBt(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .param p1, "btAdp"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 45
    return-void
.end method

.method getBtInfo(Ljava/lang/StringBuffer;)V
    .locals 6
    .param p1, "BtMsg"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 69
    .local v0, "btAdp":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0, v0}, Lcom/Android/MFSocket/BtMsg;->openBt(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v2

    .line 81
    .local v2, "enable":Z
    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    .line 82
    .local v4, "setBtDev":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 84
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    .line 96
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v4    # "setBtDev":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_2
    if-nez v2, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/Android/MFSocket/BtMsg;->closeBt(Landroid/bluetooth/BluetoothAdapter;)V

    goto :goto_0

    .line 86
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v4    # "setBtDev":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 89
    .local v1, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 90
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 91
    invoke-static {p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 93
    .end local v1    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v4    # "setBtDev":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method getBtMac()Ljava/lang/String;
    .locals 5

    .prologue
    .line 48
    const-string v2, ""

    .line 49
    .local v2, "strMac":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 50
    .local v0, "btAdp":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    move-object v3, v2

    .line 62
    .end local v2    # "strMac":Ljava/lang/String;
    .local v3, "strMac":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 53
    .end local v3    # "strMac":Ljava/lang/String;
    .restart local v2    # "strMac":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/Android/MFSocket/BtMsg;->openBt(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v1

    .line 55
    .local v1, "enable":Z
    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 59
    :goto_1
    if-nez v1, :cond_1

    .line 60
    invoke-virtual {p0, v0}, Lcom/Android/MFSocket/BtMsg;->closeBt(Landroid/bluetooth/BluetoothAdapter;)V

    :cond_1
    move-object v3, v2

    .line 62
    .end local v2    # "strMac":Ljava/lang/String;
    .restart local v3    # "strMac":Ljava/lang/String;
    goto :goto_0

    .line 57
    .end local v3    # "strMac":Ljava/lang/String;
    .restart local v2    # "strMac":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method openBt(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 6
    .param p1, "btAdp"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 24
    const/4 v2, 0x0

    .line 25
    .local v2, "total":I
    const/4 v0, 0x1

    .line 27
    .local v0, "enable":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "state":I
    move v3, v2

    .line 28
    .end local v2    # "total":I
    .local v3, "total":I
    :goto_0
    const/16 v4, 0xa

    if-eq v1, v4, :cond_1

    move v2, v3

    .line 40
    .end local v1    # "state":I
    .end local v3    # "total":I
    .restart local v2    # "total":I
    :cond_0
    :goto_1
    return v0

    .line 29
    .end local v2    # "total":I
    .restart local v1    # "state":I
    .restart local v3    # "total":I
    :cond_1
    const/4 v0, 0x0

    .line 30
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 31
    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 32
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 33
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "total":I
    .restart local v2    # "total":I
    const/4 v4, 0x6

    if-gt v3, v4, :cond_0

    move v3, v2

    .end local v2    # "total":I
    .restart local v3    # "total":I
    goto :goto_0

    .line 38
    .end local v1    # "state":I
    .end local v3    # "total":I
    .restart local v2    # "total":I
    :catch_0
    move-exception v4

    goto :goto_1

    .end local v2    # "total":I
    .restart local v1    # "state":I
    .restart local v3    # "total":I
    :catch_1
    move-exception v4

    move v2, v3

    .end local v3    # "total":I
    .restart local v2    # "total":I
    goto :goto_1
.end method
