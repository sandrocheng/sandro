.class final Lbrq;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lbrp;


# direct methods
.method constructor <init>(Lbrp;)V
    .locals 0

    iput-object p1, p0, Lbrq;->a:Lbrp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v1, 0x0

    const/16 v0, 0x64

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lbrq;->a:Lbrp;

    invoke-static {v1}, Lbrp;->a(Lbrp;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-le v2, v0, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    goto :goto_1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ltz v1, :cond_3

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ltz v1, :cond_0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lbrq;->a:Lbrp;

    invoke-static {v0}, Lbrp;->c(Lbrp;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lbrq;->a:Lbrp;

    invoke-static {v1}, Lbrp;->b(Lbrp;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x5

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lbrq;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lbrq;->a:Lbrp;

    invoke-static {v0}, Lbrp;->d(Lbrp;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lbrq;->a:Lbrp;

    invoke-static {v0}, Lbrp;->e(Lbrp;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lbrq;->a:Lbrp;

    invoke-static {v0}, Lbrp;->f(Lbrp;)V

    iget-object v0, p0, Lbrq;->a:Lbrp;

    invoke-static {v0}, Lbrp;->g(Lbrp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbrq;->a:Lbrp;

    iget-object v1, p0, Lbrq;->a:Lbrp;

    invoke-static {v1}, Lbrp;->h(Lbrp;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbrq;->a:Lbrp;

    invoke-static {v2}, Lbrp;->i(Lbrp;)LQQPIM/VirusUpdateInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbrp;->a(Lbrp;Landroid/content/Context;LQQPIM/VirusUpdateInfo;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg_virus_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lbrq;->a:Lbrp;

    invoke-static {v1, v0}, Lbrp;->a(Lbrp;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lbrq;->a:Lbrp;

    invoke-static {v0}, Lbrp;->j(Lbrp;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lbrq;->a:Lbrp;

    invoke-static {v0}, Lbrp;->k(Lbrp;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    iget-object v0, p0, Lbrq;->a:Lbrp;

    const-string v0, "SAVE_ICON"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lbrp;->a(I)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v1, p0, Lbrq;->a:Lbrp;

    invoke-static {v1}, Lbrp;->l(Lbrp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_3
    iget-object v0, p0, Lbrq;->a:Lbrp;

    invoke-static {v0}, Lbrp;->m(Lbrp;)Ljava/util/List;

    move-result-object v6

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;

    const/4 v1, 0x0

    const-string v3, "MESSAGE"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "COLOR"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v7, "COUNT"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;II)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbrq;->a:Lbrp;

    invoke-static {v0}, Lbrp;->n(Lbrp;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    move-result-object v0

    iget-object v1, p0, Lbrq;->a:Lbrp;

    invoke-static {v1}, Lbrp;->m(Lbrp;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbrq;->a:Lbrp;

    invoke-static {v0}, Lbrp;->n(Lbrp;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_4
    move-object v2, v1

    goto :goto_3

    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    iget-object v0, p0, Lbrq;->a:Lbrp;

    invoke-static {v0}, Lbrp;->m(Lbrp;)Ljava/util/List;

    move-result-object v7

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    const-string v3, "MESSAGE_DRAWABLE_TYPE"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "MESSAGE_DRAWABLE_VALUE"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MESSAGE"

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "SAVE_ICON"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;-><init>(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbrq;->a:Lbrp;

    invoke-static {v0}, Lbrp;->n(Lbrp;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    move-result-object v0

    iget-object v1, p0, Lbrq;->a:Lbrp;

    invoke-static {v1}, Lbrp;->m(Lbrp;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbrq;->a:Lbrp;

    invoke-static {v0}, Lbrp;->n(Lbrp;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
