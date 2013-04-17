.class public Lcom/tencent/qqpimsecure/ui/activity/BatchOperateActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 4

    new-instance v0, Lamp;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/BatchOperateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "OPERATE_KEY"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lamp;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
