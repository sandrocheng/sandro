.class public Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;
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
    .locals 4

    new-instance v0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "bind_qq"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method
