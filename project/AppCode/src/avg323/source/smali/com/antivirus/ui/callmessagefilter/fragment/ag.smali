.class Lcom/antivirus/ui/callmessagefilter/fragment/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/antivirus/ui/callmessagefilter/v;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/fragment/v;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ag;->a:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/antivirus/ui/callmessagefilter/a/d;Lcom/antivirus/ui/callmessagefilter/b/b;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Lcom/antivirus/ui/callmessagefilter/a/d;Lcom/antivirus/ui/callmessagefilter/d;)V
    .locals 0

    check-cast p2, Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/ag;->a(Lcom/antivirus/ui/callmessagefilter/a/d;Lcom/antivirus/ui/callmessagefilter/b/b;)V

    return-void
.end method

.method public a(Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/b/b;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/b/d;->c:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {p1, v0}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ag;->a:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ag;->a:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    invoke-virtual {v1}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v1

    const v2, 0x7f090208

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/antivirus/ui/callmessagefilter/b/b;->d()Lcom/antivirus/ui/callmessagefilter/x;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/fragment/ae;->b:[I

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/b/d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ag;->a:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ag;->a:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    iget-object v0, v0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->b:Lcom/antivirus/ui/callmessagefilter/w;

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/ah;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/ah;->a()I

    move-result v0

    invoke-virtual {v1, v0, v3}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(IZ)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2, p1}, Lcom/antivirus/ui/callmessagefilter/b/b;->a(Lcom/antivirus/ui/callmessagefilter/x;)V

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ag;->a:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    invoke-static {v1, p2, v3}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Lcom/antivirus/ui/callmessagefilter/fragment/v;Lcom/antivirus/ui/callmessagefilter/b/b;Z)V

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ag;->a:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    invoke-virtual {p2}, Lcom/antivirus/ui/callmessagefilter/b/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, p1, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Lcom/antivirus/ui/callmessagefilter/fragment/v;Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/b/d;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic a(Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/d;)V
    .locals 0

    check-cast p2, Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/ag;->a(Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/b/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/b/b;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/d;)V
    .locals 0

    check-cast p2, Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/ag;->a(Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/b/b;)V

    return-void
.end method
