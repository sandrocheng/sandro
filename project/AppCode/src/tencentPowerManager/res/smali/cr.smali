.class public final Lcr;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcr;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcr;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->a(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcr;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->b(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/view/BaseTabView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->c()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->d()V

    goto :goto_0
.end method
