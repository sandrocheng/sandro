.class public abstract Lcom/avast/android/mobilesecurity/app/manager/a/a;
.super Ljava/lang/Object;
.source "AbstractCpuProcessesInfoProvider.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/app/manager/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Landroid/app/ActivityManager;)I
    .locals 5
    .parameter

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 36
    const/4 v0, 0x0

    .line 37
    if-nez v1, :cond_0

    .line 47
    :goto_0
    return v0

    .line 41
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 42
    const-string v3, "system"

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 45
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 47
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()F
    .locals 1

    .prologue
    .line 18
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/a/a;->b()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/app/ActivityManager;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/a/a;->b(Landroid/app/ActivityManager;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b()F
.end method
