.class Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;
.super Ljava/lang/Object;
.source "ContactsMsgOS20.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Android/MFSocket/ContactsMsgOS20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneHolder"
.end annotation


# instance fields
.field customNo:Ljava/lang/String;

.field faxHome:Ljava/lang/String;

.field faxWork:Ljava/lang/String;

.field homeNo:Ljava/lang/String;

.field mobile:Ljava/lang/String;

.field otherNo:Ljava/lang/String;

.field pagerNo:Ljava/lang/String;

.field final synthetic this$0:Lcom/Android/MFSocket/ContactsMsgOS20;

.field workNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/Android/MFSocket/ContactsMsgOS20;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->this$0:Lcom/Android/MFSocket/ContactsMsgOS20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
