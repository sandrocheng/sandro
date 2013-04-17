.class final Lbko;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lbkn;


# direct methods
.method constructor <init>(Lbkn;)V
    .locals 0

    iput-object p1, p0, Lbko;->a:Lbkn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v0, 0x64

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->a(Lbkn;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbko;->a:Lbkn;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lbkn;->a(Lbkn;I)I

    iget-object v0, p0, Lbko;->a:Lbkn;

    invoke-static {v0}, Lbkn;->c(Lbkn;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->b(Lbkn;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0475

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->d(Lbkn;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->e(Lbkn;)I

    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->f(Lbkn;)I

    move-result v1

    iget-object v2, p0, Lbko;->a:Lbkn;

    invoke-static {v2}, Lbkn;->g(Lbkn;)I

    move-result v2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lbko;->a:Lbkn;

    iget-object v2, p0, Lbko;->a:Lbkn;

    invoke-static {v2}, Lbkn;->g(Lbkn;)I

    move-result v2

    invoke-static {v1, v2}, Lbkn;->b(Lbkn;I)I

    :cond_2
    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->g(Lbkn;)I

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    int-to-double v0, v0

    iget-object v2, p0, Lbko;->a:Lbkn;

    invoke-static {v2}, Lbkn;->h(Lbkn;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->getProgress()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    int-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->h(Lbkn;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->h(Lbkn;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgress(I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Llb;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llb;

    iget-object v1, v0, Llb;->c:Lmk;

    iget-object v2, p0, Lbko;->a:Lbkn;

    invoke-static {v2, v0}, Lbkn;->a(Lbkn;Llb;)V

    iget v2, v1, Lmk;->read:I

    if-nez v2, :cond_3

    iget-boolean v0, v0, Llb;->a:Z

    if-eqz v0, :cond_3

    iget v0, v1, Lmk;->a:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lbko;->a:Lbkn;

    invoke-static {v0}, Lbkn;->i(Lbkn;)I

    :cond_3
    iget-object v0, p0, Lbko;->a:Lbkn;

    invoke-static {v0}, Lbkn;->j(Lbkn;)I

    move-result v0

    if-ne v0, v6, :cond_0

    invoke-virtual {p0, v7}, Lbko;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lbko;->a:Lbkn;

    invoke-static {v0}, Lbkn;->f(Lbkn;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->g(Lbkn;)I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->h(Lbkn;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgress(I)V

    iget-object v0, p0, Lbko;->a:Lbkn;

    invoke-static {v0}, Lbkn;->k(Lbkn;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Check_Event_CheckDone "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->l(Lbkn;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0, v2}, Lho;->p(I)V

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lov;->a(I)V

    invoke-static {}, Ljo;->a()Ljo;

    move-result-object v0

    iget-object v0, v0, Ljo;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "isshowtip"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lbko;->a:Lbkn;

    invoke-static {v0}, Lbkn;->m(Lbkn;)V

    iget-object v0, p0, Lbko;->a:Lbkn;

    invoke-static {v0}, Lbkn;->n(Lbkn;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lbko;->a:Lbkn;

    invoke-static {v0}, Lbkn;->j(Lbkn;)I

    move-result v0

    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->o(Lbkn;)I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lbko;->a:Lbkn;

    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->b(Lbkn;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0473

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbko;->a:Lbkn;

    invoke-static {v2}, Lbkn;->j(Lbkn;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lbkn;->a(Lbkn;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->p(Lbkn;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbko;->a:Lbkn;

    invoke-static {v0}, Lbkn;->n(Lbkn;)V

    iget-object v0, p0, Lbko;->a:Lbkn;

    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->j(Lbkn;)I

    move-result v1

    invoke-static {v0, v1}, Lbkn;->c(Lbkn;I)I

    :cond_5
    iget-object v0, p0, Lbko;->a:Lbkn;

    invoke-static {v0}, Lbkn;->f(Lbkn;)I

    move-result v0

    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->g(Lbkn;)I

    move-result v1

    if-gt v0, v1, :cond_0

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v7, v0, v1}, Lbko;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lbko;->a:Lbkn;

    invoke-static {v0}, Lbkn;->h(Lbkn;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->getProgress()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lbko;->a:Lbkn;

    invoke-static {v0}, Lbkn;->h(Lbkn;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->getProgress()I

    move-result v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_2
    iget-object v1, p0, Lbko;->a:Lbkn;

    invoke-static {v1}, Lbkn;->h(Lbkn;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgress(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lbko;->a:Lbkn;

    invoke-static {v0}, Lbkn;->h(Lbkn;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->getProgress()I

    move-result v0

    goto :goto_2

    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lbko;->a:Lbkn;

    invoke-static {v0, v6}, Lbkn;->a(Lbkn;Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lbko;->a:Lbkn;

    invoke-static {v0, v2}, Lbkn;->a(Lbkn;Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
