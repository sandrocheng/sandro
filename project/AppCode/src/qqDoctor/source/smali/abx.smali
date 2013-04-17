.class final Labx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Labv;


# direct methods
.method constructor <init>(Labv;)V
    .locals 0

    iput-object p1, p0, Labx;->a:Labv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Labx;->a:Labv;

    invoke-static {v2}, Labv;->a(Labv;)Z

    move-result v2

    if-nez v2, :cond_3

    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-lez v0, :cond_2

    iget-object v0, p0, Labx;->a:Labv;

    invoke-static {v0}, Labv;->b(Labv;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labx;->a:Labv;

    invoke-static {v0}, Labv;->c(Labv;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Labx;->a:Labv;

    invoke-static {v2, v0}, Labv;->b(Labv;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Labx;->a:Labv;

    invoke-static {v2}, Labv;->d(Labv;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Labx;->a:Labv;

    invoke-static {v0}, Labv;->d(Labv;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    move v0, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Labx;->a:Labv;

    invoke-static {v2}, Labv;->e(Labv;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Labx;->a:Labv;

    invoke-static {v2}, Labv;->f(Labv;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Labx;->a:Labv;

    invoke-static {v3}, Labv;->d(Labv;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Labx;->a:Labv;

    invoke-static {v2}, Labv;->d(Labv;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_3
    return-void
.end method
