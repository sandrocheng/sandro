.class final Liw;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Liv;


# direct methods
.method constructor <init>(Liv;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Liw;->a:Liv;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Liw;->a:Liv;

    invoke-virtual {v0}, Liv;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Liw;->a:Liv;

    invoke-static {v0}, Liv;->a(Liv;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "network"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v2, p0, Liw;->a:Liv;

    invoke-static {v2}, Liv;->b(Liv;)V

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    :cond_1
    iget-object v0, p0, Liw;->a:Liv;

    invoke-static {v0}, Liv;->c(Liv;)Lcom/tencent/lbsapi/QLBSService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liw;->a:Liv;

    invoke-static {v0}, Liv;->c(Liv;)Lcom/tencent/lbsapi/QLBSService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/lbsapi/QLBSService;->setGpsEnabled(Z)V

    iget-object v0, p0, Liw;->a:Liv;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Liv;->a(Liv;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Liw;->a:Liv;

    invoke-static {v0}, Liv;->c(Liv;)Lcom/tencent/lbsapi/QLBSService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/lbsapi/QLBSService;->startLocation()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
