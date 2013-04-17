.class final Leb;
.super Ls$a;


# instance fields
.field private synthetic a:Lea;


# direct methods
.method constructor <init>(Lea;)V
    .locals 0

    iput-object p1, p0, Leb;->a:Lea;

    invoke-direct {p0}, Ls$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbf;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Leb;->a:Lea;

    iget-object v0, v0, Lea;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->b(Lcom/tencent/powermanager/view/PowerManagerView;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Leb;->a:Lea;

    iget-object v0, v0, Lea;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0, p1}, Lcom/tencent/powermanager/view/PowerManagerView;->a(Lcom/tencent/powermanager/view/PowerManagerView;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Leb;->a:Lea;

    iget-object v0, v0, Lea;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->c(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
