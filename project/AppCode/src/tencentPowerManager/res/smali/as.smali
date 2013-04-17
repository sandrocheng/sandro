.class final Las;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lar;


# direct methods
.method constructor <init>(Lar;)V
    .locals 0

    iput-object p1, p0, Las;->a:Lar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Las;->a:Lar;

    invoke-static {v0}, Lar;->c(Lar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Las;->a:Lar;

    invoke-static {v0}, Lar;->d(Lar;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, ""

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Las;->a:Lar;

    iget-object v0, v0, Lar;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    iget-object v1, p0, Las;->a:Lar;

    iget-object v2, p0, Las;->a:Lar;

    iget-object v2, v2, Lar;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Le;->a(Landroid/content/Context;Ljava/lang/String;)Lde;

    move-result-object v0

    iput-object v0, v1, Lar;->c:Lde;

    iget-object v0, p0, Las;->a:Lar;

    iget-object v0, v0, Lar;->c:Lde;

    new-instance v1, Lat;

    invoke-direct {v1, p0}, Lat;-><init>(Las;)V

    invoke-virtual {v0, v1}, Lde;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Las;->a:Lar;

    iget-object v0, v0, Lar;->c:Lde;

    invoke-virtual {v0}, Lde;->show()V

    :pswitch_1
    iget-object v0, p0, Las;->a:Lar;

    invoke-static {v0}, Lar;->c(Lar;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Las;->a:Lar;

    iget-object v0, v0, Lar;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Las;->a:Lar;

    invoke-static {v0}, Lar;->c(Lar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Las;->a:Lar;

    iget-object v1, v1, Lar;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lp;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Las;->a:Lar;

    iget-object v0, v0, Lar;->c:Lde;

    if-eqz v0, :cond_0

    iget-object v0, p0, Las;->a:Lar;

    iget-object v0, v0, Lar;->c:Lde;

    invoke-virtual {v0}, Lde;->dismiss()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Las;->a:Lar;

    invoke-static {v0}, Lar;->d(Lar;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Las;->a:Lar;

    iget-object v1, p0, Las;->a:Lar;

    iget-object v1, v1, Lar;->b:Landroid/content/Context;

    iget-object v2, p0, Las;->a:Lar;

    iget-object v2, v2, Lar;->d:Lfx;

    new-instance v3, Law;

    invoke-direct {v3, p0}, Law;-><init>(Las;)V

    invoke-virtual {v0, v1, v2, v3}, Lar;->a(Landroid/content/Context;Lfx;Law;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Las;->a:Lar;

    invoke-static {v0}, Lar;->d(Lar;)I

    move-result v0

    if-lez v0, :cond_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
