.class final Lbga;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lbfy;


# direct methods
.method constructor <init>(Lbfy;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbga;->b:Lbfy;

    iput-object p2, p0, Lbga;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbga;->b:Lbfy;

    invoke-static {v0}, Lbfy;->d(Lbfy;)Lcd;

    move-result-object v0

    iget-object v1, p0, Lbga;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcd;->a(Ljava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbga;->b:Lbfy;

    invoke-static {v0}, Lbfy;->m(Lbfy;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lbga;->b:Lbfy;

    invoke-static {v1}, Lbfy;->n(Lbfy;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lbga;->b:Lbfy;

    invoke-static {v1}, Lbfy;->o(Lbfy;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x186a1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lbga;->b:Lbfy;

    invoke-static {v1}, Lbfy;->p(Lbfy;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
