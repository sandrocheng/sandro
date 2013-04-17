.class final Lpf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/update/IUpdateListener;


# instance fields
.field private synthetic a:Lpe;


# direct methods
.method constructor <init>(Lpe;)V
    .locals 0

    iput-object p1, p0, Lpf;->a:Lpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V
    .locals 2

    iget-object v0, p0, Lpf;->a:Lpe;

    iget-object v0, v0, Lpe;->j:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lpf;->a:Lpe;

    iget-object v1, v1, Lpe;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onUpdateCanceled()V
    .locals 2

    iget-object v0, p0, Lpf;->a:Lpe;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lpe;->b(Lpe;I)I

    return-void
.end method

.method public final onUpdateEvent(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V
    .locals 4

    const/4 v2, 0x3

    iget-object v0, p0, Lpf;->a:Lpe;

    invoke-static {v0, p2}, Lpe;->a(Lpe;I)I

    invoke-static {p2}, La;->b(I)Lfc;

    move-result-object v0

    sget-object v1, Lfc;->a:Lfc;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lpf;->a:Lpe;

    iget-object v0, v0, Lpe;->j:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    :goto_0
    iget-object v1, p0, Lpf;->a:Lpe;

    iget-object v1, v1, Lpe;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    sget-object v1, Lfc;->b:Lfc;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lpf;->a:Lpe;

    iget-object v0, v0, Lpe;->j:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lpf;->a:Lpe;

    iget-object v1, v1, Lpe;->b:Landroid/content/Context;

    const v2, 0x7f0b03fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lpf;->a:Lpe;

    iget-object v0, v0, Lpe;->j:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpf;->a:Lpe;

    iget-object v2, v2, Lpe;->b:Landroid/content/Context;

    const v3, 0x7f0b03fb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lpf;->a:Lpe;

    iget-object v2, v2, Lpe;->b:Landroid/content/Context;

    const v3, 0x7f0b03fd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lpf;->a:Lpe;

    iget-object v2, v2, Lpe;->b:Landroid/content/Context;

    const v3, 0x7f0b03fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final onUpdateFinished()V
    .locals 4

    iget-object v0, p0, Lpf;->a:Lpe;

    iget-object v1, p0, Lpf;->a:Lpe;

    invoke-virtual {v1}, Lpe;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lpe;->b(I)V

    iget-object v0, p0, Lpf;->a:Lpe;

    iget-object v0, v0, Lpe;->j:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lpf;->a:Lpe;

    invoke-static {v0}, Lpe;->a(Lpe;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpf;->a:Lpe;

    iget-object v0, v0, Lpe;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpf;->a:Lpe;

    iget-object v2, v2, Lpe;->b:Landroid/content/Context;

    const v3, 0x7f0b03fb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lpf;->a:Lpe;

    iget-object v2, v2, Lpe;->b:Landroid/content/Context;

    const v3, 0x7f0b03fc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lpf;->a:Lpe;

    iget-object v1, v1, Lpe;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lpf;->a:Lpe;

    invoke-virtual {v0}, Lpe;->d()V

    return-void
.end method

.method public final onUpdateStarted()V
    .locals 2

    iget-object v0, p0, Lpf;->a:Lpe;

    iget-object v0, v0, Lpe;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lpf;->a:Lpe;

    iget-object v1, v1, Lpe;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
