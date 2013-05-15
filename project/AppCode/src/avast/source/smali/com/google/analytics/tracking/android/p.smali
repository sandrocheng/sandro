.class public Lcom/google/analytics/tracking/android/p;
.super Ljava/lang/Object;
.source "EasyTracker.java"


# static fields
.field private static a:Lcom/google/analytics/tracking/android/p;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Ljava/lang/Double;

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private l:Z

.field private m:I

.field private n:J

.field private o:J

.field private p:Landroid/content/Context;

.field private final q:Ljava/util/Map;

.field private r:Lcom/google/analytics/tracking/android/bo;

.field private s:Lcom/google/analytics/tracking/android/bf;

.field private t:Lcom/google/analytics/tracking/android/c;

.field private u:Lcom/google/analytics/tracking/android/bk;

.field private v:Lcom/google/analytics/tracking/android/n;

.field private w:Ljava/util/Timer;

.field private x:Ljava/util/TimerTask;

.field private y:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/p;->b:Z

    .line 149
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/p;->f:I

    .line 176
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/p;->l:Z

    .line 181
    iput v1, p0, Lcom/google/analytics/tracking/android/p;->m:I

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/p;->q:Ljava/util/Map;

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/p;->r:Lcom/google/analytics/tracking/android/bo;

    .line 217
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/p;->y:Z

    .line 96
    new-instance v0, Lcom/google/analytics/tracking/android/q;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/q;-><init>(Lcom/google/analytics/tracking/android/p;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/p;->v:Lcom/google/analytics/tracking/android/n;

    .line 102
    return-void
.end method

.method public static a()Lcom/google/analytics/tracking/android/p;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/google/analytics/tracking/android/p;->a:Lcom/google/analytics/tracking/android/p;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/google/analytics/tracking/android/p;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/p;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/p;->a:Lcom/google/analytics/tracking/android/p;

    .line 113
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/p;->a:Lcom/google/analytics/tracking/android/p;

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/p;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/p;->y:Z

    return p1
.end method

.method public static b()Lcom/google/analytics/tracking/android/bo;
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Lcom/google/analytics/tracking/android/p;->a()Lcom/google/analytics/tracking/android/p;

    move-result-object v0

    iget-object v0, v0, Lcom/google/analytics/tracking/android/p;->p:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call EasyTracker.getInstance().setContext(context) or startActivity(activity) before calling getTracker()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/p;->a()Lcom/google/analytics/tracking/android/p;

    move-result-object v0

    iget-object v0, v0, Lcom/google/analytics/tracking/android/p;->r:Lcom/google/analytics/tracking/android/bo;

    return-object v0
.end method

.method private c(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 426
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 427
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->q:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->q:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 435
    :goto_0
    return-object v0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->s:Lcom/google/analytics/tracking/android/bf;

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    if-nez v0, :cond_1

    move-object v0, v1

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/google/analytics/tracking/android/p;->q:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 232
    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->s:Lcom/google/analytics/tracking/android/bf;

    const-string v2, "ga_trackingId"

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/p;->c:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->s:Lcom/google/analytics/tracking/android/bf;

    const-string v2, "ga_api_key"

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/p;->c:Ljava/lang/String;

    .line 237
    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    const-string v0, "EasyTracker requested, but missing required ga_trackingId"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    .line 239
    new-instance v0, Lcom/google/analytics/tracking/android/r;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/r;-><init>(Lcom/google/analytics/tracking/android/p;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/p;->r:Lcom/google/analytics/tracking/android/bo;

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/p;->b:Z

    .line 244
    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->s:Lcom/google/analytics/tracking/android/bf;

    const-string v2, "ga_appName"

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/p;->d:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->s:Lcom/google/analytics/tracking/android/bf;

    const-string v2, "ga_appVersion"

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/p;->e:Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->s:Lcom/google/analytics/tracking/android/bf;

    const-string v2, "ga_debug"

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/bf;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/p;->g:Z

    .line 248
    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->s:Lcom/google/analytics/tracking/android/bf;

    const-string v2, "ga_sampleFrequency"

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/bf;->b(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/p;->h:Ljava/lang/Double;

    .line 249
    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->h:Ljava/lang/Double;

    if-nez v1, :cond_2

    .line 250
    new-instance v1, Ljava/lang/Double;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/p;->s:Lcom/google/analytics/tracking/android/bf;

    const-string v3, "ga_sampleRate"

    const/16 v4, 0x64

    invoke-interface {v2, v3, v4}, Lcom/google/analytics/tracking/android/bf;->a(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    iput-object v1, p0, Lcom/google/analytics/tracking/android/p;->h:Ljava/lang/Double;

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->s:Lcom/google/analytics/tracking/android/bf;

    const-string v2, "ga_dispatchPeriod"

    const/16 v3, 0x708

    invoke-interface {v1, v2, v3}, Lcom/google/analytics/tracking/android/bf;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/analytics/tracking/android/p;->f:I

    .line 253
    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->s:Lcom/google/analytics/tracking/android/bf;

    const-string v2, "ga_sessionTimeout"

    const/16 v3, 0x1e

    invoke-interface {v1, v2, v3}, Lcom/google/analytics/tracking/android/bf;->a(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/google/analytics/tracking/android/p;->n:J

    .line 254
    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->s:Lcom/google/analytics/tracking/android/bf;

    const-string v2, "ga_autoActivityTracking"

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/bf;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->s:Lcom/google/analytics/tracking/android/bf;

    const-string v2, "ga_auto_activity_tracking"

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/bf;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/p;->l:Z

    .line 257
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->s:Lcom/google/analytics/tracking/android/bf;

    const-string v1, "ga_anonymizeIp"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/bf;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/p;->i:Z

    .line 258
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->s:Lcom/google/analytics/tracking/android/bf;

    const-string v1, "ga_reportUncaughtExceptions"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/bf;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/p;->j:Z

    .line 259
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->t:Lcom/google/analytics/tracking/android/c;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/c;->a(Ljava/lang/String;)Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/p;->r:Lcom/google/analytics/tracking/android/bo;

    .line 260
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting appName to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->d(Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->r:Lcom/google/analytics/tracking/android/bo;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;)V

    .line 268
    :cond_4
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 269
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->r:Lcom/google/analytics/tracking/android/bo;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/bo;->b(Ljava/lang/String;)V

    .line 271
    :cond_5
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->r:Lcom/google/analytics/tracking/android/bo;

    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/p;->i:Z

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/bo;->a(Z)V

    .line 272
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->r:Lcom/google/analytics/tracking/android/bo;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->h:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/analytics/tracking/android/bo;->a(D)V

    .line 273
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->t:Lcom/google/analytics/tracking/android/c;

    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/p;->g:Z

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/c;->a(Z)V

    .line 274
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->u:Lcom/google/analytics/tracking/android/bk;

    iget v1, p0, Lcom/google/analytics/tracking/android/p;->f:I

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/bk;->a(I)V

    .line 276
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/p;->j:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->k:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 278
    if-nez v0, :cond_6

    .line 279
    new-instance v0, Lcom/google/analytics/tracking/android/u;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->r:Lcom/google/analytics/tracking/android/bo;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/p;->u:Lcom/google/analytics/tracking/android/bk;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/analytics/tracking/android/u;-><init>(Lcom/google/analytics/tracking/android/bo;Lcom/google/analytics/tracking/android/bk;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 283
    :cond_6
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto/16 :goto_0

    .line 254
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private declared-synchronized e()V
    .locals 1

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->w:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->w:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/p;->w:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :cond_0
    monitor-exit p0

    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 348
    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)V

    .line 349
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/p;->b:Z

    if-nez v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/p;->e()V

    .line 357
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/p;->y:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/analytics/tracking/android/p;->m:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/p;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->r:Lcom/google/analytics/tracking/android/bo;

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/bo;->b(Z)V

    .line 359
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/p;->l:Z

    if-nez v0, :cond_2

    .line 364
    :cond_2
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/p;->y:Z

    .line 365
    iget v0, p0, Lcom/google/analytics/tracking/android/p;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/p;->m:I

    .line 366
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/p;->l:Z

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->r:Lcom/google/analytics/tracking/android/bo;

    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/p;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/bo;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 305
    if-nez p1, :cond_0

    .line 306
    const-string v0, "Context cannot be null"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    .line 314
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/w;->a()Lcom/google/analytics/tracking/android/w;

    move-result-object v0

    .line 309
    new-instance v1, Lcom/google/analytics/tracking/android/bg;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/analytics/tracking/android/bg;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/ap;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/ap;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;Lcom/google/analytics/tracking/android/bf;Lcom/google/analytics/tracking/android/c;Lcom/google/analytics/tracking/android/bk;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Lcom/google/analytics/tracking/android/bf;Lcom/google/analytics/tracking/android/c;Lcom/google/analytics/tracking/android/bk;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    const-string v0, "Context cannot be null"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->p:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 328
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/p;->p:Landroid/content/Context;

    .line 329
    iput-object p3, p0, Lcom/google/analytics/tracking/android/p;->t:Lcom/google/analytics/tracking/android/c;

    .line 330
    iput-object p4, p0, Lcom/google/analytics/tracking/android/p;->u:Lcom/google/analytics/tracking/android/bk;

    .line 331
    iput-object p2, p0, Lcom/google/analytics/tracking/android/p;->s:Lcom/google/analytics/tracking/android/bf;

    .line 332
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/p;->d()V

    .line 334
    :cond_1
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)V

    .line 380
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/p;->b:Z

    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget v0, p0, Lcom/google/analytics/tracking/android/p;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/p;->m:I

    .line 386
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/analytics/tracking/android/p;->m:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/analytics/tracking/android/p;->m:I

    .line 388
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->v:Lcom/google/analytics/tracking/android/n;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/n;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/p;->o:J

    .line 390
    iget v0, p0, Lcom/google/analytics/tracking/android/p;->m:I

    if-nez v0, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/p;->e()V

    .line 394
    new-instance v0, Lcom/google/analytics/tracking/android/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/tracking/android/s;-><init>(Lcom/google/analytics/tracking/android/p;Lcom/google/analytics/tracking/android/q;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/p;->x:Ljava/util/TimerTask;

    .line 395
    new-instance v0, Ljava/util/Timer;

    const-string v1, "waitForActivityStart"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/p;->w:Ljava/util/Timer;

    .line 396
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->w:Ljava/util/Timer;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->x:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method c()Z
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 223
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/p;->n:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/analytics/tracking/android/p;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->v:Lcom/google/analytics/tracking/android/n;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/n;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/p;->o:J

    iget-wide v4, p0, Lcom/google/analytics/tracking/android/p;->n:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
