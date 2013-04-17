.class final Lboe;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lbod;


# direct methods
.method constructor <init>(Lbod;)V
    .locals 0

    iput-object p1, p0, Lboe;->a:Lbod;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HUAWEI U9508"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lboe;->a:Lbod;

    invoke-static {}, Lfy;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lbod;->a(Lbod;Z)Z

    :cond_0
    iget-object v0, p0, Lboe;->a:Lbod;

    invoke-virtual {v0}, Lbod;->a()Lalt;

    move-result-object v0

    iget-object v1, p0, Lboe;->a:Lbod;

    invoke-static {v1}, Lbod;->a(Lbod;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lalt;->b(Z)V

    iget-object v0, p0, Lboe;->a:Lbod;

    invoke-static {v0}, Lbod;->c(Lbod;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lboe;->a:Lbod;

    invoke-static {v1}, Lbod;->b(Lbod;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
