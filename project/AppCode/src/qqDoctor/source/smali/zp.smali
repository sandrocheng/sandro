.class final Lzp;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lzo;


# direct methods
.method constructor <init>(Lzo;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lzp;->a:Lzo;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lzp;->a:Lzo;

    invoke-static {v0}, Lzo;->a(Lzo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzp;->a:Lzo;

    invoke-static {v0}, Lzo;->b(Lzo;)Ldw;

    move-result-object v0

    invoke-virtual {v0}, Ldw;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzo$a;

    invoke-interface {v0}, Lzo$a;->RunningProcessListChange()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method