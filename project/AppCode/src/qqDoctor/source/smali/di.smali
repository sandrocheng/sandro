.class public Ldi;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static c:Lnp;

.field public static d:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

.field public static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldi;->a(Ljava/lang/String;)Z

    invoke-static {p1}, Ldi;->b(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 2

    invoke-static {p0}, Ldi;->b(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p1

    :cond_0
    :goto_0
    return p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    array-length v0, p2

    new-array v2, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    array-length v3, p2

    :goto_0
    if-lt v0, v3, :cond_0

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v0

    aget-object v4, v2, v0

    const-class v5, Ljava/lang/Integer;

    if-ne v4, v5, :cond_2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-object v4, v2, v0

    const-class v5, Ljava/lang/Boolean;

    if-ne v4, v5, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Ldi;->a(Ljava/lang/String;)Z

    invoke-static {p1}, Ldi;->b(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a()Z
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v1

    invoke-virtual {v1}, Lcw;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v6, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;

    invoke-direct {v6}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;-><init>()V

    const-string v7, "StatisticsUtil"

    const-string v8, "collectRemoteSyncCheck(), getRomteInfo"

    invoke-static {v7, v8}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Ldi;->a(Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;)Z

    move-result v7

    const-string v8, "StatisticsUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "collectRemoteSyncCheck(), getRomteInfo="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_0

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getRemoteSyncCheck(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v7

    invoke-virtual {v6, v5}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getRemoteContactDelTotal(Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v8

    const-string v9, "StatisticsUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "collectRemoteSyncCheck(), getRemoteSyncCheck="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " resGetDelContact="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "StatisticsUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "collectRemoteSyncCheck(), remoteContactDelTotal="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v11, Ldi;->i:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "StatisticsUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "collectRemoteSyncCheck(), remoteContactTotal="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v11, Ldi;->a:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " remoteSmsTotal="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Ldi;->f:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " remoteBookmarkTotal="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Ldi;->h:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " remoteCalllogTotal="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Ldi;->g:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->release()V

    if-nez v8, :cond_2

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    sput v5, Ldi;->i:I

    :cond_2
    if-nez v7, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sput v1, Ldi;->a:I

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sput v1, Ldi;->f:I

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sput v1, Ldi;->h:I

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sput v1, Ldi;->g:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "StatisticsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "collectRemoteSyncCheck(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static a(Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-static {}, Lde;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v4, "mounted"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    :goto_1
    if-eqz v0, :cond_4

    move v0, v7

    :goto_2
    invoke-static {v0}, Lde;->a(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lde;->a()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->makeCheckWapDataPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getPostUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getPostBody()[B

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcj;->a()Lcj;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcj;->a(Ljava/lang/String;)Ldd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_5

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ldd;->d()V

    invoke-static {}, Lcj;->a()Lcj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcj;->a(Ldd;)V

    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_1

    :cond_4
    move v0, v8

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Ldd;->a(I)V

    invoke-virtual {v1, v2}, Ldd;->b([B)V

    invoke-virtual {v1}, Ldd;->a()I

    move-result v0

    invoke-virtual {v1}, Ldd;->b()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    const/16 v3, 0xc8

    if-ne v3, v0, :cond_2

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ldd;->d()V

    invoke-static {}, Lcj;->a()Lcj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcj;->a(Ldd;)V

    :cond_6
    if-eqz v2, :cond_0

    array-length v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->solveLoginResponsePackage([BI)I

    move-result v0

    if-nez v0, :cond_0

    move v8, v7

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "StatisticsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getRomteInfo(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ldd;->d()V

    invoke-static {}, Lcj;->a()Lcj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcj;->a(Ldd;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ldd;->d()V

    invoke-static {}, Lcj;->a()Lcj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcj;->a(Ldd;)V

    :cond_7
    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sput-object v0, Ldi;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Ldi;->e:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_2
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static b()Lnp;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Ldi;->c:Lnp;

    if-nez v0, :cond_0

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v0

    invoke-virtual {v0}, Lqx;->h()I

    move-result v0

    sget v1, Lqx$a;->a:I

    if-ne v0, v1, :cond_1

    new-instance v0, Lnp;

    invoke-direct {v0, v2}, Lnp;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    :cond_0
    :goto_0
    sget-object v0, Ldi;->c:Lnp;

    return-object v0

    :cond_1
    sget v1, Lqx$a;->b:I

    if-ne v0, v1, :cond_2

    new-instance v0, Lnn;

    invoke-direct {v0, v2}, Lnn;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    goto :goto_0

    :cond_2
    sget v1, Lqx$a;->e:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lnq;

    invoke-direct {v0, v2}, Lnq;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    goto :goto_0

    :cond_3
    sget v1, Lqx$a;->d:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lnt;

    invoke-direct {v0, v2}, Lnt;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    goto :goto_0

    :cond_4
    sget v1, Lqx$a;->c:I

    if-ne v0, v1, :cond_5

    new-instance v0, Lnx;

    invoke-direct {v0, v2}, Lnx;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    goto :goto_0

    :cond_5
    sget v1, Lqx$a;->f:I

    if-ne v0, v1, :cond_6

    new-instance v0, Lno;

    invoke-direct {v0, v2}, Lno;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    goto :goto_0

    :cond_6
    sget v1, Lqx$a;->g:I

    if-ne v0, v1, :cond_7

    new-instance v0, Loa;

    invoke-direct {v0, v2}, Loa;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    goto :goto_0

    :cond_7
    sget v1, Lqx$a;->i:I

    if-ne v0, v1, :cond_8

    new-instance v0, Lnw;

    invoke-direct {v0, v2}, Lnw;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    goto :goto_0

    :cond_8
    sget v1, Lqx$a;->j:I

    if-ne v0, v1, :cond_9

    new-instance v0, Lnz;

    invoke-direct {v0, v2}, Lnz;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    goto :goto_0

    :cond_9
    sget v1, Lqx$a;->h:I

    if-ne v0, v1, :cond_a

    new-instance v0, Lnv;

    invoke-direct {v0, v2}, Lnv;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    goto :goto_0

    :cond_a
    sget v1, Lqx$a;->k:I

    if-ne v0, v1, :cond_b

    new-instance v0, Lnu;

    invoke-direct {v0, v2}, Lnu;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    goto :goto_0

    :cond_b
    sget v1, Lqx$a;->l:I

    if-ne v0, v1, :cond_c

    new-instance v0, Lns;

    invoke-direct {v0, v2}, Lns;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    goto/16 :goto_0

    :cond_c
    sget v1, Lqx$a;->m:I

    if-ne v0, v1, :cond_d

    new-instance v0, Lnh;

    invoke-direct {v0, v2}, Lnh;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    goto/16 :goto_0

    :cond_d
    sget v1, Lqx$a;->p:I

    if-ne v0, v1, :cond_e

    new-instance v0, Lnr;

    invoke-direct {v0, v2}, Lnr;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    goto/16 :goto_0

    :cond_e
    sget v1, Lqx$a;->n:I

    if-ne v0, v1, :cond_f

    new-instance v0, Lnl;

    invoke-direct {v0, v2}, Lnl;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    goto/16 :goto_0

    :cond_f
    sget v1, Lqx$a;->o:I

    if-ne v0, v1, :cond_10

    new-instance v0, Lni;

    invoke-direct {v0, v2}, Lni;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    goto/16 :goto_0

    :cond_10
    sget v1, Lqx$a;->q:I

    if-ne v0, v1, :cond_11

    new-instance v0, Lnm;

    invoke-direct {v0, v2}, Lnm;-><init>(B)V

    sput-object v0, Ldi;->c:Lnp;

    goto/16 :goto_0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "^^ no such PLATFORM_OEM"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c()Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Ldi;->d:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    invoke-direct {v0, v5}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;-><init>(B)V

    sput-object v0, Ldi;->d:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    :cond_0
    sget-object v1, Ldi;->d:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->b:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_1

    const v2, 0x7f03002c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->b:Landroid/view/View;

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->b:Landroid/view/View;

    const v2, 0x7f080074

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->d:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->b:Landroid/view/View;

    const v2, 0x7f080072

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->b:Landroid/view/View;

    const v2, 0x7f080073

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->b:Landroid/view/View;

    const v2, 0x7f080077

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->c:Landroid/webkit/WebView;

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->b:Landroid/view/View;

    const v2, 0x7f08007a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->b:Landroid/view/View;

    const v2, 0x7f080079

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->h:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->b:Landroid/view/View;

    const v2, 0x7f080076

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->i:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->b:Landroid/view/View;

    const v2, 0x7f080070

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->j:Landroid/widget/ImageView;

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->j:Landroid/widget/ImageView;

    const/16 v2, 0x48

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->d:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressTextVisible(I)V

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->h:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v2, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v2, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v2, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v2, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->j:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->c:Landroid/webkit/WebView;

    iget-object v2, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->n:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->c:Landroid/webkit/WebView;

    iget-object v2, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->m:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_1
    iget-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->b:Landroid/view/View;

    return-object v0
.end method
