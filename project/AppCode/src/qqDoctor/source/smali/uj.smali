.class final Luj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private synthetic a:Lui;


# direct methods
.method constructor <init>(Lui;)V
    .locals 0

    iput-object p1, p0, Luj;->a:Lui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Luj;->a:Lui;

    iget-object v0, v0, Lui;->c:Ljava/lang/Thread;

    if-nez v0, :cond_0

    iget-object v0, p0, Luj;->a:Lui;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lui$a;

    iget-object v3, p0, Luj;->a:Lui;

    invoke-direct {v2, v3}, Lui$a;-><init>(Lui;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lui;->c:Ljava/lang/Thread;

    iget-object v0, p0, Luj;->a:Lui;

    iget-object v0, v0, Lui;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
