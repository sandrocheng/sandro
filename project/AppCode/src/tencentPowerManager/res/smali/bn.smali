.class final Lbn;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lbl;


# direct methods
.method constructor <init>(Lbl;)V
    .locals 0

    iput-object p1, p0, Lbn;->a:Lbl;

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
    iget-object v0, p0, Lbn;->a:Lbl;

    invoke-static {v0}, Lbl;->c(Lbl;)Lbo;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbd;

    invoke-virtual {v1, v0}, Lbo;->a(Lbd;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbd;

    iget v1, v0, Lbd;->i:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lbn;->a:Lbl;

    invoke-static {v1}, Lbl;->c(Lbl;)Lbo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbo;->a(Lbd;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbd;

    iget-object v1, p0, Lbn;->a:Lbl;

    invoke-static {v1}, Lbl;->c(Lbl;)Lbo;

    move-result-object v1

    invoke-virtual {v1}, Lbo;->e()V

    invoke-static {v0}, Lbl;->a(Lbd;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbn;->a:Lbl;

    invoke-static {v1}, Lbl;->d(Lbl;)Lfs;

    move-result-object v1

    invoke-static {v0}, Lbl;->a(Lbd;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfs;->a(Ljava/io/File;)V

    :cond_1
    invoke-static {}, Lbl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lbl;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Ljava/lang/Class;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbd;

    iget-object v1, p0, Lbn;->a:Lbl;

    invoke-static {v1}, Lbl;->c(Lbl;)Lbo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbo;->b(Lbd;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lbn;->a:Lbl;

    invoke-static {v0}, Lbl;->c(Lbl;)Lbo;

    move-result-object v0

    invoke-virtual {v0}, Lbo;->e()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
