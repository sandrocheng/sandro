.class final Lvj;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lvh;


# direct methods
.method constructor <init>(Lvh;)V
    .locals 0

    iput-object p1, p0, Lvj;->a:Lvh;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lvj;->a:Lvh;

    invoke-static {v0}, Lvh;->c(Lvh;)Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getFreeMemery()J

    move-result-wide v0

    iget-object v2, p0, Lvj;->a:Lvh;

    invoke-static {v2}, Lvh;->d(Lvh;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    iget-object v2, p0, Lvj;->a:Lvh;

    invoke-static {v2, v0, v1}, Lvh;->a(Lvh;J)J

    :cond_0
    iget-object v0, p0, Lvj;->a:Lvh;

    invoke-static {v0}, Lvh;->e(Lvh;)I

    iget-object v0, p0, Lvj;->a:Lvh;

    invoke-static {v0}, Lvh;->f(Lvh;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lvj;->a:Lvh;

    iget-object v0, v0, Lvh;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lvj;->a:Lvh;

    iget-object v1, p0, Lvj;->a:Lvh;

    invoke-static {v1}, Lvh;->d(Lvh;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lvh;->b(Lvh;J)J

    iget-object v0, p0, Lvj;->a:Lvh;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lvh;->a(J)V

    iget-object v0, p0, Lvj;->a:Lvh;

    invoke-static {v0}, Lvh;->g(Lvh;)Lvh$b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvj;->a:Lvh;

    invoke-static {v0}, Lvh;->g(Lvh;)Lvh$b;

    move-result-object v0

    invoke-interface {v0}, Lvh$b;->onMemoryGot()V

    :cond_2
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->f()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
