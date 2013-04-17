.class public Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareSearchActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    new-instance v0, Layp;

    invoke-direct {v0, p0}, Layp;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareSearchActivity;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    check-cast v0, Layp;

    invoke-virtual {v0}, Layp;->j()V

    return-void
.end method
