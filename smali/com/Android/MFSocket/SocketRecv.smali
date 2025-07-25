.class public Lcom/Android/MFSocket/SocketRecv;
.super Ljava/lang/Object;
.source "SocketRecv.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static mBaokongAppSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CMD_BAOKONG:Ljava/lang/String;

.field private final CMD_QUIT:Ljava/lang/String;

.field private final SERVER_PORT:I

.field public activity:Lcom/Android/MFSocket/MFSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/Android/MFSocket/SocketRecv;->mBaokongAppSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/Android/MFSocket/SocketRecv;->activity:Lcom/Android/MFSocket/MFSocket;

    .line 15
    const/16 v0, 0x2777

    iput v0, p0, Lcom/Android/MFSocket/SocketRecv;->SERVER_PORT:I

    .line 16
    const-string v0, "4500_BAOKONG_INFO"

    iput-object v0, p0, Lcom/Android/MFSocket/SocketRecv;->CMD_BAOKONG:Ljava/lang/String;

    .line 17
    const-string v0, "4500_QUIT"

    iput-object v0, p0, Lcom/Android/MFSocket/SocketRecv;->CMD_QUIT:Ljava/lang/String;

    .line 13
    return-void
.end method

.method private ParseBaokongInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "dataStr"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "packArray":[Ljava/lang/String;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 25
    return-void

    .line 22
    :cond_0
    aget-object v1, v0, v2

    .line 23
    .local v1, "pkg":Ljava/lang/String;
    sget-object v4, Lcom/Android/MFSocket/SocketRecv;->mBaokongAppSet:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static enableBaoKong()Z
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/Android/MFSocket/SocketRecv;->mBaokongAppSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBaoKongPackage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v0, Lcom/Android/MFSocket/SocketRecv;->mBaokongAppSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static receveData(Ljava/io/BufferedReader;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 8
    .param p0, "in"    # Ljava/io/BufferedReader;
    .param p1, "cmdBuffer"    # Ljava/lang/StringBuffer;
    .param p2, "data"    # Ljava/lang/StringBuffer;

    .prologue
    const/16 v6, 0x400

    .line 49
    const/16 v7, 0x400

    :try_start_0
    new-array v0, v7, [C

    .line 50
    .local v0, "buf":[C
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "lenStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 54
    .local v5, "remain":I
    :goto_0
    if-gtz v5, :cond_1

    .line 67
    .end local v0    # "buf":[C
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v4    # "lenStr":Ljava/lang/String;
    .end local v5    # "remain":I
    :cond_0
    :goto_1
    return-void

    .line 55
    .restart local v0    # "buf":[C
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v4    # "lenStr":Ljava/lang/String;
    .restart local v5    # "remain":I
    :cond_1
    if-le v5, v6, :cond_2

    move v3, v6

    .line 56
    .local v3, "len":I
    :goto_2
    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7, v3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v3

    .line 57
    if-ltz v3, :cond_0

    .line 61
    sub-int/2addr v5, v3

    .line 62
    const/4 v7, 0x0

    invoke-virtual {p2, v0, v7, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v0    # "buf":[C
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "len":I
    .end local v4    # "lenStr":Ljava/lang/String;
    .end local v5    # "remain":I
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buf":[C
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v4    # "lenStr":Ljava/lang/String;
    .restart local v5    # "remain":I
    :cond_2
    move v3, v5

    .line 55
    goto :goto_2
.end method

.method public static sendAck(Ljava/io/BufferedOutputStream;)V
    .locals 2
    .param p0, "out"    # Ljava/io/BufferedOutputStream;

    .prologue
    .line 38
    :try_start_0
    const-string v1, "OK\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 39
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v2

    .line 72
    .local v2, "channel":Ljava/nio/channels/ServerSocketChannel;
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 74
    new-instance v10, Ljava/net/InetSocketAddress;

    const-string v15, "0.0.0.0"

    const/16 v16, 0x2777

    move/from16 v0, v16

    invoke-direct {v10, v15, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 76
    .local v10, "localInetSocketAddress":Ljava/net/InetSocketAddress;
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 82
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v13

    .line 83
    .local v13, "serverSocket":Ljava/net/ServerSocket;
    const/16 v15, 0x7530

    invoke-virtual {v13, v15}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, "bStop":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    .end local v1    # "bStop":Z
    .end local v2    # "channel":Ljava/nio/channels/ServerSocketChannel;
    .end local v10    # "localInetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v13    # "serverSocket":Ljava/net/ServerSocket;
    :goto_1
    return-void

    .line 77
    .restart local v2    # "channel":Ljava/nio/channels/ServerSocketChannel;
    .restart local v10    # "localInetSocketAddress":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v9

    .local v9, "localIOException":Ljava/io/IOException;
    goto :goto_1

    .line 79
    .end local v9    # "localIOException":Ljava/io/IOException;
    :catch_1
    move-exception v11

    .local v11, "localSecurityException":Ljava/lang/SecurityException;
    goto :goto_1

    .line 87
    .end local v11    # "localSecurityException":Ljava/lang/SecurityException;
    .restart local v1    # "bStop":Z
    .restart local v13    # "serverSocket":Ljava/net/ServerSocket;
    :cond_0
    const/4 v3, 0x0

    .line 89
    .local v3, "client":Ljava/net/Socket;
    :try_start_3
    invoke-virtual {v13}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    .line 90
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 91
    .local v8, "in":Ljava/io/BufferedReader;
    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v12, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 94
    .local v12, "out":Ljava/io/BufferedOutputStream;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v5, "cmdBuffer":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v6, "dataBuffer":Ljava/lang/StringBuffer;
    invoke-static {v8, v5, v6}, Lcom/Android/MFSocket/SocketRecv;->receveData(Ljava/io/BufferedReader;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "cmd":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v14

    .line 100
    .local v14, "strData":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 117
    :try_start_4
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 122
    .end local v1    # "bStop":Z
    .end local v2    # "channel":Ljava/nio/channels/ServerSocketChannel;
    .end local v3    # "client":Ljava/net/Socket;
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v5    # "cmdBuffer":Ljava/lang/StringBuffer;
    .end local v6    # "dataBuffer":Ljava/lang/StringBuffer;
    .end local v8    # "in":Ljava/io/BufferedReader;
    .end local v10    # "localInetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v12    # "out":Ljava/io/BufferedOutputStream;
    .end local v13    # "serverSocket":Ljava/net/ServerSocket;
    .end local v14    # "strData":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 123
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 103
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "bStop":Z
    .restart local v2    # "channel":Ljava/nio/channels/ServerSocketChannel;
    .restart local v3    # "client":Ljava/net/Socket;
    .restart local v4    # "cmd":Ljava/lang/String;
    .restart local v5    # "cmdBuffer":Ljava/lang/StringBuffer;
    .restart local v6    # "dataBuffer":Ljava/lang/StringBuffer;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "localInetSocketAddress":Ljava/net/InetSocketAddress;
    .restart local v12    # "out":Ljava/io/BufferedOutputStream;
    .restart local v13    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v14    # "strData":Ljava/lang/String;
    :cond_1
    :try_start_5
    const-string v15, "4500_BAOKONG_INFO"

    invoke-virtual {v4, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_2

    .line 104
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/Android/MFSocket/SocketRecv;->ParseBaokongInfo(Ljava/lang/String;)V

    .line 111
    :goto_2
    invoke-static {v12}, Lcom/Android/MFSocket/SocketRecv;->sendAck(Ljava/io/BufferedOutputStream;)V

    .line 112
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 117
    :try_start_6
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 119
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v5    # "cmdBuffer":Ljava/lang/StringBuffer;
    .end local v6    # "dataBuffer":Ljava/lang/StringBuffer;
    .end local v8    # "in":Ljava/io/BufferedReader;
    .end local v12    # "out":Ljava/io/BufferedOutputStream;
    .end local v14    # "strData":Ljava/lang/String;
    :goto_3
    const-wide/16 v15, 0x7d0

    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 105
    .restart local v4    # "cmd":Ljava/lang/String;
    .restart local v5    # "cmdBuffer":Ljava/lang/StringBuffer;
    .restart local v6    # "dataBuffer":Ljava/lang/StringBuffer;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "out":Ljava/io/BufferedOutputStream;
    .restart local v14    # "strData":Ljava/lang/String;
    :cond_2
    :try_start_7
    const-string v15, "4500_QUIT"

    invoke-virtual {v4, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_3

    .line 106
    const/4 v1, 0x1

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    const-wide/16 v15, 0x7d0

    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 117
    :try_start_8
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 114
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v5    # "cmdBuffer":Ljava/lang/StringBuffer;
    .end local v6    # "dataBuffer":Ljava/lang/StringBuffer;
    .end local v8    # "in":Ljava/io/BufferedReader;
    .end local v12    # "out":Ljava/io/BufferedOutputStream;
    .end local v14    # "strData":Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 115
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 117
    :try_start_a
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    goto :goto_3

    .line 116
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    .line 117
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 118
    throw v15
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
.end method
