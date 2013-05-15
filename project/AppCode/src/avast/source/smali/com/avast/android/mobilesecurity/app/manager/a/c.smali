.class Lcom/avast/android/mobilesecurity/app/manager/a/c;
.super Landroid/a/a/b;
.source "AppsInfoProvider.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/manager/a/d;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/manager/a/b;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/manager/a/b;Lcom/avast/android/mobilesecurity/app/manager/a/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/manager/a/c;->b:Lcom/avast/android/mobilesecurity/app/manager/a/b;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/manager/a/c;->a:Lcom/avast/android/mobilesecurity/app/manager/a/d;

    invoke-direct {p0}, Landroid/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/PackageStats;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/c;->a:Lcom/avast/android/mobilesecurity/app/manager/a/d;

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v3, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v1, v3

    iget-wide v3, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/avast/android/mobilesecurity/app/manager/a/d;->a:J

    .line 104
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/a/c;->a:Lcom/avast/android/mobilesecurity/app/manager/a/d;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/c;->a:Lcom/avast/android/mobilesecurity/app/manager/a/d;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
