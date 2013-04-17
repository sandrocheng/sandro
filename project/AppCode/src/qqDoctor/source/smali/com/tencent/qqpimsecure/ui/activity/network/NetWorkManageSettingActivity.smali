.class public Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManageSettingActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# static fields
.field public static a:Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManageSettingActivity;


# instance fields
.field private b:Lazu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManageSettingActivity;->b:Lazu;

    if-nez v0, :cond_0

    new-instance v0, Lazu;

    invoke-direct {v0, p0}, Lazu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManageSettingActivity;->b:Lazu;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManageSettingActivity;->b:Lazu;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManageSettingActivity;->a:Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManageSettingActivity;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onDestroy()V

    return-void
.end method
