.class public Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManagerActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# instance fields
.field private a:Lazj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManagerActivity;->a:Lazj;

    if-nez v0, :cond_0

    new-instance v0, Lazj;

    invoke-direct {v0, p0}, Lazj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManagerActivity;->a:Lazj;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManagerActivity;->a:Lazj;

    return-object v0
.end method
