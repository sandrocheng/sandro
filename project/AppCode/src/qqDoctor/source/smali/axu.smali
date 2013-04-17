.class final Laxu;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Laxj;


# direct methods
.method constructor <init>(Laxj;)V
    .locals 0

    iput-object p1, p0, Laxu;->a:Laxj;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Laxu;->a:Laxj;

    invoke-static {v0}, Laxj;->z(Laxj;)Lajr;

    move-result-object v0

    iget-object v1, p0, Laxu;->a:Laxj;

    invoke-static {v1}, Laxj;->y(Laxj;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajr;->a(Ljava/util/Map;)V

    iget-object v0, p0, Laxu;->a:Laxj;

    invoke-static {v0}, Laxj;->z(Laxj;)Lajr;

    move-result-object v0

    invoke-virtual {v0}, Lajr;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Laxu;->a:Laxj;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Laxj;->a(Laxj;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Laxu;->a:Laxj;

    invoke-static {v0}, Laxj;->A(Laxj;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Laxu;->a:Laxj;

    invoke-static {v0}, Laxj;->b(Laxj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laxu;->a:Laxj;

    invoke-static {v0}, Laxj;->y(Laxj;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Laxu;->a:Laxj;

    invoke-static {v0}, Laxj;->z(Laxj;)Lajr;

    move-result-object v0

    invoke-virtual {v0}, Lajr;->notifyDataSetChanged()V

    iget-object v0, p0, Laxu;->a:Laxj;

    invoke-static {v0}, Laxj;->B(Laxj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laxu;->a:Laxj;

    invoke-virtual {v0}, Laxj;->f()Lala;

    move-result-object v0

    iget-object v1, p0, Laxu;->a:Laxj;

    invoke-virtual {v1}, Laxj;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lala;->setDataList(Ljava/util/List;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Laxu;->a:Laxj;

    invoke-static {v0}, Laxj;->C(Laxj;)Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Laxu;->a:Laxj;

    invoke-static {v0}, Laxj;->D(Laxj;)Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Laxu;->a:Laxj;

    invoke-static {v0}, Laxj;->C(Laxj;)Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Laxu;->a:Laxj;

    invoke-static {v0}, Laxj;->C(Laxj;)Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->startRotationAnimation()V

    iget-object v0, p0, Laxu;->a:Laxj;

    invoke-static {v0}, Laxj;->D(Laxj;)Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Laxu;->a:Laxj;

    invoke-static {v0}, Laxj;->D(Laxj;)Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->startRotationAnimation()V

    iget-object v0, p0, Laxu;->a:Laxj;

    invoke-static {v0}, Laxj;->E(Laxj;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
