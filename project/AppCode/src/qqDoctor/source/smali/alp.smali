.class final Lalp;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lall;


# direct methods
.method constructor <init>(Lall;)V
    .locals 0

    iput-object p1, p0, Lalp;->a:Lall;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->P()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lkw;->P()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lalp;->a:Lall;

    invoke-static {v1}, Lall;->c(Lall;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lalp;->a:Lall;

    invoke-static {v2}, Lall;->d(Lall;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0895

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lkw;->P()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lalp;->a:Lall;

    invoke-static {v0}, Lall;->e(Lall;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lalp;->a:Lall;

    invoke-static {v0}, Lall;->e(Lall;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->UpdateInfoBarMemoryAndRam()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
