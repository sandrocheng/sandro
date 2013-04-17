.class final Ltd;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lsz;


# direct methods
.method constructor <init>(Lsz;)V
    .locals 0

    iput-object p1, p0, Ltd;->a:Lsz;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Ltd;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-boolean v0, v0, Lsy;->j:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ltd;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->l:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v3, p0, Ltd;->a:Lsz;

    iget-object v3, v3, Lsz;->a:Lsy;

    iget-object v3, v3, Lsy;->l:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    if-nez v1, :cond_1

    iget-object v0, p0, Ltd;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;->startProgressAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

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
