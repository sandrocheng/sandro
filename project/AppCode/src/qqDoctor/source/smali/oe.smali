.class final Loe;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmp;

    iget-object v1, v0, Lmp;->i:Labu$a;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lmp;->i:Labu$a;

    invoke-interface {v1, v0}, Labu$a;->onTaskFinish(Lmp;)V

    :cond_0
    return-void
.end method
