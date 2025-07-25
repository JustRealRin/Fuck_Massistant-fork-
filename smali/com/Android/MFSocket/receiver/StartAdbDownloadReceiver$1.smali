.class Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver$1;
.super Ljava/lang/Object;
.source "StartAdbDownloadReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver$1;->this$0:Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver;

    iput-object p2, p0, Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver$1;->val$context:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 23
    iget-object v5, p0, Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 24
    .local v0, "FileDir":Ljava/io/File;
    invoke-static {}, Lcom/Android/MFSocket/ShellUtils;->checkRootPermission()Z

    move-result v4

    .line 25
    .local v4, "isRooted":Z
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/adbDownload"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "adbDownload":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "adbDownload"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 29
    .local v3, "is":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver$1;->this$0:Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver;

    invoke-static {v5, v3, v1}, Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver;->access$0(Lcom/Android/MFSocket/receiver/StartAdbDownloadReceiver;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "chmod 777 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/Android/MFSocket/ShellUtils;->execCommand(Ljava/lang/String;Z)Lcom/Android/MFSocket/ShellUtils$CommandResult;

    .line 31
    invoke-static {v1, v4}, Lcom/Android/MFSocket/ShellUtils;->execCommand(Ljava/lang/String;Z)Lcom/Android/MFSocket/ShellUtils$CommandResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v2

    .line 33
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
