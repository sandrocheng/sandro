.class public Lcom/tencent/qqpimsecure/ui/activity/NotificationAdblockSettingActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    new-instance v0, Lbbw;

    invoke-direct {v0, p0}, Lbbw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/NotificationAdblockSettingActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/NotificationAdblockSettingActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-object v0
.end method