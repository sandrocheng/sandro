.class public final Lcom/keniu/security/traffic/y;
.super Ljava/lang/Object;
.source "TrafficConfig2.java"


# static fields
.field private static final A:Z = true

.field private static final B:Z = true

.field private static final C:Z = true

.field private static final D:J = 0x0L

.field private static final E:J = 0x0L

.field private static final F:I = 0x1

.field private static final G:J = 0x0L

.field private static final H:J = 0x0L

.field private static final I:J = 0x500000L

.field private static final J:J = 0x0L

.field private static final K:J = 0x0L

.field private static L:Lcom/keniu/security/traffic/y; = null

.field public static final x:J = 0xea60L

.field public static final y:J = 0x36ee80L

.field public static final z:J = 0x5265c00L


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:J

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:J

.field public p:Ljava/lang/String;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:J

.field public u:Ljava/lang/String;

.field public v:I

.field public w:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    invoke-direct {p0, p1}, Lcom/keniu/security/traffic/y;->e(Landroid/content/Context;)V

    .line 479
    return-void
.end method

.method public static a(J)J
    .locals 6
    .parameter

    .prologue
    const-wide/32 v4, 0x5265c00

    .line 483
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTimezoneOffset()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    sub-long v0, p0, v0

    .line 484
    div-long/2addr v0, v4

    mul-long/2addr v0, v4

    return-wide v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;
    .locals 2
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/keniu/security/traffic/y;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/keniu/security/traffic/y;->L:Lcom/keniu/security/traffic/y;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/keniu/security/traffic/y;

    invoke-direct {v1}, Lcom/keniu/security/traffic/y;-><init>()V

    .line 27
    sput-object v1, Lcom/keniu/security/traffic/y;->L:Lcom/keniu/security/traffic/y;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/y;->e(Landroid/content/Context;)V

    .line 29
    :cond_0
    sget-object v1, Lcom/keniu/security/traffic/y;->L:Lcom/keniu/security/traffic/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 25
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 33
    const-class v0, Lcom/keniu/security/traffic/y;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/keniu/security/traffic/y;->L:Lcom/keniu/security/traffic/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit v0

    return-void

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(J)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/keniu/security/traffic/y;->i:J

    .line 131
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/keniu/security/traffic/y;->L:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/keniu/security/traffic/y;->L:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/keniu/security/traffic/y;->L:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/keniu/security/traffic/y;->L:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/keniu/security/traffic/y;->L:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/keniu/security/traffic/y;->L:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/keniu/security/traffic/y;->L:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/keniu/security/traffic/y;->L:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    .line 55
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 58
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 66
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    .line 67
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lcom/keniu/security/traffic/y;->a()V

    .line 73
    return-void

    .line 58
    :array_0
    .array-data 0x4
        0xcbt 0x3t 0xbt 0x7ft
        0xcct 0x3t 0xbt 0x7ft
        0xcdt 0x3t 0xbt 0x7ft
        0xcet 0x3t 0xbt 0x7ft
        0xc3t 0x3t 0xbt 0x7ft
        0xc7t 0x3t 0xbt 0x7ft
        0xc8t 0x3t 0xbt 0x7ft
        0xc9t 0x3t 0xbt 0x7ft
        0xc8t 0x3t 0xbt 0x7ft
    .end array-data
.end method

