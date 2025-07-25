.class public Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartAdbDownloadReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver;->getFile(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method private getFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/lang/String;

    .prologue
    .line 41
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 43
    .local v0, "buffer":[B
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 45
    .local v3, "os":Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-gtz v2, :cond_0

    .line 48
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 49
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 50
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 54
    .end local v2    # "len":I
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 46
    .restart local v2    # "len":I
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v2    # "len":I
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.MFSocket.START_ADBDOWNLOAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver$1;

    invoke-direct {v2, p0, p1}, Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver$1;-><init>(Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 36
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 39
    :cond_0
    return-void
.end method
