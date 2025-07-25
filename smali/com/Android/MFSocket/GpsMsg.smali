.class public Lcom/Android/MFSocket/GpsMsg;
.super Ljava/lang/Object;
.source "GpsMsg.java"


# instance fields
.field m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/Android/MFSocket/GpsMsg;->m_context:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method getGpsInfo(Ljava/lang/StringBuffer;)V
    .locals 10
    .param p1, "GpsMsg"    # Ljava/lang/StringBuffer;

    .prologue
    .line 16
    const/4 v2, 0x0

    .line 17
    .local v2, "loc":Landroid/location/Location;
    iget-object v8, p0, Lcom/Android/MFSocket/GpsMsg;->m_context:Landroid/content/Context;

    const-string v9, "location"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 18
    .local v3, "locMan":Landroid/location/LocationManager;
    if-nez v3, :cond_1

    .line 37
    :cond_0
    return-void

    .line 22
    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v6

    .line 23
    .local v6, "proList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 24
    .local v7, "providerName":Ljava/lang/String;
    invoke-virtual {v3, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 25
    if-eqz v2, :cond_2

    .line 28
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 29
    .local v0, "lat":D
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 32
    .local v4, "lon":D
    invoke-static {v7, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 33
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 34
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 35
    invoke-static {p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    goto :goto_0
.end method
