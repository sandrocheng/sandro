.class public Lcom/avast/android/mobilesecurity/app/manager/a/j;
.super Ljava/lang/Object;
.source "CachingSystemInfoProviderImpl.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/app/manager/a/i;


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/app/manager/a/k;

.field private b:Lcom/avast/android/mobilesecurity/app/manager/a/l;

.field private c:F

.field private d:Lcom/avast/android/mobilesecurity/app/manager/a/m;

.field private e:Lcom/avast/android/mobilesecurity/app/manager/a/m;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/manager/a/k;Lcom/avast/android/mobilesecurity/app/manager/a/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->a:Lcom/avast/android/mobilesecurity/app/manager/a/k;

    .line 26
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->b:Lcom/avast/android/mobilesecurity/app/manager/a/l;

    .line 27
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/a/j;->b()V

    .line 28
    return-void
.end method


# virtual methods
.method public declared-synchronized a()F
    .locals 2

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->a:Lcom/avast/android/mobilesecurity/app/manager/a/k;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/k;->a()F

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->c:F

    .line 45
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->c:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/app/ActivityManager;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->f:I

    if-gez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->a:Lcom/avast/android/mobilesecurity/app/manager/a/k;

    invoke-interface {v0, p1}, Lcom/avast/android/mobilesecurity/app/manager/a/k;->a(Landroid/app/ActivityManager;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->f:I

    .line 69
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 34
    monitor-enter p0

    const/high16 v0, -0x4080

    :try_start_0
    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->c:F

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->d:Lcom/avast/android/mobilesecurity/app/manager/a/m;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->e:Lcom/avast/android/mobilesecurity/app/manager/a/m;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Lcom/avast/android/mobilesecurity/app/manager/a/m;
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->d:Lcom/avast/android/mobilesecurity/app/manager/a/m;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->b:Lcom/avast/android/mobilesecurity/app/manager/a/l;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/l;->c()Lcom/avast/android/mobilesecurity/app/manager/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->d:Lcom/avast/android/mobilesecurity/app/manager/a/m;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->d:Lcom/avast/android/mobilesecurity/app/manager/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Lcom/avast/android/mobilesecurity/app/manager/a/m;
    .locals 1

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->e:Lcom/avast/android/mobilesecurity/app/manager/a/m;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->b:Lcom/avast/android/mobilesecurity/app/manager/a/l;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/l;->d()Lcom/avast/android/mobilesecurity/app/manager/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->e:Lcom/avast/android/mobilesecurity/app/manager/a/m;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/j;->e:Lcom/avast/android/mobilesecurity/app/manager/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
