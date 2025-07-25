.class public Lcom/Android/MFSocket/AppMsg$PkgSizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "AppMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Android/MFSocket/AppMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PkgSizeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Android/MFSocket/AppMsg;


# direct methods
.method public constructor <init>(Lcom/Android/MFSocket/AppMsg;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/Android/MFSocket/AppMsg$PkgSizeObserver;->this$0:Lcom/Android/MFSocket/AppMsg;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 5
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/Android/MFSocket/AppMsg$PkgSizeObserver;->this$0:Lcom/Android/MFSocket/AppMsg;

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-static {v0, v1, v2}, Lcom/Android/MFSocket/AppMsg;->access$0(Lcom/Android/MFSocket/AppMsg;J)V

    .line 195
    iget-object v0, p0, Lcom/Android/MFSocket/AppMsg$PkgSizeObserver;->this$0:Lcom/Android/MFSocket/AppMsg;

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-static {v0, v1, v2}, Lcom/Android/MFSocket/AppMsg;->access$1(Lcom/Android/MFSocket/AppMsg;J)V

    .line 196
    iget-object v0, p0, Lcom/Android/MFSocket/AppMsg$PkgSizeObserver;->this$0:Lcom/Android/MFSocket/AppMsg;

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-static {v0, v1, v2}, Lcom/Android/MFSocket/AppMsg;->access$2(Lcom/Android/MFSocket/AppMsg;J)V

    .line 197
    iget-object v0, p0, Lcom/Android/MFSocket/AppMsg$PkgSizeObserver;->this$0:Lcom/Android/MFSocket/AppMsg;

    iget-object v1, p0, Lcom/Android/MFSocket/AppMsg$PkgSizeObserver;->this$0:Lcom/Android/MFSocket/AppMsg;

    invoke-static {v1}, Lcom/Android/MFSocket/AppMsg;->access$3(Lcom/Android/MFSocket/AppMsg;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/Android/MFSocket/AppMsg$PkgSizeObserver;->this$0:Lcom/Android/MFSocket/AppMsg;

    invoke-static {v3}, Lcom/Android/MFSocket/AppMsg;->access$4(Lcom/Android/MFSocket/AppMsg;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/Android/MFSocket/AppMsg$PkgSizeObserver;->this$0:Lcom/Android/MFSocket/AppMsg;

    invoke-static {v3}, Lcom/Android/MFSocket/AppMsg;->access$5(Lcom/Android/MFSocket/AppMsg;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/Android/MFSocket/AppMsg;->access$6(Lcom/Android/MFSocket/AppMsg;J)V

    .line 198
    iget-object v0, p0, Lcom/Android/MFSocket/AppMsg$PkgSizeObserver;->this$0:Lcom/Android/MFSocket/AppMsg;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/Android/MFSocket/AppMsg;->access$7(Lcom/Android/MFSocket/AppMsg;Z)V

    .line 199
    return-void
.end method
