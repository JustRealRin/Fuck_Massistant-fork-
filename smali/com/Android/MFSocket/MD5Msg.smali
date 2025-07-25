.class public Lcom/Android/MFSocket/MD5Msg;
.super Ljava/lang/Object;
.source "MD5Msg.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x40000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "byteArr"    # [B

    .prologue
    .line 14
    const-string v0, ""

    .line 15
    .local v0, "hs":Ljava/lang/String;
    const-string v2, ""

    .line 16
    .local v2, "stmp":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 27
    return-object v0

    .line 17
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_1
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static fileMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "inputFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v4, 0x0

    .line 32
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 34
    .local v1, "digestInputStream":Ljava/security/DigestInputStream;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 35
    .local v6, "messageDigest":Ljava/security/MessageDigest;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, v5, v6}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .end local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    .local v2, "digestInputStream":Ljava/security/DigestInputStream;
    const/high16 v8, 0x40000

    :try_start_2
    new-array v0, v8, [B

    .line 39
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {v2, v0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v8

    if-gtz v8, :cond_0

    .line 41
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v6

    .line 43
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 44
    .local v7, "resultByteArray":[B
    invoke-static {v7}, Lcom/Android/MFSocket/MD5Msg;->byteArrayToHex([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .line 50
    :try_start_3
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 54
    :goto_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_1
    move-object v1, v2

    .end local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    move-object v4, v5

    .line 47
    .end local v0    # "buffer":[B
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "messageDigest":Ljava/security/MessageDigest;
    .end local v7    # "resultByteArray":[B
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_2
    return-object v8

    .line 46
    :catch_0
    move-exception v3

    .line 50
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 54
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 47
    :goto_5
    const/4 v8, 0x0

    goto :goto_2

    .line 48
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v8

    .line 50
    :goto_6
    :try_start_7
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 54
    :goto_7
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 57
    :goto_8
    throw v8

    .line 51
    .end local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v7    # "resultByteArray":[B
    :catch_1
    move-exception v9

    goto :goto_0

    .line 55
    :catch_2
    move-exception v9

    goto :goto_1

    .line 51
    .end local v0    # "buffer":[B
    .end local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "messageDigest":Ljava/security/MessageDigest;
    .end local v7    # "resultByteArray":[B
    .restart local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v8

    goto :goto_4

    .line 55
    :catch_4
    move-exception v8

    goto :goto_5

    .line 51
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v9

    goto :goto_7

    .line 55
    :catch_6
    move-exception v9

    goto :goto_8

    .line 48
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "messageDigest":Ljava/security/MessageDigest;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v1, v2

    .end local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 46
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v3

    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3
.end method
