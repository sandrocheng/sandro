.class final Lgh;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lge;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WupSessionManagerImpl"

    sput-object v0, Lgh;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method private a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I
    .locals 1

    invoke-virtual {p1, p3}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    invoke-static {p3}, Lge;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    invoke-static {p3}, Lge;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    iget-object v0, p0, Lgh;->c:Lge;

    invoke-virtual {v0}, Lge;->d()I

    move-result v0

    return v0
.end method

.method private a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I
    .locals 7

    const/16 v1, -0x1770

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v0

    iget-object v3, p0, Lgh;->b:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/tencent/tccdb/TccCryptor;->encrypt(Landroid/content/Context;[B[B)[B

    move-result-object v0

    sget-object v3, Lge;->a:Ljava/lang/String;

    invoke-static {v3}, Lev;->a(Ljava/lang/String;)Lev;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Leq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ler; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    :try_start_1
    const-string v2, "POST"

    invoke-virtual {v3, v2}, Lev;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lev;->a([B)V

    invoke-virtual {v3}, Lev;->a()I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v3, v0}, Lev;->a(Ljava/util/concurrent/atomic/AtomicReference;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Leq; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ler; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lev;->d()V

    :cond_0
    iget-boolean v0, p0, Lgh;->d:Z

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->reportChannelInfo()V

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez p3, :cond_4

    if-eqz v0, :cond_4

    array-length v4, v0

    if-lez v4, :cond_4

    iget-object v4, p0, Lgh;->b:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lcom/tencent/tccdb/TccCryptor;->decrypt(Landroid/content/Context;[B[B)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/qq/jce/wup/UniPacket;->decode([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Leq; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ler; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :cond_4
    const/4 v0, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lev;->d()V

    :cond_5
    iget-boolean v1, p0, Lgh;->d:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->reportChannelInfo()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Leq;->a()I

    move-result v0

    sget-object v3, Lgh;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NetWorkException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Leq;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgk;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Leq;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lev;->d()V

    :cond_6
    iget-boolean v1, p0, Lgh;->d:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->reportChannelInfo()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    :goto_2
    const/16 v0, -0x17a9

    :try_start_4
    sget-object v2, Lgh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "wup agrs error:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgk;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lev;->d()V

    :cond_7
    iget-boolean v1, p0, Lgh;->d:Z

    if-nez v1, :cond_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v3, v2

    :goto_3
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lev;->d()V

    :cond_8
    iget-boolean v2, p0, Lgh;->d:Z

    if-nez v2, :cond_9

    if-nez v1, :cond_9

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->reportChannelInfo()V

    :cond_9
    throw v0

    :catch_3
    move-exception v0

    move-object v3, v2

    :goto_5
    :try_start_6
    sget-object v2, Lgh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "wup error:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgk;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lev;->d()V

    :cond_a
    iget-boolean v0, p0, Lgh;->d:Z

    if-nez v0, :cond_b

    move v0, v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move v1, v2

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v3, v2

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_4

    :catchall_4
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    move v1, v2

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :catch_8
    move-exception v0

    move-object v2, v3

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    goto/16 :goto_1

    :catch_9
    move-exception v0

    move-object v1, v0

    move v0, v2

    move-object v2, v3

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;)LQQPIM/ChannelInfo;
    .locals 13

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v7, LQQPIM/ChannelInfo;

    invoke-direct {v7}, LQQPIM/ChannelInfo;-><init>()V

    const-string v0, "channel"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v7, v0}, LQQPIM/ChannelInfo;->setId(Ljava/lang/String;)V

    const-string v0, "product"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, LQQPIM/ChannelInfo;->setProduct(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v7, v5}, LQQPIM/ChannelInfo;->setIsbuildin(I)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, LQQPIM/ChannelInfo;->setIsbuildin(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    const/4 v0, 0x7

    new-array v8, v0, [Ljava/lang/String;

    const-string v0, "com.tencent.qqpimsecure"

    aput-object v0, v8, v5

    const-string v0, "com.tencent.qq"

    aput-object v0, v8, v4

    const/4 v0, 0x2

    const-string v1, "com.qzone"

    aput-object v1, v8, v0

    const/4 v0, 0x3

    const-string v1, "com.tencent.qqphonebook"

    aput-object v1, v8, v0

    const/4 v0, 0x4

    const-string v1, "com.tencent.mtt"

    aput-object v1, v8, v0

    const/4 v0, 0x5

    const-string v1, "com.tencent.WBlog"

    aput-object v1, v8, v0

    const/4 v0, 0x6

    const-string v1, "com.tencent.qqgame.hallinstaller.hall"

    aput-object v1, v8, v0

    const-class v0, Lfs;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lfs;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    array-length v10, v8

    move v6, v5

    :goto_1
    if-lt v6, v10, :cond_2

    invoke-virtual {v7, v9}, LQQPIM/ChannelInfo;->setChecksoft(Ljava/util/ArrayList;)V

    return-object v7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    aget-object v1, v8, v6

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Lfs;->a(Ljava/lang/String;I)Lfq;

    move-result-object v11

    if-eqz v11, :cond_9

    const-string v1, "isSystem"

    invoke-virtual {v11, v1}, Lfq;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const-string v2, "versionCode"

    invoke-virtual {v11, v2}, Lfq;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    new-instance v12, LQQPIM/SoftKey;

    invoke-direct {v12}, LQQPIM/SoftKey;-><init>()V

    const-string v3, "signatureCermMD5"

    invoke-virtual {v11, v3}, Lfq;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    invoke-virtual {v12, v3}, LQQPIM/SoftKey;->setUid(Ljava/lang/String;)V

    const-string v3, "pkgName"

    invoke-virtual {v11, v3}, Lfq;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v3, ""

    :cond_4
    invoke-virtual {v12, v3}, LQQPIM/SoftKey;->setSoftname(Ljava/lang/String;)V

    const-string v3, "appName"

    invoke-virtual {v11, v3}, Lfq;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_5

    const-string v3, ""

    :cond_5
    invoke-virtual {v12, v3}, LQQPIM/SoftKey;->setName(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_6
    move v1, v5

    :goto_2
    invoke-virtual {v12, v1}, LQQPIM/SoftKey;->setIsbuildin(I)V

    const-string v1, "version"

    invoke-virtual {v11, v1}, Lfq;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, ""

    :cond_7
    invoke-virtual {v12, v1}, LQQPIM/SoftKey;->setVersion(Ljava/lang/String;)V

    if-nez v2, :cond_b

    move v1, v5

    :goto_3
    invoke-virtual {v12, v1}, LQQPIM/SoftKey;->setVersioncode(I)V

    const-string v1, ""

    invoke-virtual {v12, v1}, LQQPIM/SoftKey;->setProducttime(Ljava/lang/String;)V

    const-string v1, "signatureCermMD5"

    invoke-virtual {v11, v1}, Lfq;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, ""

    :cond_8
    invoke-virtual {v12, v1}, LQQPIM/SoftKey;->setCert(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_1

    :cond_a
    move v1, v4

    goto :goto_2

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 5

    const/4 v4, 0x1

    iput-boolean v4, p0, Lgh;->d:Z

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/4 v0, 0x5

    invoke-direct {p0, v1, v2, v0}, Lgh;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v0, "phonetype"

    iget-object v3, p0, Lgh;->c:Lge;

    invoke-virtual {v3}, Lge;->a()LQQPIM/PhoneType;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v3, p0, Lgh;->c:Lge;

    invoke-virtual {v3}, Lge;->b()LQQPIM/UserInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "channelinfo"

    iget-object v3, p0, Lgh;->b:Landroid/content/Context;

    invoke-static {v3}, Lgh;->a(Landroid/content/Context;)LQQPIM/ChannelInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lgh;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lgh;->d:Z

    goto :goto_0
.end method

.method public final a(LQQPIM/DeviceInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/DeviceInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/GUIDInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x12

    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    invoke-virtual {v0, v4}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    invoke-static {v4}, Lge;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    invoke-static {v4}, Lge;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const-string v3, "phonetype"

    iget-object v4, p0, Lgh;->c:Lge;

    invoke-virtual {v4}, Lge;->a()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "userinfo"

    iget-object v4, p0, Lgh;->c:Lge;

    invoke-virtual {v4}, Lge;->b()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "deviceinfo"

    invoke-virtual {v0, v3, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v2, v1}, Lgh;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v0, LQQPIM/GUIDInfo;

    invoke-direct {v0}, LQQPIM/GUIDInfo;-><init>()V

    const-string v3, "guidinfo"

    invoke-virtual {v2, v3, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/GUIDInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/SUI;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x1f

    invoke-direct {p0, v1, v2, v0}, Lgh;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "suikey"

    iget-object v3, p0, Lgh;->c:Lge;

    invoke-virtual {v3}, Lge;->c()LQQPIM/SUIKey;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecsui"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lgh;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/ClientVersionInfo;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/ServerCmdInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0xc

    invoke-direct {p0, v2, v3, v0}, Lgh;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lgh;->c:Lge;

    invoke-virtual {v4}, Lge;->a()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lgh;->c:Lge;

    invoke-virtual {v4}, Lge;->b()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecclient"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lgh;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/ServerCmdInfo;

    invoke-direct {v0}, LQQPIM/ServerCmdInfo;-><init>()V

    const-string v2, "cmdinfo"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ServerCmdInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lgh;->b:Landroid/content/Context;

    new-instance v0, Lge;

    invoke-direct {v0, p1}, Lge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgh;->c:Lge;

    return-void
.end method
