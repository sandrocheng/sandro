.class public Lcom/tencent/qqpimsecure/ui/activity/InterceptCenterActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private b:Lso;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    new-instance v0, Lawg;

    invoke-direct {v0, p0}, Lawg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/InterceptCenterActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/InterceptCenterActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lso;->a()Lso;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/InterceptCenterActivity;->b:Lso;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/InterceptCenterActivity;->b:Lso;

    invoke-virtual {v0}, Lso;->b()V

    return-void
.end method
