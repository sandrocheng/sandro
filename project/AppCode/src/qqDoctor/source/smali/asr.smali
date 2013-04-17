.class final Lasr;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lasq;


# direct methods
.method constructor <init>(Lasq;)V
    .locals 0

    iput-object p1, p0, Lasr;->a:Lasq;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lasr;->a:Lasq;

    invoke-static {v1}, Lasq;->a(Lasq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lasr;->a:Lasq;

    invoke-static {v0}, Lasq;->b(Lasq;)Lajg;

    move-result-object v0

    invoke-virtual {v0}, Lajg;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1-Size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lasr;->a:Lasq;

    invoke-static {v1}, Lasq;->a(Lasq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lasr;->a:Lasq;

    invoke-static {v0}, Lasq;->c(Lasq;)Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lasr;->a:Lasq;

    invoke-static {v1}, Lasq;->a(Lasq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "2-Size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lasr;->a:Lasq;

    invoke-static {v1}, Lasq;->a(Lasq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lasr;->a:Lasq;

    invoke-static {v0}, Lasq;->b(Lasq;)Lajg;

    move-result-object v0

    invoke-virtual {v0}, Lajg;->a()V

    iget-object v0, p0, Lasr;->a:Lasq;

    invoke-static {v0}, Lasq;->d(Lasq;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
