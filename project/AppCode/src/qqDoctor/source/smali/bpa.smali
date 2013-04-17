.class final Lbpa;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lbot;


# direct methods
.method constructor <init>(Lbot;)V
    .locals 0

    iput-object p1, p0, Lbpa;->a:Lbot;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v1, v0, :cond_1

    const/16 v1, 0x3ea

    if-ne v1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;

    iget-object v1, p0, Lbpa;->a:Lbot;

    invoke-static {v1}, Lbot;->k(Lbot;)Lcf;

    move-result-object v1

    invoke-interface {v1}, Lcf;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    iget-object v1, p0, Lbpa;->a:Lbot;

    invoke-static {v1}, Lbot;->l(Lbot;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;

    iget-object v1, p0, Lbpa;->a:Lbot;

    invoke-static {v1}, Lbot;->k(Lbot;)Lcf;

    move-result-object v1

    invoke-interface {v1}, Lcf;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    iget-object v1, p0, Lbpa;->a:Lbot;

    invoke-static {v1}, Lbot;->m(Lbot;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->n(Lbot;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->o(Lbot;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->p(Lbot;)V

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->q(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_3
    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->r(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->r(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->r(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lbpa;->a:Lbot;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbot;->a(Lbot;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_4
    iget-object v1, p0, Lbpa;->a:Lbot;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lbot;->a(Lbot;I)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->q(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_5
    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->r(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->r(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->r(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lbpa;->a:Lbot;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbot;->a(Lbot;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcf$a;

    sget-object v1, Lcf$a;->c:Lcf$a;

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lbpa;->a:Lbot;

    invoke-static {v1}, Lbot;->s(Lbot;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b012d

    invoke-static {v1, v2}, Lha;->a(Landroid/content/Context;I)V

    :cond_7
    sget-object v1, Lcf$a;->b:Lcf$a;

    if-ne v0, v1, :cond_8

    iget-object v1, p0, Lbpa;->a:Lbot;

    invoke-static {v1}, Lbot;->t(Lbot;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b012e

    invoke-static {v1, v2}, Lha;->a(Landroid/content/Context;I)V

    :cond_8
    sget-object v1, Lcf$a;->d:Lcf$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->u(Lbot;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b012f

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->q(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_9
    iget-object v0, p0, Lbpa;->a:Lbot;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lbot;->a(Lbot;II)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lbpa;->a:Lbot;

    invoke-static {v0}, Lbot;->q(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_a
    iget-object v0, p0, Lbpa;->a:Lbot;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lbot;->b(Lbot;II)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_1
        0x7d4 -> :sswitch_3
        0x7d5 -> :sswitch_4
        0x2019 -> :sswitch_5
        0x201a -> :sswitch_6
    .end sparse-switch
.end method
