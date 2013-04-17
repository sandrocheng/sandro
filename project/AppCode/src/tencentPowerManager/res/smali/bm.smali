.class final Lbm;
.super Lfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfi",
        "<",
        "Lbd;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lbl;


# direct methods
.method constructor <init>(Lbl;)V
    .locals 0

    iput-object p1, p0, Lbm;->a:Lbl;

    invoke-direct {p0}, Lfi;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lfh;)V
    .locals 2

    check-cast p1, Lbd;

    iget-object v0, p0, Lbm;->a:Lbl;

    invoke-static {v0}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lbm;->a:Lbl;

    invoke-static {v1}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbd;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbm;->a:Lbl;

    invoke-static {v0}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lbm;->a:Lbl;

    invoke-static {v1}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final synthetic b(Lfh;)V
    .locals 2

    check-cast p1, Lbd;

    iget-object v0, p0, Lbm;->a:Lbl;

    invoke-static {v0}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lbm;->a:Lbl;

    invoke-static {v1}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbd;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbm;->a:Lbl;

    invoke-static {v0}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lbm;->a:Lbl;

    invoke-static {v1}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final synthetic c(Lfh;)V
    .locals 2

    check-cast p1, Lbd;

    iget-object v0, p0, Lbm;->a:Lbl;

    invoke-static {v0}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lbm;->a:Lbl;

    invoke-static {v1}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final synthetic d(Lfh;)V
    .locals 2

    check-cast p1, Lbd;

    iget-object v0, p0, Lbm;->a:Lbl;

    invoke-static {v0}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lbm;->a:Lbl;

    invoke-static {v1}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final synthetic e(Lfh;)V
    .locals 5

    const/4 v4, 0x2

    check-cast p1, Lbd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lbm;->a:Lbl;

    invoke-static {v2}, Lbl;->b(Lbl;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p1, Lbd;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lbm;->a:Lbl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lbl;->a(Lbl;J)J

    iget-object v0, p0, Lbm;->a:Lbl;

    invoke-static {v0}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lbm;->a:Lbl;

    invoke-static {v1}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lbm;->a:Lbl;

    invoke-static {v1}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final synthetic f(Lfh;)V
    .locals 2

    check-cast p1, Lbd;

    iget-object v0, p0, Lbm;->a:Lbl;

    invoke-static {v0}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lbm;->a:Lbl;

    invoke-static {v1}, Lbl;->a(Lbl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
