.class public Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;->a:I

    return-void
.end method


# virtual methods
.method public getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "JOB_KEY"

    const/16 v2, -0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;->a:I

    new-instance v0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    iget v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;->a:I

    invoke-direct {v0, p0, p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;Landroid/content/Context;I)V

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;->a:I

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "JOB_KEY"

    iget v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
