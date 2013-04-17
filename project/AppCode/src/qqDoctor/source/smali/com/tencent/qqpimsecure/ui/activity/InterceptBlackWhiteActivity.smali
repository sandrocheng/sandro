.class public Lcom/tencent/qqpimsecure/ui/activity/InterceptBlackWhiteActivity;
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
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/InterceptBlackWhiteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CONTACT_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Latz;

    invoke-direct {v1, p0, v0}, Latz;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/InterceptBlackWhiteActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/InterceptBlackWhiteActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-object v0
.end method
