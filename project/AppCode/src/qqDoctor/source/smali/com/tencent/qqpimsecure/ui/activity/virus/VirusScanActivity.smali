.class public final Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# instance fields
.field private a:Lbrp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanActivity;->a:Lbrp;

    if-nez v0, :cond_0

    new-instance v0, Lbrp;

    invoke-direct {v0, p0}, Lbrp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanActivity;->a:Lbrp;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanActivity;->a:Lbrp;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanActivity;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanActivity;->a:Lbrp;

    invoke-virtual {v0}, Lbrp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanActivity;->a:Lbrp;

    invoke-virtual {v0}, Lbrp;->b()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanActivity;->setIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onResume()V

    return-void
.end method
