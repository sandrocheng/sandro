.class public Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    new-instance v0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity;Landroid/content/Context;)V

    return-object v0
.end method