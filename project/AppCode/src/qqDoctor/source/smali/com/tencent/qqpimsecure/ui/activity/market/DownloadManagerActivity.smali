.class public Lcom/tencent/qqpimsecure/ui/activity/market/DownloadManagerActivity;
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

    new-instance v0, Lbly;

    invoke-direct {v0, p0}, Lbly;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
