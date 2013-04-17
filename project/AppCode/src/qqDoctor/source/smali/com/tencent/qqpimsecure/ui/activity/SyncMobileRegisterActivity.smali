.class public Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;->b:Z

    return v0
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;->b:Z

    return v0
.end method


# virtual methods
.method public getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    new-instance v0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;->finish()V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;->b:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->a(Z)V

    goto :goto_0
.end method