.method private static c()Z
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/keniu/security/traffic/y;->L:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/keniu/security/traffic/y;->L:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/keniu/security/traffic/y;->L:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/keniu/security/traffic/y;->L:Lcom/keniu/security/traffic/y;

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Z
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    .line 105
    const-class v0, Lcom/keniu/security/traffic/y;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 108
    const v2, 0x7f0b03c3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 111
    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private e(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0b03d6

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 391
    invoke-static {p1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 394
    const v1, 0x7f0b03c0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/keniu/security/traffic/y;->a:Z

    .line 398
    const-string v1, "kn_traffis_xuanfuchuang_key"

    .line 399
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/keniu/security/traffic/y;->r:Z

    .line 401
    const v1, 0x7f0b02f0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/keniu/security/traffic/y;->s:Z

    .line 404
    const v1, 0x7f0b03c2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/traffic/y;->t:J

    .line 407
    const v1, 0x7f0b03cb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 408
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    .line 410
    const v1, 0x7f0b03cc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 411
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    .line 413
    const v1, 0x7f0b03be

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/keniu/security/traffic/y;->q:Z

    .line 416
    const v1, 0x7f0b02c0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 417
    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/traffic/y;->u:Ljava/lang/String;

    .line 419
    const v1, 0x7f0b02c1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/keniu/security/traffic/y;->v:I

    .line 422
    const v1, 0x7f0b03c4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 423
    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/keniu/security/traffic/y;->w:I

    .line 425
    const v1, 0x7f0b03cd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 426
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    .line 428
    const v1, 0x7f0b03ce

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 429
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    .line 431
    const v1, 0x7f0b03c1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/keniu/security/traffic/y;->b:Z

    .line 434
    const v1, 0x7f0b03d5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/keniu/security/traffic/y;->c:Z

    .line 439
    const v1, 0x7f0b03c3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/traffic/y;->d:J

    .line 442
    const v1, 0x7f0b03c7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/keniu/security/traffic/y;->e:I

    .line 445
    const v1, 0x7f0b03d0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/traffic/y;->f:J

    .line 448
    const v1, 0x7f0b03c8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/traffic/y;->i:J

    .line 452
    const v1, 0x7f0b02d7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/traffic/y;->o:J

    .line 455
    const v1, 0x7f0b03c9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 456
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/traffic/y;->p:Ljava/lang/String;

    .line 461
    const v1, 0x7f0b03d3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 462
    const-wide/32 v2, 0x500000

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/traffic/y;->g:J

    .line 464
    const v1, 0x7f0b03d4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/traffic/y;->h:J

    .line 467
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keniu/security/traffic/y;->j:J

    .line 470
    iget-wide v0, p0, Lcom/keniu/security/traffic/y;->j:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keniu/security/traffic/y;->j:J

    .line 472
    invoke-virtual {p0, p1, v8}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 475
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Date;)J
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x5

    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 141
    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Ljava/util/Calendar;->set(III)V

    .line 143
    iget v1, p0, Lcom/keniu/security/traffic/y;->e:I

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 144
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 147
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 148
    invoke-virtual {p1}, Ljava/util/Date;->getDate()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 149
    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v2, v2, 0x76c

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/Calendar;->set(III)V

    .line 158
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0

    .line 151
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v2, v2, 0x76c

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v3

    invoke-virtual {v0, v2, v3, v5}, Ljava/util/Calendar;->set(III)V

    .line 152
    const/4 v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 154
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    .line 155
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 120
    const/16 v1, 0x1f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 122
    iput v0, p0, Lcom/keniu/security/traffic/y;->e:I

    .line 123
    return-void
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-static {p1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 203
    sparse-switch p2, :sswitch_data_0

    .line 335
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 336
    return-void

    .line 205
    :sswitch_0
    const v1, 0x7f0b03c0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    iget-boolean v2, p0, Lcom/keniu/security/traffic/y;->a:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 210
    :sswitch_1
    const v1, 0x7f0b03c2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    iget-wide v2, p0, Lcom/keniu/security/traffic/y;->t:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 214
    :sswitch_2
    const v1, 0x7f0b03cb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    iget-object v2, p0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 219
    :sswitch_3
    const v1, 0x7f0b03cc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    iget-object v2, p0, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 224
    :sswitch_4
    const v1, 0x7f0b03be

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    iget-boolean v2, p0, Lcom/keniu/security/traffic/y;->q:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 230
    :sswitch_5
    const v1, 0x7f0b02c0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lcom/keniu/security/traffic/y;->u:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 236
    :sswitch_6
    const v1, 0x7f0b02c1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    iget v2, p0, Lcom/keniu/security/traffic/y;->v:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 242
    :sswitch_7
    const v1, 0x7f0b03c4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    iget v2, p0, Lcom/keniu/security/traffic/y;->w:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 247
    :sswitch_8
    const v1, 0x7f0b02ef

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    iget-boolean v2, p0, Lcom/keniu/security/traffic/y;->r:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 252
    :sswitch_9
    const v1, 0x7f0b02f0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    iget-boolean v2, p0, Lcom/keniu/security/traffic/y;->s:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 257
    :sswitch_a
    const v1, 0x7f0b03cd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 262
    :sswitch_b
    const v1, 0x7f0b03ce

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    iget-object v2, p0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 267
    :sswitch_c
    const v1, 0x7f0b03c1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    iget-boolean v2, p0, Lcom/keniu/security/traffic/y;->b:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 273
    :sswitch_d
    const v1, 0x7f0b03d5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    iget-boolean v2, p0, Lcom/keniu/security/traffic/y;->c:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 279
    :sswitch_e
    const v1, 0x7f0b03c3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    iget-wide v2, p0, Lcom/keniu/security/traffic/y;->d:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 291
    :sswitch_f
    const v1, 0x7f0b03c7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 293
    iget v2, p0, Lcom/keniu/security/traffic/y;->e:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 297
    :sswitch_10
    const v1, 0x7f0b03d0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 299
    iget-wide v2, p0, Lcom/keniu/security/traffic/y;->f:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 303
    :sswitch_11
    const v1, 0x7f0b03c8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 305
    iget-wide v2, p0, Lcom/keniu/security/traffic/y;->i:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 309
    :sswitch_12
    const v1, 0x7f0b02d7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 310
    iget-wide v2, p0, Lcom/keniu/security/traffic/y;->o:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 313
    :sswitch_13
    const v1, 0x7f0b03c9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 314
    iget-object v2, p0, Lcom/keniu/security/traffic/y;->p:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 317
    :sswitch_14
    const v1, 0x7f0b03d3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    iget-wide v2, p0, Lcom/keniu/security/traffic/y;->g:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 323
    :sswitch_15
    const v1, 0x7f0b03d4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 325
    iget-wide v2, p0, Lcom/keniu/security/traffic/y;->h:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 329
    :sswitch_16
    const v1, 0x7f0b03d6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 331
    iget-wide v2, p0, Lcom/keniu/security/traffic/y;->j:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 203
    :sswitch_data_0
    .sparse-switch
        0x7f0b02c0 -> :sswitch_5
        0x7f0b02c1 -> :sswitch_6
        0x7f0b02d7 -> :sswitch_12
        0x7f0b02ef -> :sswitch_8
        0x7f0b02f0 -> :sswitch_9
        0x7f0b03be -> :sswitch_4
        0x7f0b03c0 -> :sswitch_0
        0x7f0b03c1 -> :sswitch_c
        0x7f0b03c2 -> :sswitch_1
        0x7f0b03c3 -> :sswitch_e
        0x7f0b03c4 -> :sswitch_7
        0x7f0b03c7 -> :sswitch_f
        0x7f0b03c8 -> :sswitch_11
        0x7f0b03c9 -> :sswitch_13
        0x7f0b03cb -> :sswitch_2
        0x7f0b03cc -> :sswitch_3
        0x7f0b03cd -> :sswitch_a
        0x7f0b03ce -> :sswitch_b
        0x7f0b03d0 -> :sswitch_10
        0x7f0b03d3 -> :sswitch_14
        0x7f0b03d4 -> :sswitch_15
        0x7f0b03d5 -> :sswitch_d
        0x7f0b03d6 -> :sswitch_16
    .end sparse-switch
.end method

.method public final b(Ljava/util/Date;)J
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 169
    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 171
    iget v1, p0, Lcom/keniu/security/traffic/y;->e:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 172
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 175
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 176
    invoke-virtual {p1}, Ljava/util/Date;->getDate()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 179
    iget v1, p0, Lcom/keniu/security/traffic/y;->e:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 180
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 183
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 188
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0

    .line 185
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v2, v2, 0x76c

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/Calendar;->set(III)V

    goto :goto_0
.end method
