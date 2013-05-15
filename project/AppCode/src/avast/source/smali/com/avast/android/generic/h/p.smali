.class Lcom/avast/android/generic/h/p;
.super Ljava/lang/Object;
.source "TaskHandler.java"

# interfaces
.implements Lcom/avast/android/generic/h/n;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/h/o;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/h/o;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/avast/android/generic/h/p;->a:Lcom/avast/android/generic/h/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 127
    iget-object v0, p0, Lcom/avast/android/generic/h/p;->a:Lcom/avast/android/generic/h/o;

    invoke-static {v0}, Lcom/avast/android/generic/h/o;->a(Lcom/avast/android/generic/h/o;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/h/p;->a:Lcom/avast/android/generic/h/o;

    invoke-static {v0}, Lcom/avast/android/generic/h/o;->b(Lcom/avast/android/generic/h/o;)I

    .line 130
    const-string v0, "AvastGeneric"

    iget-object v2, p0, Lcom/avast/android/generic/h/p;->a:Lcom/avast/android/generic/h/o;

    invoke-static {v2}, Lcom/avast/android/generic/h/o;->c(Lcom/avast/android/generic/h/o;)Lcom/avast/android/generic/service/AvastService;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EventsRunning at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/generic/h/p;->a:Lcom/avast/android/generic/h/o;

    invoke-static {v4}, Lcom/avast/android/generic/h/o;->d(Lcom/avast/android/generic/h/o;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (handleEvent2 end)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v0, p0, Lcom/avast/android/generic/h/p;->a:Lcom/avast/android/generic/h/o;

    invoke-virtual {v0}, Lcom/avast/android/generic/h/o;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/avast/android/generic/h/p;->a:Lcom/avast/android/generic/h/o;

    invoke-static {v0}, Lcom/avast/android/generic/h/o;->c(Lcom/avast/android/generic/h/o;)Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/service/AvastService;->b()V

    .line 135
    :cond_0
    return-void

    .line 131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
