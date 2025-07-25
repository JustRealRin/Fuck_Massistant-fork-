.class Lcom/Android/MFSocket/MFSocket$1;
.super Ljava/lang/Object;
.source "MFSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Android/MFSocket/MFSocket;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Android/MFSocket/MFSocket;


# direct methods
.method constructor <init>(Lcom/Android/MFSocket/MFSocket;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Android/MFSocket/MFSocket$1;->this$0:Lcom/Android/MFSocket/MFSocket;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 35
    iget-object v5, p0, Lcom/Android/MFSocket/MFSocket$1;->this$0:Lcom/Android/MFSocket/MFSocket;

    invoke-virtual {v5}, Lcom/Android/MFSocket/MFSocket;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 36
    .local v0, "FileDir":Ljava/io/File;
    invoke-static {}, Lcom/Android/MFSocket/ShellUtils;->checkRootPermission()Z

    move-result v4

    .line 37
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

    .line 40
    .local v1, "adbDownload":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/Android/MFSocket/MFSocket$1;->this$0:Lcom/Android/MFSocket/MFSocket;

    invoke-virtual {v5}, Lcom/Android/MFSocket/MFSocket;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "adbDownload"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 41
    .local v3, "is":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/Android/MFSocket/MFSocket$1;->this$0:Lcom/Android/MFSocket/MFSocket;

    invoke-static {v5, v3, v1}, Lcom/Android/MFSocket/MFSocket;->access$0(Lcom/Android/MFSocket/MFSocket;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "chmod 777 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/Android/MFSocket/ShellUtils;->execCommand(Ljava/lang/String;Z)Lcom/Android/MFSocket/ShellUtils$CommandResult;

    .line 43
    invoke-static {v1, v4}, Lcom/Android/MFSocket/ShellUtils;->execCommand(Ljava/lang/String;Z)Lcom/Android/MFSocket/ShellUtils$CommandResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
