.class final Lbhg;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lbhc;


# direct methods
.method constructor <init>(Lbhc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbhg;->c:Lbhc;

    iput-object p2, p0, Lbhg;->a:Ljava/lang/String;

    iput-object p3, p0, Lbhg;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbhg;->c:Lbhc;

    invoke-static {v0}, Lbhc;->c(Lbhc;)Lcd;

    move-result-object v0

    iget-object v1, p0, Lbhg;->a:Ljava/lang/String;

    iget-object v2, p0, Lbhg;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcd;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbhg;->c:Lbhc;

    invoke-static {v0}, Lbhc;->e(Lbhc;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lbhg;->c:Lbhc;

    invoke-static {v1}, Lbhc;->f(Lbhc;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lbhg;->c:Lbhc;

    invoke-static {v1}, Lbhc;->g(Lbhc;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x186a1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lbhg;->c:Lbhc;

    invoke-static {v1}, Lbhc;->h(Lbhc;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
