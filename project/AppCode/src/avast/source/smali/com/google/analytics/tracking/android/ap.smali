.class public Lcom/google/analytics/tracking/android/ap;
.super Ljava/lang/Object;
.source "GoogleAnalytics.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/bp;
.implements Lcom/google/analytics/tracking/android/c;


# static fields
.field private static j:Lcom/google/analytics/tracking/android/ap;


# instance fields
.field private a:Z

.field private b:Lcom/google/analytics/tracking/android/l;

.field private c:Landroid/content/Context;

.field private d:Lcom/google/analytics/tracking/android/bo;

.field private e:Lcom/google/analytics/tracking/android/a;

.field private volatile f:Ljava/lang/String;

.field private volatile g:Ljava/lang/Boolean;

.field private final h:Ljava/util/Map;

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ap;->h:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-static {p1}, Lcom/google/analytics/tracking/android/ai;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/ai;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/ap;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/l;)V

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/l;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ap;->h:Ljava/util/Map;

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ap;->c:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/google/analytics/tracking/android/ap;->b:Lcom/google/analytics/tracking/android/l;

    .line 64
    new-instance v0, Lcom/google/analytics/tracking/android/a;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/a;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ap;->e:Lcom/google/analytics/tracking/android/a;

    .line 65
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ap;->b:Lcom/google/analytics/tracking/android/l;

    new-instance v1, Lcom/google/analytics/tracking/android/aq;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/aq;-><init>(Lcom/google/analytics/tracking/android/ap;)V

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/l;->a(Lcom/google/analytics/tracking/android/d;)V

    .line 73
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ap;->b:Lcom/google/analytics/tracking/android/l;

    new-instance v1, Lcom/google/analytics/tracking/android/ar;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/ar;-><init>(Lcom/google/analytics/tracking/android/ap;)V

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/l;->a(Lcom/google/analytics/tracking/android/m;)V

    .line 81
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/ap;
    .locals 2
    .parameter

    .prologue
    .line 90
    const-class v1, Lcom/google/analytics/tracking/android/ap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/analytics/tracking/android/ap;->j:Lcom/google/analytics/tracking/android/ap;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/google/analytics/tracking/android/ap;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/ap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/ap;->j:Lcom/google/analytics/tracking/android/ap;

    .line 93
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/ap;->j:Lcom/google/analytics/tracking/android/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/ap;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ap;->g:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/ap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ap;->f:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/google/analytics/tracking/android/bo;
    .locals 3
    .parameter

    .prologue
    .line 143
    monitor-enter p0

    if-nez p1, :cond_0

    .line 144
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trackingId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ap;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/bo;

    .line 149
    if-nez v0, :cond_1

    .line 150
    new-instance v0, Lcom/google/analytics/tracking/android/as;

    invoke-direct {v0, p1, p0}, Lcom/google/analytics/tracking/android/as;-><init>(Ljava/lang/String;Lcom/google/analytics/tracking/android/bp;)V

    .line 151
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ap;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ap;->d:Lcom/google/analytics/tracking/android/bo;

    if-nez v1, :cond_1

    .line 153
    iput-object v0, p0, Lcom/google/analytics/tracking/android/ap;->d:Lcom/google/analytics/tracking/android/bo;

    .line 156
    :cond_1
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/ao;->N:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/an;->a(Lcom/google/analytics/tracking/android/ao;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized a(Ljava/util/Map;)V
    .locals 3
    .parameter

    .prologue
    .line 182
    monitor-enter p0

    if-nez p1, :cond_0

    .line 183
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hit cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    :cond_0
    :try_start_1
    const-string v0, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/bq;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "adSenseAdMobHitId"

    iget-object v1, p0, Lcom/google/analytics/tracking/android/ap;->e:Lcom/google/analytics/tracking/android/a;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "screenResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ap;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ap;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v0, "usage"

    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/an;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/an;->b()Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ap;->b:Lcom/google/analytics/tracking/android/l;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/l;->a(Ljava/util/Map;)V

    .line 197
    const-string v0, "trackingId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ap;->i:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    monitor-exit p0

    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 130
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ao;->L:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/an;->a(Lcom/google/analytics/tracking/android/ao;)V

    .line 131
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/ap;->a:Z

    .line 132
    invoke-static {p1}, Lcom/google/analytics/tracking/android/ay;->a(Z)V

    .line 133
    return-void
.end method
