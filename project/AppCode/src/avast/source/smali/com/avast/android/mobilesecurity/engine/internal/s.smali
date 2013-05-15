.class public Lcom/avast/android/mobilesecurity/engine/internal/s;
.super Ljava/lang/Object;
.source "VpsInterface.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/ClassLoader;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/Object;

.field private static g:Ldalvik/system/DexClassLoader;

.field private static h:Ljava/lang/Class;

.field private static i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 293
    const-string v0, "i-2"

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->c:Ljava/lang/String;

    .line 294
    const-class v0, Lcom/avast/android/mobilesecurity/engine/internal/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->d:Ljava/lang/ClassLoader;

    .line 295
    const-string v0, "dex"

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->a:Ljava/lang/String;

    .line 296
    const-string v0, "com.avast.android.mobilesecurity.vps.Interface"

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->e:Ljava/lang/String;

    .line 297
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->f:Ljava/lang/Object;

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->b:Ljava/util/Map;

    .line 305
    :try_start_0
    const-string v0, "avast-vps-interface"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/v;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/s;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/v;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/engine/internal/w;
    .locals 2
    .parameter

    .prologue
    .line 610
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->i:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 611
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/w;->c:Lcom/avast/android/mobilesecurity/engine/internal/w;

    .line 627
    :goto_0
    return-object v0

    .line 614
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 615
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/x;->j:Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-static {p0, v1, v0}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/internal/x;Ljava/util/Map;)Ljava/lang/Object;

    .line 618
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->i:Ljava/lang/Object;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/NativeRegistration;->a(Ljava/lang/Object;)I

    move-result v0

    .line 620
    if-eqz v0, :cond_1

    .line 621
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/w;->b:Lcom/avast/android/mobilesecurity/engine/internal/w;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/w;->b:Lcom/avast/android/mobilesecurity/engine/internal/w;

    goto :goto_0

    .line 626
    :cond_1
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/s;->b()V

    .line 627
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/w;->a:Lcom/avast/android/mobilesecurity/engine/internal/w;

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/Boolean;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 813
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 815
    const/4 v0, 0x0

    .line 816
    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v3, v4, v0}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 818
    const/4 v0, 0x4

    .line 819
    add-int/lit8 v3, v3, 0x4

    array-length v4, p0

    if-eq v3, v4, :cond_1

    .line 820
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid structure length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :catch_0
    move-exception v0

    .line 849
    const-string v1, "Exception parsing contains library result"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 852
    :cond_0
    return-object v1

    .line 823
    :cond_1
    const/4 v3, -0x1

    :try_start_1
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move v3, v0

    .line 825
    :goto_0
    array-length v0, p0

    if-ge v3, v0, :cond_0

    .line 826
    const/4 v0, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v4, v3}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 828
    add-int/lit8 v3, v3, 0x4

    .line 829
    add-int v0, v3, v4

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-eq v0, v6, :cond_2

    .line 830
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid payload length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_2
    const/4 v0, 0x0

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v5, v3}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 835
    if-eqz v0, :cond_3

    .line 836
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_3
    move-object v0, v1

    .line 845
    :goto_1
    add-int v1, v3, v4

    move v3, v1

    move-object v1, v0

    goto :goto_0

    .line 838
    :pswitch_0
    const/4 v0, 0x0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    add-int/lit8 v5, v3, 0x2

    invoke-static {p0, v0, v1, v5}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 836
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/internal/x;Ljava/util/Map;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 324
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/internal/s;->f:Ljava/lang/Object;

    monitor-enter v4

    .line 325
    :try_start_0
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/x;->values()[Lcom/avast/android/mobilesecurity/engine/internal/x;

    move-result-object v5

    move v3, v1

    .line 327
    :goto_0
    array-length v6, v5

    if-ge v3, v6, :cond_1

    .line 328
    sget-object v6, Lcom/avast/android/mobilesecurity/engine/internal/s;->b:Ljava/util/Map;

    aget-object v7, v5, v3

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    move v0, v1

    .line 327
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    :cond_1
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/s;->i:Ljava/lang/Object;

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 334
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/v;

    move-result-object v0

    .line 337
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/v;->a:Lcom/avast/android/mobilesecurity/engine/internal/v;

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/engine/internal/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 338
    monitor-exit v4

    move-object v0, v2

    .line 359
    :goto_1
    return-object v0

    .line 341
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 345
    if-nez v0, :cond_4

    move-object v0, v2

    .line 346
    goto :goto_1

    .line 341
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 350
    :cond_4
    :try_start_2
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/s;->i:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    const-string v1, "call"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 353
    goto :goto_1

    .line 354
    :catch_1
    move-exception v0

    .line 355
    const-string v1, "call"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 356
    goto :goto_1

    .line 357
    :catch_2
    move-exception v0

    .line 358
    const-string v1, "call"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 359
    goto :goto_1
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 800
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/v;
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 405
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->i:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 406
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/x;->values()[Lcom/avast/android/mobilesecurity/engine/internal/x;

    move-result-object v4

    move v0, v1

    move v2, v3

    .line 408
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 409
    sget-object v5, Lcom/avast/android/mobilesecurity/engine/internal/s;->b:Ljava/util/Map;

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    move v2, v1

    .line 408
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_1
    if-eqz v2, :cond_2

    .line 414
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->c:Lcom/avast/android/mobilesecurity/engine/internal/v;

    .line 589
    :goto_1
    return-object v0

    .line 422
    :cond_2
    const/4 v0, 0x2

    move v5, v1

    move v2, v0

    move-object v0, p1

    .line 424
    :goto_2
    add-int/lit8 v6, v2, -0x1

    if-eqz v2, :cond_a

    .line 425
    if-eqz v0, :cond_3

    :try_start_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 426
    :cond_3
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/s;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 427
    if-nez v0, :cond_4

    .line 428
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->d:Lcom/avast/android/mobilesecurity/engine/internal/v;

    goto :goto_1

    .line 432
    :cond_4
    new-instance v2, Ldalvik/system/DexClassLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/avast/android/mobilesecurity/engine/internal/s;->a:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/avast/android/mobilesecurity/engine/internal/s;->a:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/avast/android/mobilesecurity/engine/internal/s;->d:Ljava/lang/ClassLoader;

    invoke-direct {v2, v4, v8, v9, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v2, Lcom/avast/android/mobilesecurity/engine/internal/s;->g:Ldalvik/system/DexClassLoader;

    .line 438
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/s;->g:Ldalvik/system/DexClassLoader;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/internal/s;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/avast/android/mobilesecurity/engine/internal/s;->h:Ljava/lang/Class;

    .line 441
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_9

    .line 443
    :try_start_1
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/s;->h:Ljava/lang/Class;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/util/Map;

    aput-object v10, v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 446
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 447
    const-string v9, "context"

    invoke-interface {v8, v9, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v9, "path"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/avast/android/mobilesecurity/engine/internal/s;->a:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v0, "storage"

    const-class v9, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v0, v9

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->i:Ljava/lang/Object;

    .line 460
    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 461
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->h:Ljava/lang/Class;

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/x;->d:Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/x;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/util/Map;

    aput-object v11, v9, v10

    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 463
    new-instance v2, Ljava/lang/String;

    sget-object v9, Lcom/avast/android/mobilesecurity/engine/internal/s;->i:Ljava/lang/Object;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_9

    .line 470
    :try_start_2
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/x;->values()[Lcom/avast/android/mobilesecurity/engine/internal/x;

    move-result-object v4

    move v0, v1

    .line 471
    :goto_3
    array-length v8, v4

    if-ge v0, v8, :cond_5

    .line 472
    sget-object v8, Lcom/avast/android/mobilesecurity/engine/internal/s;->h:Ljava/lang/Class;

    aget-object v9, v4, v0

    invoke-virtual {v9}, Lcom/avast/android/mobilesecurity/engine/internal/x;->a()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/util/Map;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_9

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v0, v1

    .line 480
    :goto_4
    if-nez v0, :cond_6

    :try_start_3
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 486
    :cond_6
    if-eqz v5, :cond_7

    .line 487
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->f:Lcom/avast/android/mobilesecurity/engine/internal/v;

    goto/16 :goto_1

    .line 474
    :catch_0
    move-exception v0

    move-object v0, v4

    :goto_5
    move-object v2, v0

    move v0, v3

    .line 478
    goto :goto_4

    .line 476
    :catch_1
    move-exception v0

    :goto_6
    move-object v2, v4

    move v0, v3

    .line 477
    goto :goto_4

    .line 493
    :cond_7
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->g:Ldalvik/system/DexClassLoader;

    .line 494
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->h:Ljava/lang/Class;

    .line 495
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->i:Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move v0, v1

    .line 500
    :goto_7
    array-length v4, v2

    if-ge v0, v4, :cond_9

    .line 501
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_8

    .line 503
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->b:Lcom/avast/android/mobilesecurity/engine/internal/v;

    goto/16 :goto_1

    .line 500
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    move v5, v3

    move v2, v6

    move-object v0, v7

    .line 510
    goto/16 :goto_2

    .line 512
    :cond_a
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/x;->values()[Lcom/avast/android/mobilesecurity/engine/internal/x;

    move-result-object v0

    .line 513
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_b

    .line 514
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/s;->h:Ljava/lang/Class;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/x;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/util/Map;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 516
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/s;->b:Ljava/util/Map;

    aget-object v4, v0, v1

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 521
    :cond_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 522
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/s;->h:Ljava/lang/Class;

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/x;->e:Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/x;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 527
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/s;->i:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 530
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a([B)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    .line 531
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->a:Lcom/avast/android/mobilesecurity/engine/internal/v;

    goto/16 :goto_1

    .line 534
    :cond_c
    if-eqz p2, :cond_d

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 535
    :cond_d
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/s;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 536
    if-nez p2, :cond_e

    .line 537
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->e:Lcom/avast/android/mobilesecurity/engine/internal/v;

    goto/16 :goto_1

    .line 547
    :cond_e
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->h:Ljava/lang/Class;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/s;->i:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/s;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/internal/NativeRegistration;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/i;

    move-result-object v0

    .line 552
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/i;->l:Lcom/avast/android/mobilesecurity/engine/internal/i;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 553
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->b:Lcom/avast/android/mobilesecurity/engine/internal/v;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_9

    goto/16 :goto_1

    .line 556
    :catch_2
    move-exception v0

    .line 557
    const-string v1, "registerVps"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/s;->b()V

    .line 559
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->g:Lcom/avast/android/mobilesecurity/engine/internal/v;

    goto/16 :goto_1

    .line 560
    :catch_3
    move-exception v0

    .line 561
    const-string v1, "registerVps"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/s;->b()V

    .line 563
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->b:Lcom/avast/android/mobilesecurity/engine/internal/v;

    goto/16 :goto_1

    .line 564
    :catch_4
    move-exception v0

    .line 565
    const-string v1, "registerVps"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/s;->b()V

    .line 567
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->b:Lcom/avast/android/mobilesecurity/engine/internal/v;

    goto/16 :goto_1

    .line 568
    :catch_5
    move-exception v0

    .line 569
    const-string v1, "registerVps"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/s;->b()V

    .line 571
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->b:Lcom/avast/android/mobilesecurity/engine/internal/v;

    goto/16 :goto_1

    .line 572
    :catch_6
    move-exception v0

    .line 573
    const-string v1, "registerVps"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/s;->b()V

    .line 575
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->g:Lcom/avast/android/mobilesecurity/engine/internal/v;

    goto/16 :goto_1

    .line 576
    :catch_7
    move-exception v0

    .line 577
    const-string v1, "registerVps"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/s;->b()V

    .line 579
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->f:Lcom/avast/android/mobilesecurity/engine/internal/v;

    goto/16 :goto_1

    .line 580
    :catch_8
    move-exception v0

    .line 581
    const-string v1, "registerVps"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/s;->b()V

    .line 583
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->f:Lcom/avast/android/mobilesecurity/engine/internal/v;

    goto/16 :goto_1

    .line 584
    :catch_9
    move-exception v0

    .line 585
    const-string v1, "registerVps"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/s;->b()V

    .line 587
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->b:Lcom/avast/android/mobilesecurity/engine/internal/v;

    goto/16 :goto_1

    .line 589
    :cond_f
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/v;->a:Lcom/avast/android/mobilesecurity/engine/internal/v;

    goto/16 :goto_1

    .line 476
    :catch_a
    move-exception v0

    move-object v4, v2

    goto/16 :goto_6

    .line 474
    :catch_b
    move-exception v0

    move-object v0, v2

    goto/16 :goto_5
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 640
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 641
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/internal/t;

    invoke-direct {v1}, Lcom/avast/android/mobilesecurity/engine/internal/t;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 653
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 656
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/s;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b()V
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->i:Ljava/lang/Object;

    .line 597
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 598
    return-void
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 670
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 671
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/internal/u;

    invoke-direct {v1}, Lcom/avast/android/mobilesecurity/engine/internal/u;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 682
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 683
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 685
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 699
    .line 700
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/s;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 702
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 703
    const-string v2, ""

    invoke-virtual {v4, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 704
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_6

    .line 706
    aget-object v5, v2, v0

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 707
    aget-object v2, v2, v0

    .line 711
    :goto_1
    if-nez v2, :cond_1

    move-object v0, v1

    .line 753
    :goto_2
    return-object v0

    .line 704
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 714
    :cond_1
    invoke-virtual {v4, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 715
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 716
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v5, 0x2710

    invoke-direct {v0, v5}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 718
    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 719
    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    goto :goto_3

    .line 750
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 751
    goto :goto_2

    .line 721
    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 722
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 723
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 724
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 725
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 726
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 727
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 728
    :cond_3
    :goto_4
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 729
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 730
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 731
    if-eqz v6, :cond_3

    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    const-string v7, "so"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 734
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 735
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    aget-object v6, v6, v9

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 737
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 739
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 740
    const/16 v7, 0x400

    new-array v7, v7, [B

    .line 743
    :goto_5
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-ltz v8, :cond_4

    .line 744
    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    .line 745
    :cond_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 746
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 747
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_5
    move-object v0, v2

    .line 753
    goto/16 :goto_2

    :cond_6
    move-object v2, v1

    goto/16 :goto_1
.end method
