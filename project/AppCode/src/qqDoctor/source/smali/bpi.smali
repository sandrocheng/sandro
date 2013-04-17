.class final Lbpi;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lbot;


# direct methods
.method constructor <init>(Lbot;I)V
    .locals 0

    iput-object p1, p0, Lbpi;->b:Lbot;

    iput p2, p0, Lbpi;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/16 v3, 0x3ea

    const/16 v2, 0x3e9

    iget v0, p0, Lbpi;->a:I

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lbpi;->b:Lbot;

    invoke-static {v0}, Lbot;->k(Lbot;)Lcf;

    move-result-object v0

    invoke-interface {v0}, Lcf;->e()Lcf$a;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lbpi;->b:Lbot;

    invoke-static {v1}, Lbot;->z(Lbot;)Z

    sget-object v1, Lcf$a;->a:Lcf$a;

    if-ne v0, v1, :cond_5

    invoke-static {}, Ldi;->a()Z

    iget v0, p0, Lbpi;->a:I

    if-eq v2, v0, :cond_0

    iget v0, p0, Lbpi;->a:I

    if-ne v3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lbpi;->b:Lbot;

    invoke-static {v0}, Lbot;->B(Lbot;)Lho;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lho;->l(J)V

    iget-object v0, p0, Lbpi;->b:Lbot;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbot;->a(Lbot;Lco;)Lco;

    :cond_1
    iget-object v0, p0, Lbpi;->b:Lbot;

    invoke-static {v0}, Lbot;->C(Lbot;)Z

    iget-object v0, p0, Lbpi;->b:Lbot;

    invoke-static {v0}, Lbot;->x(Lbot;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d4

    iget v2, p0, Lbpi;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lbpi;->b:Lbot;

    invoke-static {v1}, Lbot;->x(Lbot;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lbpi;->a:I

    if-ne v3, v0, :cond_3

    iget-object v0, p0, Lbpi;->b:Lbot;

    invoke-static {v0}, Lbot;->k(Lbot;)Lcf;

    move-result-object v0

    invoke-interface {v0}, Lcf;->d()Lcf$a;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x3eb

    iget v1, p0, Lbpi;->a:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lbpi;->b:Lbot;

    invoke-static {v0}, Lbot;->k(Lbot;)Lcf;

    move-result-object v0

    invoke-interface {v0}, Lcf;->c()Lcf$a;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lbpi;->b:Lbot;

    invoke-static {v0}, Lbot;->k(Lbot;)Lcf;

    move-result-object v0

    invoke-interface {v0}, Lcf;->b()Lcf$a;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lbpi;->b:Lbot;

    invoke-static {v1}, Lbot;->x(Lbot;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lbpi;->b:Lbot;

    invoke-static {v1}, Lbot;->x(Lbot;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
