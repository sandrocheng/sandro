.class final Lbqo;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lbqb;


# direct methods
.method constructor <init>(Lbqb;)V
    .locals 0

    iput-object p1, p0, Lbqo;->a:Lbqb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const/16 v9, 0x28

    const v2, 0x7f020193

    const/16 v8, 0x64

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->t(Lbqb;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    move-result-object v0

    iget-object v1, p0, Lbqo;->a:Lbqb;

    invoke-static {v1}, Lbqb;->m(Lbqb;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->t(Lbqb;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->u(Lbqb;)I

    move-result v0

    if-ge v0, v8, :cond_2

    iget-object v0, p0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->i(Lbqb;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v0

    iget-object v1, p0, Lbqo;->a:Lbqb;

    invoke-static {v1}, Lbqb;->u(Lbqb;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    :goto_1
    iget-object v0, p0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->B(Lbqb;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->m(Lbqb;)Ljava/util/List;

    move-result-object v6

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;

    const v3, 0x7f0b0963

    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;-><init>(IIIJ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbqo;->a:Lbqb;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lbqb;->a(Lbqb;I)I

    iget-object v0, p0, Lbqo;->a:Lbqb;

    invoke-static {v0, v1}, Lbqb;->b(Lbqb;I)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkw;

    iget-object v1, p0, Lbqo;->a:Lbqb;

    invoke-static {v1}, Lbqb;->m(Lbqb;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;

    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lbqo;->a:Lbqb;

    invoke-static {v4}, Lbqb;->n(Lbqb;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b095b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v7, v3, v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbqo;->a:Lbqb;

    iget v1, p1, Landroid/os/Message;->arg1:I

    mul-int/lit8 v1, v1, 0x28

    iget-object v2, p0, Lbqo;->a:Lbqb;

    invoke-static {v2}, Lbqb;->o(Lbqb;)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Lbqb;->b(Lbqb;I)I

    iget-object v0, p0, Lbqo;->a:Lbqb;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lbqb;->c(Lbqb;I)I

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lbqo;->a:Lbqb;

    invoke-static {v0, v9}, Lbqb;->b(Lbqb;I)I

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->m(Lbqb;)Ljava/util/List;

    move-result-object v6

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;

    const v3, 0x7f0b0967

    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;-><init>(IIIJ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbqo;->a:Lbqb;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lbqb;->a(Lbqb;I)I

    iget-object v0, p0, Lbqo;->a:Lbqb;

    invoke-static {v0, v9}, Lbqb;->b(Lbqb;I)I

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkw;

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lbqo;->a:Lbqb;

    invoke-static {v1}, Lbqb;->p(Lbqb;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b095c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lbqo;->a:Lbqb;

    invoke-static {v2}, Lbqb;->m(Lbqb;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;

    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v7, v4, v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbqo;->a:Lbqb;

    iget v1, p1, Landroid/os/Message;->arg1:I

    mul-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Lbqo;->a:Lbqb;

    invoke-static {v2}, Lbqb;->o(Lbqb;)I

    move-result v2

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x28

    invoke-static {v0, v1}, Lbqb;->b(Lbqb;I)I

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->r(Lbqb;)I

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lbqo;->a:Lbqb;

    invoke-static {v1}, Lbqb;->q(Lbqb;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b095d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_6
    iget-object v0, p0, Lbqo;->a:Lbqb;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lbqb;->b(Lbqb;I)I

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->m(Lbqb;)Ljava/util/List;

    move-result-object v6

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;

    const v3, 0x7f0b02a2

    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;-><init>(IIIJ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbqo;->a:Lbqb;

    const/16 v1, 0x62

    invoke-static {v0, v1}, Lbqb;->b(Lbqb;I)I

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkw;

    iget-object v1, p0, Lbqo;->a:Lbqb;

    invoke-static {v1}, Lbqb;->m(Lbqb;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;

    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lbqo;->a:Lbqb;

    invoke-static {v5}, Lbqb;->s(Lbqb;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b095f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v7, v3, v4, v5}, Lcom/tencent/qqpimsecure/uilib/model/ResultModel;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbqo;->a:Lbqb;

    invoke-virtual {v0}, Lkw;->I()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lbqb;->a(Lbqb;J)J

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lbqo;->a:Lbqb;

    invoke-static {v0, v8}, Lbqb;->b(Lbqb;I)I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lbqo;->a:Lbqb;

    invoke-static {v0}, Lbqb;->i(Lbqb;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v0

    new-instance v1, Lbqp;

    invoke-direct {v1, p0}, Lbqp;-><init>(Lbqo;)V

    invoke-virtual {v0, v8, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(ILcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
