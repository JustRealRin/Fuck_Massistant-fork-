.class public Lcom/Android/MFSocket/RecordPackage;
.super Ljava/lang/Object;
.source "RecordPackage.java"


# static fields
.field private static final ITEM_MARK:Ljava/lang/String; = "#/}.[*#"

.field private static final RECORD_MARK:Ljava/lang/String; = "$/}.[*$"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AppendItem(DLjava/lang/StringBuffer;)V
    .locals 1
    .param p0, "sAdd"    # D
    .param p2, "des"    # Ljava/lang/StringBuffer;

    .prologue
    .line 27
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 28
    const-string v0, "#/}.[*#"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    return-void
.end method

.method public static AppendItem(ILjava/lang/StringBuffer;)V
    .locals 1
    .param p0, "sAdd"    # I
    .param p1, "des"    # Ljava/lang/StringBuffer;

    .prologue
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 22
    const-string v0, "#/}.[*#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    return-void
.end method

.method public static AppendItem(JLjava/lang/StringBuffer;)V
    .locals 1
    .param p0, "sAdd"    # J
    .param p2, "des"    # Ljava/lang/StringBuffer;

    .prologue
    .line 15
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 16
    const-string v0, "#/}.[*#"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    return-void
.end method

.method public static AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p0, "sAdd"    # Ljava/lang/String;
    .param p1, "des"    # Ljava/lang/StringBuffer;

    .prologue
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    const-string v0, "#/}.[*#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    return-void
.end method

.method public static AppendRecord(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p0, "des"    # Ljava/lang/StringBuffer;

    .prologue
    .line 33
    const-string v0, "$/}.[*$"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    return-void
.end method
