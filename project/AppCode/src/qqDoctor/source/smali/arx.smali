.class final Larx;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Larw;


# direct methods
.method constructor <init>(Larw;)V
    .locals 0

    iput-object p1, p0, Larx;->a:Larw;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Larx;->a:Larw;

    invoke-static {v0}, Larw;->a(Larw;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0, v2}, Lho;->K(Z)V

    :goto_1
    iget-object v0, p0, Larx;->a:Larw;

    invoke-virtual {v0}, Larw;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0, v2}, Lho;->A(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Larx;->a:Larw;

    invoke-static {v0}, Larw;->b(Larw;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Larx;->a:Larw;

    invoke-static {v0}, Larw;->c(Larw;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Larx;->a:Larw;

    invoke-static {v0}, Larw;->c(Larw;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Larx;->a:Larw;

    invoke-static {v0}, Larw;->c(Larw;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsv;->c:Ljava/lang/String;

    :cond_1
    new-instance v0, Lyj;

    iget-object v1, p0, Larx;->a:Larw;

    invoke-static {v1}, Larw;->d(Larw;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lyj;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Larx;->a:Larw;

    invoke-static {v0}, Larw;->d(Larw;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Larx;->a:Larw;

    invoke-static {v1}, Larw;->b(Larw;)I

    move-result v1

    invoke-static {v0, v1}, Lyj;->a(Landroid/content/Context;I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Larx;->a:Larw;

    invoke-static {v0}, Larw;->a(Larw;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Larx;->a:Larw;

    invoke-static {v0}, Larw;->d(Larw;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Larx;->a:Larw;

    invoke-static {v1}, Larw;->b(Larw;)I

    move-result v1

    iget-object v2, p0, Larx;->a:Larw;

    invoke-static {v2}, Larw;->c(Larw;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/privacy/PrivacyPatternPasswordEnterActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, -0x1

    invoke-static {v3, v1, v4, v2}, La;->a(Landroid/content/Intent;IILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    iget-object v0, p0, Larx;->a:Larw;

    invoke-virtual {v0}, Larw;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
