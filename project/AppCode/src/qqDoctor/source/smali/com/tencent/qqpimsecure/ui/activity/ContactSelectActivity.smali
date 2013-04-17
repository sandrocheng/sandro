.class public Lcom/tencent/qqpimsecure/ui/activity/ContactSelectActivity;
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
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/ContactSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "from"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v1, v3, :cond_0

    if-eq v0, v3, :cond_0

    new-instance v2, Lani;

    invoke-direct {v2, p0, v1, v0}, Lani;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/ContactSelectActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/ContactSelectActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-object v0
.end method

.method public isNeedActivityWrapper()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
