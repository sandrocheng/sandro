.class public Lcom/tencent/qqpimsecure/ui/activity/AboutActivity;
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

    new-instance v0, Lamo;

    invoke-direct {v0, p0}, Lamo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
