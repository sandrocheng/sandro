.class public Lcom/avast/android/generic/util/ga/a;
.super Ljava/lang/Object;
.source "EasyTrackerAdapter.java"


# static fields
.field private static a:Lcom/avast/android/generic/util/ga/a;


# instance fields
.field private b:Lcom/avast/android/generic/util/ga/c;

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/util/ga/a;->c:Z

    .line 54
    return-void
.end method

.method public static a()Lcom/google/analytics/tracking/android/bo;
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->b()Lcom/avast/android/generic/util/ga/a;

    move-result-object v0

    .line 33
    iget-object v1, v0, Lcom/avast/android/generic/util/ga/a;->b:Lcom/avast/android/generic/util/ga/c;

    if-nez v1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call EasyTrackerAdapter.getInstance().setContext(context) or activityStart(Activity) before calling getTracker()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iget-object v0, v0, Lcom/avast/android/generic/util/ga/a;->b:Lcom/avast/android/generic/util/ga/c;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/util/ga/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/avast/android/generic/util/ga/a;->c:Z

    return v0
.end method

.method public static declared-synchronized b()Lcom/avast/android/generic/util/ga/a;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/avast/android/generic/util/ga/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avast/android/generic/util/ga/a;->a:Lcom/avast/android/generic/util/ga/a;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/avast/android/generic/util/ga/a;

    invoke-direct {v0}, Lcom/avast/android/generic/util/ga/a;-><init>()V

    sput-object v0, Lcom/avast/android/generic/util/ga/a;->a:Lcom/avast/android/generic/util/ga/a;

    .line 49
    :cond_0
    sget-object v0, Lcom/avast/android/generic/util/ga/a;->a:Lcom/avast/android/generic/util/ga/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/util/ga/a;->a(Landroid/content/Context;)V

    .line 67
    iget-boolean v0, p0, Lcom/avast/android/generic/util/ga/a;->c:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/google/analytics/tracking/android/p;->a()Lcom/google/analytics/tracking/android/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/p;->a(Landroid/app/Activity;)V

    .line 70
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 94
    invoke-static {}, Lcom/google/analytics/tracking/android/p;->a()Lcom/google/analytics/tracking/android/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)V

    .line 95
    iget-object v0, p0, Lcom/avast/android/generic/util/ga/a;->b:Lcom/avast/android/generic/util/ga/c;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/avast/android/generic/util/ga/c;

    invoke-static {}, Lcom/google/analytics/tracking/android/p;->b()Lcom/google/analytics/tracking/android/bo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/avast/android/generic/util/ga/c;-><init>(Lcom/avast/android/generic/util/ga/a;Lcom/google/analytics/tracking/android/bo;Lcom/avast/android/generic/util/ga/b;)V

    iput-object v0, p0, Lcom/avast/android/generic/util/ga/a;->b:Lcom/avast/android/generic/util/ga/c;

    .line 98
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GA tracking enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 107
    iput-boolean p1, p0, Lcom/avast/android/generic/util/ga/a;->c:Z

    .line 108
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/avast/android/generic/util/ga/a;->c:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/google/analytics/tracking/android/p;->a()Lcom/google/analytics/tracking/android/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/p;->b(Landroid/app/Activity;)V

    .line 83
    :cond_0
    return-void
.end method
