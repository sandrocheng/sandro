.class public abstract Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/ui/activity/IBaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public isNeedActivityWrapper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;->isNeedActivityWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpc;->b()Lpc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpc;->a(Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;->isNeedActivityWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpc;->b()Lpc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpc;->b(Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;->isNeedActivityWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpc;->b()Lpc;

    move-result-object v0

    invoke-virtual {v0}, Lpc;->c()V

    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;->isNeedActivityWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpc;->b()Lpc;

    move-result-object v0

    invoke-virtual {v0}, Lpc;->d()V

    :cond_0
    return-void
.end method
