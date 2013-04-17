.class public Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofSettingActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "QQ_ANTITHEFT_SYS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lbfg;

    invoke-direct {v0, p0}, Lbfg;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbfa;

    invoke-direct {v0, p0}, Lbfa;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
