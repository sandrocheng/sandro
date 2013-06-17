.class public Lcom/google/a/a/a/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/a/a/bi;


# static fields
.field private static i:Lcom/google/a/a/a/aj;


# instance fields
.field private a:Lcom/google/a/a/a/j;

.field private b:Landroid/content/Context;

.field private c:Lcom/google/a/a/a/bf;

.field private d:Lcom/google/a/a/a/a;

.field private volatile e:Ljava/lang/String;

.field private volatile f:Ljava/lang/Boolean;

.field private final g:Ljava/util/Map;

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/aj;->g:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/google/a/a/a/ac;->a(Landroid/content/Context;)Lcom/google/a/a/a/ac;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/a/a/a/aj;-><init>(Landroid/content/Context;Lcom/google/a/a/a/j;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/a/a/a/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/aj;->g:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/aj;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/a/a/a/aj;->a:Lcom/google/a/a/a/j;

    new-instance v0, Lcom/google/a/a/a/a;

    invoke-direct {v0}, Lcom/google/a/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/aj;->d:Lcom/google/a/a/a/a;

    iget-object v0, p0, Lcom/google/a/a/a/aj;->a:Lcom/google/a/a/a/j;

    new-instance v1, Lcom/google/a/a/a/ak;

    invoke-direct {v1, p0}, Lcom/google/a/a/a/ak;-><init>(Lcom/google/a/a/a/aj;)V

    invoke-interface {v0, v1}, Lcom/google/a/a/a/j;->a(Lcom/google/a/a/a/am;)V

    iget-object v0, p0, Lcom/google/a/a/a/aj;->a:Lcom/google/a/a/a/j;

    new-instance v1, Lcom/google/a/a/a/al;

    invoke-direct {v1, p0}, Lcom/google/a/a/a/al;-><init>(Lcom/google/a/a/a/aj;)V

    invoke-interface {v0, v1}, Lcom/google/a/a/a/j;->a(Lcom/google/a/a/a/k;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/a/a/a/aj;
    .locals 2

    const-class v1, Lcom/google/a/a/a/aj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/a/a/a/aj;->i:Lcom/google/a/a/a/aj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/a/a/a/aj;

    invoke-direct {v0, p0}, Lcom/google/a/a/a/aj;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/a/a/a/aj;->i:Lcom/google/a/a/a/aj;

    :cond_0
    sget-object v0, Lcom/google/a/a/a/aj;->i:Lcom/google/a/a/a/aj;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/a/a/a/aj;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/google/a/a/a/aj;->f:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/google/a/a/a/aj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/a/a/a/aj;->e:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Lcom/google/a/a/a/bf;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/a/a/a/ah;->a()Lcom/google/a/a/a/ah;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/ai;->O:Lcom/google/a/a/a/ai;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/ah;->a(Lcom/google/a/a/a/ai;)V

    iget-object v0, p0, Lcom/google/a/a/a/aj;->c:Lcom/google/a/a/a/bf;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/google/a/a/a/bf;
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trackingId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/a/a/a/aj;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/bf;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/a/a/a/bf;

    invoke-direct {v0, p1, p0}, Lcom/google/a/a/a/bf;-><init>(Ljava/lang/String;Lcom/google/a/a/a/bi;)V

    iget-object v1, p0, Lcom/google/a/a/a/aj;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/a/a/a/aj;->c:Lcom/google/a/a/a/bf;

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/google/a/a/a/aj;->c:Lcom/google/a/a/a/bf;

    :cond_1
    invoke-static {}, Lcom/google/a/a/a/ah;->a()Lcom/google/a/a/a/ah;

    move-result-object v1

    sget-object v2, Lcom/google/a/a/a/ai;->N:Lcom/google/a/a/a/ai;

    invoke-virtual {v1, v2}, Lcom/google/a/a/a/ah;->a(Lcom/google/a/a/a/ai;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hit cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/a/a/bj;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adSenseAdMobHitId"

    iget-object v1, p0, Lcom/google/a/a/a/aj;->d:Lcom/google/a/a/a/a;

    invoke-virtual {v1}, Lcom/google/a/a/a/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screenResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/a/a/a/aj;->b:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/google/a/a/a/aj;->b:Landroid/content/Context;

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

    const-string v0, "usage"

    invoke-static {}, Lcom/google/a/a/a/ah;->a()Lcom/google/a/a/a/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/a/a/ah;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/a/a/a/ah;->a()Lcom/google/a/a/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/a/ah;->b()Ljava/lang/String;

    iget-object v0, p0, Lcom/google/a/a/a/aj;->a:Lcom/google/a/a/a/j;

    invoke-interface {v0, p1}, Lcom/google/a/a/a/j;->a(Ljava/util/Map;)V

    const-string v0, "trackingId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/a/a/a/aj;->h:Ljava/lang/String;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
