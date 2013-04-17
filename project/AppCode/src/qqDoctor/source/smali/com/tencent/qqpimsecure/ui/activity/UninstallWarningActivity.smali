.class public Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;
.super Landroid/app/Activity;


# instance fields
.field public a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field public b:Lyj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lyj;

    invoke-direct {v0, p0}, Lyj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->b:Lyj;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0b1d

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0b1e

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0b1f

    new-instance v2, Lafl;

    invoke-direct {v2, p0}, Lafl;-><init>(Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0a5f

    new-instance v2, Lafm;

    invoke-direct {v2, p0}, Lafm;-><init>(Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->finish()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->b:Lyj;

    invoke-virtual {v0}, Lyj;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
