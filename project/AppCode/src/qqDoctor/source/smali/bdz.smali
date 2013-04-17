.class final Lbdz;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lbdr;


# direct methods
.method constructor <init>(Lbdr;)V
    .locals 0

    iput-object p1, p0, Lbdz;->a:Lbdr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbdz;->a:Lbdr;

    invoke-static {v0}, Lbdr;->h(Lbdr;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbdz;->a:Lbdr;

    invoke-static {v0}, Lbdr;->i(Lbdr;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0, v3}, Lho;->z(Z)V

    invoke-virtual {v0, v3}, Lho;->d(Z)V

    invoke-static {v3}, Lxi;->a(Z)V

    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    invoke-virtual {v0}, Ljf;->c()I

    move-result v0

    iget-object v1, p0, Lbdz;->a:Lbdr;

    invoke-static {v1}, Lbdr;->j(Lbdr;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b06fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbdz;->a:Lbdr;

    invoke-static {v1}, Lbdr;->k(Lbdr;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    iget-object v0, p0, Lbdz;->a:Lbdr;

    invoke-static {v0}, Lbdr;->k(Lbdr;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->removeExistedTipsView()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
