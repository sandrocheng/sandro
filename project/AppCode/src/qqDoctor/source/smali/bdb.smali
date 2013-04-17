.class final Lbdb;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lbcz;


# direct methods
.method constructor <init>(Lbcz;)V
    .locals 0

    iput-object p1, p0, Lbdb;->a:Lbcz;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbdb;->a:Lbcz;

    invoke-static {v0}, Lbcz;->c(Lbcz;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbdb;->a:Lbcz;

    invoke-static {v0}, Lbcz;->d(Lbcz;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0, v2}, Lho;->z(Z)V

    invoke-virtual {v0, v2}, Lho;->d(Z)V

    invoke-static {v2}, Lxi;->a(Z)V

    iget-object v0, p0, Lbdb;->a:Lbcz;

    invoke-virtual {v0}, Lbcz;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbdb;->a:Lbcz;

    invoke-static {v1}, Lbcz;->e(Lbcz;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    iget-object v0, p0, Lbdb;->a:Lbcz;

    invoke-virtual {v0}, Lbcz;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->removeExistedTipsView()V

    iget-object v0, p0, Lbdb;->a:Lbcz;

    invoke-virtual {v0}, Lbcz;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lakh;

    invoke-virtual {v0, v2}, Lakh;->a(Z)V

    iget-object v0, p0, Lbdb;->a:Lbcz;

    invoke-virtual {v0}, Lbcz;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
