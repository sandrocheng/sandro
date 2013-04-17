.class public final Lbzf;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WupSessionManagerImpl"

    sput-object v0, Lbzf;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method private a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I
    .locals 1

    invoke-virtual {p1, p3}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    invoke-static {p3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getServantName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getFuncName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    iget-object v0, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->checkGuid()I

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

    iget-object v3, p0, Lbzf;->b:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/tencent/tccdb/TccCryptor;->encrypt(Landroid/content/Context;[B[B)[B

    move-result-object v0

    sget-object v3, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->HOST_URL:Ljava/lang/String;

    invoke-static {v3}, Lbtg;->a(Ljava/lang/String;)Lbtg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/tencent/tmsecure/exception/NetworkOnMainThreadException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    :try_start_1
    const-string v2, "POST"

    invoke-virtual {v3, v2}, Lbtg;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lbtg;->a([B)V

    invoke-virtual {v3}, Lbtg;->a()I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v3, v0}, Lbtg;->a(Ljava/util/concurrent/atomic/AtomicReference;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/tencent/tmsecure/exception/NetworkOnMainThreadException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lbtg;->d()V

    :cond_0
    iget-boolean v0, p0, Lbzf;->d:Z

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

    iget-object v4, p0, Lbzf;->b:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lcom/tencent/tccdb/TccCryptor;->decrypt(Landroid/content/Context;[B[B)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/qq/jce/wup/UniPacket;->decode([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/tencent/tmsecure/exception/NetworkOnMainThreadException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :cond_4
    const/4 v0, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lbtg;->d()V

    :cond_5
    iget-boolean v1, p0, Lbzf;->d:Z

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
    invoke-virtual {v1}, Lcom/tencent/tmsecure/exception/NetWorkException;->getErrCode()I

    move-result v0

    sget-object v3, Lbzf;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NetWorkException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/tmsecure/exception/NetWorkException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/exception/NetWorkException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lbtg;->d()V

    :cond_6
    iget-boolean v1, p0, Lbzf;->d:Z

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
    sget-object v2, Lbzf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "wup agrs error:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lbtg;->d()V

    :cond_7
    iget-boolean v1, p0, Lbzf;->d:Z

    if-nez v1, :cond_2

    goto :goto_0

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

    invoke-virtual {v3}, Lbtg;->d()V

    :cond_8
    iget-boolean v2, p0, Lbzf;->d:Z

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
    sget-object v2, Lbzf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "wup error:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lbtg;->d()V

    :cond_a
    iget-boolean v0, p0, Lbzf;->d:Z

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

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, LQQPIM/ChannelInfo;->setIsbuildin(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
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

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    array-length v10, v8

    move v6, v5

    :goto_1
    if-lt v6, v10, :cond_1

    invoke-virtual {v7, v9}, LQQPIM/ChannelInfo;->setChecksoft(Ljava/util/ArrayList;)V

    return-object v7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    aget-object v1, v8, v6

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v11

    if-eqz v11, :cond_3

    const-string v1, "isSystem"

    invoke-virtual {v11, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const-string v2, "versionCode"

    invoke-virtual {v11, v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    new-instance v12, LQQPIM/SoftKey;

    invoke-direct {v12}, LQQPIM/SoftKey;-><init>()V

    const-string v3, "signatureCermMD5"

    invoke-virtual {v11, v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, LQQPIM/SoftKey;->setUid(Ljava/lang/String;)V

    const-string v3, "pkgName"

    invoke-virtual {v11, v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, LQQPIM/SoftKey;->setSoftname(Ljava/lang/String;)V

    const-string v3, "appName"

    invoke-virtual {v11, v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, LQQPIM/SoftKey;->setName(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    move v1, v5

    :goto_2
    invoke-virtual {v12, v1}, LQQPIM/SoftKey;->setIsbuildin(I)V

    const-string v1, "version"

    invoke-virtual {v11, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, LQQPIM/SoftKey;->setVersion(Ljava/lang/String;)V

    if-nez v2, :cond_5

    move v1, v5

    :goto_3
    invoke-virtual {v12, v1}, LQQPIM/SoftKey;->setVersioncode(I)V

    const-string v1, ""

    invoke-virtual {v12, v1}, LQQPIM/SoftKey;->setProducttime(Ljava/lang/String;)V

    const-string v1, "signatureCermMD5"

    invoke-virtual {v11, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, LQQPIM/SoftKey;->setCert(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_1

    :cond_4
    move v1, v4

    goto :goto_2

    :cond_5
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

    iput-boolean v4, p0, Lbzf;->d:Z

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/4 v0, 0x5

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v0, "phonetype"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "channelinfo"

    iget-object v3, p0, Lbzf;->b:Landroid/content/Context;

    invoke-static {v3}, Lbzf;->a(Landroid/content/Context;)LQQPIM/ChannelInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbzf;->d:Z

    goto :goto_0
.end method

.method public final a(LQQPIM/BrowserClient;LQQPIM/BrowserUrl;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/BrowserClient;",
            "LQQPIM/BrowserUrl;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/BrowserResult;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x29

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "client"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "url"

    invoke-virtual {v2, v0, p2}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/BrowserResult;

    invoke-direct {v0}, LQQPIM/BrowserResult;-><init>()V

    const-string v2, "result"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/BrowserResult;

    if-eqz v0, :cond_2

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(LQQPIM/ChangeUrlReqInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/ChangeUrlReqInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/ChangeUrlResInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x16

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "urlreqinfo"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "urlresinfo"

    new-instance v2, LQQPIM/ChangeUrlResInfo;

    invoke-direct {v2}, LQQPIM/ChangeUrlResInfo;-><init>()V

    invoke-virtual {v3, v0, v2}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ChangeUrlResInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(LQQPIM/CmdInfoRes;)I
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0xd

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "cmdinfores"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

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

    invoke-static {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getServantName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getFuncName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const-string v3, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "deviceinfo"

    invoke-virtual {v0, v3, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v2, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

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

.method public final a(LQQPIM/DownInfo;)I
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0xe

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "downinfo"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(LQQPIM/HotWordReqInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/HotWordReqInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/HotWordResInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x13

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "hotwordreq"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/HotWordResInfo;

    invoke-direct {v0}, LQQPIM/HotWordResInfo;-><init>()V

    const-string v2, "hotwordres"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/HotWordResInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(LQQPIM/LicenceInfo;LQQPIM/LicenceCheckResult;)I
    .locals 6

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x2

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x2a

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "licinfo"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v5}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "outinfo"

    new-instance v2, LQQPIM/RetInfo;

    invoke-direct {v2}, LQQPIM/RetInfo;-><init>()V

    invoke-virtual {v3, v0, v2}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/RetInfo;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput-object v0, p2, LQQPIM/LicenceCheckResult;->value:LQQPIM/RetInfo;

    const-string v0, ""

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(LQQPIM/PKResultInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/PKResultInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/RespMark;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x31

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "resultinfo"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/RespMark;

    invoke-direct {v0}, LQQPIM/RespMark;-><init>()V

    const-string v2, "respmark"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/RespMark;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(LQQPIM/PhoneInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/PhoneInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/RespMark;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x2b

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "phoneinfo"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/RespMark;

    invoke-direct {v0}, LQQPIM/RespMark;-><init>()V

    const-string v2, "respmark"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/RespMark;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(LQQPIM/STCloudOrderReq;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/STCloudOrderReq;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STVecCloudBak;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x22

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "cloudreq"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/STVecCloudBak;

    invoke-direct {v0}, LQQPIM/STVecCloudBak;-><init>()V

    const-string v2, "cloudrsp"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STVecCloudBak;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(LQQPIM/STOrderReAct;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/STOrderReAct;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STReActBack;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x26

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "orderreq"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/STReActBack;

    invoke-direct {v0}, LQQPIM/STReActBack;-><init>()V

    const-string v2, "orderrsp"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STReActBack;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(LQQPIM/STQuery;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/STQuery;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STQueryResult;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x21

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "queryParam"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/STQueryResult;

    invoke-direct {v0}, LQQPIM/STQueryResult;-><init>()V

    const-string v2, "queryresult"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STQueryResult;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(LQQPIM/STSmsInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/STSmsInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STTrafficTemplate;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STRetInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x20

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "smsinfo"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/STTrafficTemplate;

    invoke-direct {v0}, LQQPIM/STTrafficTemplate;-><init>()V

    const-string v2, "traffictemplate"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STTrafficTemplate;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    new-instance v0, LQQPIM/STRetInfo;

    invoke-direct {v0}, LQQPIM/STRetInfo;-><init>()V

    const-string v2, "stretinfo"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STRetInfo;

    if-eqz p3, :cond_3

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final a(LQQPIM/STVecNetLocal;)I
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x24

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "vecnetlocal"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v3}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(LQQPIM/VECReportError;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/VECReportError;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STReportBack;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x23

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "reportmsg"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/STReportBack;

    invoke-direct {v0}, LQQPIM/STReportBack;-><init>()V

    const-string v2, "reportback"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STReportBack;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(LQQPIM/VirusClientInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/VirusClientInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/VirusServerInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/VirusInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/4 v0, 0x7

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "clientinfo"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/VirusServerInfo;

    invoke-direct {v0}, LQQPIM/VirusServerInfo;-><init>()V

    const-string v2, "serverinfo"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/VirusServerInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, LQQPIM/VirusInfo;

    invoke-direct {v2}, LQQPIM/VirusInfo;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "virusinfos"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;LQQPIM/stAntiTheftReport;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LQQPIM/stAntiTheftReport;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x2c

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    iget-object v5, v4, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    iput-object p1, v4, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    const-string v0, "phonetype"

    iget-object v6, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v6}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "report"

    invoke-virtual {v2, v0, p2}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-eqz v0, :cond_1

    iput-object v5, v4, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    iput-object v5, v4, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;LQQPIM/stUrgentInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LQQPIM/stUrgentInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x2e

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    iget-object v5, v4, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    iput-object p1, v4, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    const-string v0, "phonetype"

    iget-object v6, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v6}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "urgent"

    invoke-virtual {v2, v0, p2}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-eqz v0, :cond_1

    iput-object v5, v4, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    iput-object v5, v4, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/stBindPhoneInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x2d

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "qq"

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, LQQPIM/stBindPhoneInfo;

    invoke-direct {v2}, LQQPIM/stBindPhoneInfo;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "vecBindInfos"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/UrlCheckResponse;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x27

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LQQPIM/UrlCheckRequest;

    invoke-direct {v0}, LQQPIM/UrlCheckRequest;-><init>()V

    iput-object p1, v0, LQQPIM/UrlCheckRequest;->url:Ljava/lang/String;

    const-string v4, "checkrequest"

    invoke-virtual {v2, v4, v0}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/UrlCheckResponse;

    invoke-direct {v0}, LQQPIM/UrlCheckResponse;-><init>()V

    const-string v2, "checkresponse"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/UrlCheckResponse;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/SoftServerInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Category;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x8

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "request"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/SoftServerInfo;

    invoke-direct {v0}, LQQPIM/SoftServerInfo;-><init>()V

    const-string v2, "serverinfo"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftServerInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, LQQPIM/Category;

    invoke-direct {v2}, LQQPIM/Category;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "categorys"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
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
            "LQQPIM/CommentInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "usercommentinfo"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ConfInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ConfSrc;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/TipInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x18

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "machineinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getMachineInfo()LQQPIM/MachineInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecinfo"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, LQQPIM/ConfSrc;

    invoke-direct {v2}, LQQPIM/ConfSrc;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "vecsrc"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p3, :cond_3

    const-string v0, "tipinfo"

    new-instance v2, LQQPIM/TipInfo;

    invoke-direct {v2}, LQQPIM/TipInfo;-><init>()V

    invoke-virtual {v3, v0, v2}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/TipInfo;

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SmsReport;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x1c

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getSPhoneType()LQQPIM/SPhoneType;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getSUserInfo()LQQPIM/SUserInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecSmsReport"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftFeature;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/AnalyseInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0xb

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecSoftFeature"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, LQQPIM/AnalyseInfo;

    invoke-direct {v2}, LQQPIM/AnalyseInfo;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "vecAnalyseInfo"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    move v0, v1

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

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecclient"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

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

.method public final a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftKey;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/SoftServerInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/MySoftSimpleInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0xa

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecsoftkey"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/SoftServerInfo;

    invoke-direct {v0}, LQQPIM/SoftServerInfo;-><init>()V

    const-string v2, "serverinfo"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftServerInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, LQQPIM/MySoftSimpleInfo;

    invoke-direct {v2}, LQQPIM/MySoftSimpleInfo;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "softs"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "LQQPIM/SoftKey;",
            "LQQPIM/MalSoftType;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "malsofttype"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/ServerInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x10

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/ServerInfo;

    invoke-direct {v0}, LQQPIM/ServerInfo;-><init>()V

    const-string v2, "serverinfo"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ServerInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final b()I
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/4 v0, 0x6

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(LQQPIM/PhoneInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/PhoneInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/ResPKPosition;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x2f

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "phoneinfo"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/ResPKPosition;

    invoke-direct {v0}, LQQPIM/ResPKPosition;-><init>()V

    const-string v2, "respkposition"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ResPKPosition;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final b(LQQPIM/STQuery;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/STQuery;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STVecCodeResult;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x25

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "queryParam"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/STVecCodeResult;

    invoke-direct {v0}, LQQPIM/STVecCodeResult;-><init>()V

    const-string v2, "vec_Code"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STVecCodeResult;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/SoftServerInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/SoftSimpleInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x9

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "request"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/SoftServerInfo;

    invoke-direct {v0}, LQQPIM/SoftServerInfo;-><init>()V

    const-string v2, "serverinfo"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftServerInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, LQQPIM/SoftSimpleInfo;

    invoke-direct {v2}, LQQPIM/SoftSimpleInfo;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "softs"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/UnknownSoftInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/4 v0, 0x3

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecunknownsoftinfo"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ConfInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ConfSrc;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/TipInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x19

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecinfo"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, LQQPIM/ConfSrc;

    invoke-direct {v2}, LQQPIM/ConfSrc;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "vecsrc"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p3, :cond_3

    const-string v0, "tipinfo"

    new-instance v2, LQQPIM/TipInfo;

    invoke-direct {v2}, LQQPIM/TipInfo;-><init>()V

    invoke-virtual {v3, v0, v2}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/TipInfo;

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/TelReport;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x1d

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getSPhoneType()LQQPIM/SPhoneType;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getSUserInfo()LQQPIM/SUserInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecTelReport"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/RspTemplate;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v4, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v4, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x28

    invoke-direct {p0, v3, v4, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v2, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v2, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    :goto_1
    if-lt v2, v5, :cond_3

    new-instance v0, LQQPIM/RequestTemplate;

    invoke-direct {v0, v6}, LQQPIM/RequestTemplate;-><init>(Ljava/util/ArrayList;)V

    const-string v2, "reqtemp"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v3, v4, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/RspTemplate;

    invoke-direct {v0}, LQQPIM/RspTemplate;-><init>()V

    const-string v2, "rsptemp"

    invoke-virtual {v4, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/RspTemplate;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    new-instance v7, LQQPIM/UrlCheckRequest;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v1}, LQQPIM/UrlCheckRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public final c(LQQPIM/PhoneInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/PhoneInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/PKUserInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x30

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "phoneinfo"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/PKUserInfo;

    invoke-direct {v0}, LQQPIM/PKUserInfo;-><init>()V

    const-string v2, "pkuserinfo"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/PKUserInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final c(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FBIllegaSoft;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/4 v0, 0x4

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecillsoft"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftFeature;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x1e

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getSPhoneType()LQQPIM/SPhoneType;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getSUserInfo()LQQPIM/SUserInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecSoftFeature"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FBSoftDesc;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0xf

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecsoftdesc"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftAction;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x14

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecsoftaction"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ADInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x11

    invoke-direct {p0, v2, v3, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v4, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3, v1}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, LQQPIM/ADInfo;

    invoke-direct {v2}, LQQPIM/ADInfo;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "ads"

    invoke-virtual {v3, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final e(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/NotifyInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x15

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getUserInfo()LQQPIM/UserInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecnotifyinfo"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FBMobile;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x1a

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "machineinfo"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getMachineInfo()LQQPIM/MachineInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecfb"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FBWBList;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v4}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    const/16 v0, 0x1b

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "machineinfo"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getMachineInfo()LQQPIM/MachineInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecwblist"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h(Ljava/util/ArrayList;)I
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

    invoke-direct {p0, v1, v2, v0}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "suikey"

    iget-object v3, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getSUIKey()LQQPIM/SUIKey;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vecsui"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, v4}, Lbzf;->a(Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lbzf;->b:Landroid/content/Context;

    new-instance v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    invoke-direct {v0, p1}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbzf;->c:Lcom/tencent/tmsecure/module/wupsession/WupConfig;

    return-void
.end method
