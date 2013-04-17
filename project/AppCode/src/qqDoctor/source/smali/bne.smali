.class final Lbne;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lbnd;


# direct methods
.method constructor <init>(Lbnd;)V
    .locals 0

    iput-object p1, p0, Lbne;->a:Lbnd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/high16 v2, 0x42c8

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->a(Lbnd;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->b(Lbnd;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->c(Lbnd;)V

    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->a(Lbnd;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->d(Lbnd;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->e(Lbnd;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->f(Lbnd;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->g(Lbnd;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lbne;->a:Lbnd;

    invoke-static {v0, v2, v3}, La;->a(Landroid/content/Context;ILcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->h(Lbnd;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->i(Lbnd;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->j(Lbnd;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lbne;->a:Lbnd;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lbne;->a:Lbnd;

    invoke-static {v2}, Lbnd;->k(Lbnd;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lbnd;->a(Lbnd;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->l(Lbnd;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->l(Lbnd;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->l(Lbnd;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->l(Lbnd;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->m(Lbnd;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v0

    iget v0, v0, Lkv;->mProgress:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-gtz v0, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Lbne;->a:Lbnd;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lbnd;->a(Lbnd;IZ)V

    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->m(Lbnd;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v0

    iget v0, v0, Lkv;->mProgress:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lbne;->a:Lbnd;

    invoke-static {v2, v0, v1}, Lbnd;->a(Lbnd;IZ)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lbne;->a:Lbnd;

    const/16 v2, 0x64

    invoke-static {v0, v2, v1}, Lbnd;->a(Lbnd;IZ)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->o(Lbnd;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->stopAnimation()V

    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->m(Lbnd;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->o(Lbnd;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->stopAnimation()V

    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->m(Lbnd;)V

    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v0

    iget v0, v0, Lkv;->mErrorCode:I

    const/16 v1, -0x427

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-virtual {v0}, Lbnd;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tencent/tmsecure/utils/WifiUtil;->sRedirectLocation:Ljava/lang/String;

    invoke-static {v0, v1}, La;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getStorageCardSize(Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;)V

    iget-wide v0, v0, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;->a:J

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v0

    const/4 v2, -0x2

    iput v2, v0, Lkv;->mState:I

    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v0

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lkv;->mCurrentSize:J

    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v0

    const/4 v2, 0x0

    iput v2, v0, Lkv;->mProgress:F

    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0, v1, v1}, Lbnd;->a(Lbnd;IZ)V

    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->f(Lbnd;)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lbne;->a:Lbnd;

    invoke-static {v0}, Lbnd;->p(Lbnd;)Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    new-instance v2, Lbnf;

    invoke-direct {v2, p0, p1}, Lbnf;-><init>(Lbne;Landroid/os/Message;)V

    invoke-static {v0, v1, v2}, La;->a(Landroid/content/Context;ILcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
    .end packed-switch
.end method
