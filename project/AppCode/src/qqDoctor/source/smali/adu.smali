.class public final Ladu;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)V
    .locals 0

    iput-object p1, p0, Ladu;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Ladu;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)[I

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Ladu;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->b(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    move-result-object v0

    iget-object v2, p0, Ladu;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->addSlideLayout(I)Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;

    iget-object v0, p0, Ladu;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)[I

    move-result-object v0

    aget v0, v0, v1

    sget-object v2, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->a:[I

    sget-object v3, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->a:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Ladu;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    iget-object v0, p0, Ladu;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->c(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v3, 0x7f0801ce

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Ladu;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->e(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v2, Ladv;

    invoke-direct {v2, p0}, Ladv;-><init>(Ladu;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Ladu;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->c(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v0, p0, Ladu;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Ladu;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->f(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ladu;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->g(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Ladu;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->h(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Ladu;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->h(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
