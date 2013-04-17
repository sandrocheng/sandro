.class final Laub;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:I

.field private synthetic b:Latz;


# direct methods
.method constructor <init>(Latz;I)V
    .locals 0

    iput-object p1, p0, Laub;->b:Latz;

    iput p2, p0, Laub;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/16 v4, 0x3ed

    sget-object v0, Lcf$a;->d:Lcf$a;

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    iget v2, p0, Laub;->a:I

    if-ne v4, v2, :cond_2

    iget-object v0, p0, Laub;->b:Latz;

    invoke-static {v0}, Latz;->s(Latz;)Lcf;

    move-result-object v0

    invoke-interface {v0}, Lcf;->e()Lcf$a;

    move-result-object v0

    const/16 v2, 0x65f0

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Laub;->b:Latz;

    invoke-static {v1}, Latz;->v(Latz;)Z

    sget-object v1, Lcf$a;->a:Lcf$a;

    if-ne v0, v1, :cond_3

    iget v0, p0, Laub;->a:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Laub;->b:Latz;

    invoke-static {v0}, Latz;->p(Latz;)Lho;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lho;->b(J)V

    :cond_1
    iget-object v0, p0, Laub;->b:Latz;

    invoke-static {v0}, Latz;->A(Latz;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbba

    iget v2, p0, Laub;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laub;->b:Latz;

    invoke-static {v1}, Latz;->B(Latz;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :cond_2
    const/16 v2, 0x3ee

    iget v3, p0, Laub;->a:I

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Laub;->b:Latz;

    invoke-static {v0}, Latz;->s(Latz;)Lcf;

    move-result-object v0

    invoke-interface {v0}, Lcf;->b()Lcf$a;

    move-result-object v0

    const/16 v2, 0x65f1

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Laub;->b:Latz;

    invoke-static {v1}, Latz;->C(Latz;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xbbb

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laub;->b:Latz;

    invoke-static {v1}, Latz;->D(Latz;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
