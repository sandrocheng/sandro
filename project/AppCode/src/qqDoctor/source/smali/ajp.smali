.class final Lajp;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lajo;


# direct methods
.method constructor <init>(Lajo;)V
    .locals 0

    iput-object p1, p0, Lajp;->a:Lajo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lajp;->a:Lajo;

    invoke-virtual {v0}, Lajo;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    iget-object v0, p0, Lajp;->a:Lajo;

    invoke-static {v0}, Lajo;->a(Lajo;)I

    move-result v0

    iget-object v1, p0, Lajp;->a:Lajo;

    invoke-static {v1}, Lajo;->b(Lajo;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lajp;->a:Lajo;

    invoke-static {v0}, Lajo;->c(Lajo;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lajp;->a:Lajo;

    iget-object v2, p0, Lajp;->a:Lajo;

    invoke-static {v2}, Lajo;->d(Lajo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llr;

    invoke-static {v1, v0}, Lajo;->a(Lajo;Llr;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lajp;->a:Lajo;

    invoke-static {v0}, Lajo;->a(Lajo;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lajp;->a:Lajo;

    invoke-static {v0}, Lajo;->e(Lajo;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
