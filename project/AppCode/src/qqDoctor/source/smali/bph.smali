.class final Lbph;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lbot;


# direct methods
.method constructor <init>(Lbot;I)V
    .locals 0

    iput-object p1, p0, Lbph;->b:Lbot;

    iput p2, p0, Lbph;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lbph;->b:Lbot;

    invoke-static {v0}, Lbot;->A(Lbot;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lbph;->b:Lbot;

    invoke-static {v0}, Lbot;->x(Lbot;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x7d1

    iget v3, p0, Lbph;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lbph;->b:Lbot;

    invoke-static {v2}, Lbot;->x(Lbot;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    if-nez v1, :cond_1

    iget-object v0, p0, Lbph;->b:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;->startProgressAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
