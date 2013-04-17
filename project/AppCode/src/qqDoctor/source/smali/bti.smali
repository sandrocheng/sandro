.class public final Lbti;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://uploadserver.3g.qq.com"

    iput-object v0, p0, Lbti;->a:Ljava/lang/String;

    iput-object p1, p0, Lbti;->b:Landroid/content/Context;

    return-void
.end method

.method private a([B)LQQPIM/uploadPacketInfoResp;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lbti;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/tencent/tccdb/TccCryptor;->decrypt(Landroid/content/Context;[B[B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    const-string v2, "key_UploadPacketInfoResp"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniAttribute;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/uploadPacketInfoResp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;LQQPIM/UploadFileInfo;)I
    .locals 14

    const/4 v2, -0x2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v5, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x5000

    new-array v4, v0, [B

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual/range {p2 .. p2}, LQQPIM/UploadFileInfo;->getVecUploadFile()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p2 .. p2}, LQQPIM/UploadFileInfo;->getVecUploadFile()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v6

    move v3, v2

    move-object v2, v4

    :goto_1
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lbtg;->d()V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    :try_start_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/UploadFile;

    invoke-virtual {v0}, LQQPIM/UploadFile;->getPos()I

    move-result v4

    int-to-long v7, v4

    invoke-virtual {v0}, LQQPIM/UploadFile;->getSize()I

    move-result v9

    invoke-virtual {v5, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    array-length v0, v2

    if-eq v9, v0, :cond_10

    new-array v0, v9, [B

    move-object v4, v0

    :goto_3
    const/4 v0, 0x0

    invoke-virtual {v5, v4, v0, v9}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    if-eq v0, v9, :cond_7

    :cond_5
    :try_start_5
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lbtg;->d()V

    :cond_6
    const/16 v0, -0x80c

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_7
    :try_start_6
    invoke-virtual/range {p2 .. p2}, LQQPIM/UploadFileInfo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v2, v4

    if-nez v2, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Lbti;->a:Ljava/lang/String;

    invoke-static {v2}, Lbtg;->a(Ljava/lang/String;)Lbtg;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    move-result-object v2

    :try_start_7
    const-string v1, "POST"

    invoke-virtual {v2, v1}, Lbtg;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lbtg;->a([B)V

    invoke-virtual {v2}, Lbtg;->a()I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v2, v0}, Lbtg;->a(Ljava/util/concurrent/atomic/AtomicReference;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    move-result v1

    :try_start_8
    invoke-virtual {v2}, Lbtg;->d()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    if-eqz v1, :cond_c

    :try_start_9
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :goto_6
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lbtg;->d()V

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :cond_a
    :try_start_a
    invoke-static {v4}, Lbtk;->a([B)[B

    move-result-object v2

    array-length v10, v2

    new-instance v11, LQQPIM/uploadPacketInfoReq;

    invoke-direct {v11}, LQQPIM/uploadPacketInfoReq;-><init>()V

    invoke-virtual {v11, v0}, LQQPIM/uploadPacketInfoReq;->setSoftware_id(Ljava/lang/String;)V

    invoke-virtual {v11, v7, v8}, LQQPIM/uploadPacketInfoReq;->setPacket_pos(J)V

    invoke-virtual {v11, v9}, LQQPIM/uploadPacketInfoReq;->setPacket_size(I)V

    const-string v0, "MD5"

    invoke-virtual {v11, v0}, LQQPIM/uploadPacketInfoReq;->setChecksum_type(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, LQQPIM/uploadPacketInfoReq;->setChecksun_len(I)V

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, LQQPIM/uploadPacketInfoReq;->setZip_type(I)V

    new-instance v0, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v7, "UTF-8"

    invoke-virtual {v0, v7}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    const-string v7, "key_UploadPacketInfoReq"

    invoke-virtual {v0, v7, v11}, Lcom/qq/jce/wup/UniAttribute;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/qq/jce/wup/UniAttribute;->encode()[B

    move-result-object v7

    if-nez v7, :cond_b

    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    array-length v8, v7

    add-int/lit8 v0, v8, 0x4

    array-length v9, v4

    add-int/2addr v0, v9

    array-length v9, v2

    add-int/2addr v0, v9

    new-array v0, v0, [B

    array-length v9, v7

    invoke-static {v9}, Lbtk;->a(I)[B

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-static {v9, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v7, v9, v0, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    add-int/lit8 v9, v8, 0x4

    array-length v10, v4

    invoke-static {v4, v7, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    add-int/lit8 v8, v8, 0x4

    array-length v9, v4

    add-int/2addr v8, v9

    array-length v9, v2

    invoke-static {v2, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    goto/16 :goto_5

    :catch_2
    move-exception v0

    :goto_7
    :try_start_b
    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/NetWorkException;->printStackTrace()V

    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/NetWorkException;->getErrCode()I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v0

    :try_start_c
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :goto_8
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lbtg;->d()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :cond_c
    :try_start_d
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    if-nez v0, :cond_d

    const/16 v0, -0xfa0

    :goto_9
    if-eqz v0, :cond_11

    :try_start_e
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    :goto_a
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lbtg;->d()V

    goto/16 :goto_0

    :cond_d
    :try_start_f
    invoke-direct {p0, v0}, Lbti;->a([B)LQQPIM/uploadPacketInfoResp;

    move-result-object v0

    if-nez v0, :cond_e

    const/16 v0, -0xfa0

    goto :goto_9

    :cond_e
    invoke-virtual {v0}, LQQPIM/uploadPacketInfoResp;->getIs_succ()I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    move-result v0

    goto :goto_9

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v13, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v13

    :goto_b
    :try_start_10
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    :goto_c
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lbtg;->d()V

    goto/16 :goto_0

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catchall_0
    move-exception v0

    :goto_d
    :try_start_12
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    :goto_e
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lbtg;->d()V

    :cond_f
    throw v0

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_d

    :catch_a
    move-exception v0

    move-object v1, v0

    move v0, v3

    goto :goto_b

    :catch_b
    move-exception v0

    move-object v13, v0

    move v0, v1

    move-object v1, v13

    goto :goto_b

    :catch_c
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move v0, v3

    goto :goto_b

    :catch_d
    move-exception v0

    move-object v1, v2

    goto/16 :goto_7

    :cond_10
    move-object v4, v2

    goto/16 :goto_3

    :cond_11
    move-object v1, v2

    move v3, v0

    move-object v2, v4

    goto/16 :goto_1
.end method
