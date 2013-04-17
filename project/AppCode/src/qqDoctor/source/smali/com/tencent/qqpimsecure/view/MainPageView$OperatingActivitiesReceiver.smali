.class public Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/view/MainPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OperatingActivitiesReceiver"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/view/MainPageView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/MainPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;->getResultCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/MainPageView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/view/MainPageView;->j(Lcom/tencent/qqpimsecure/view/MainPageView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonPopStyle(Ljava/util/List;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/view/MainPageView;->h(Lcom/tencent/qqpimsecure/view/MainPageView;)Lwq;

    move-result-object v1

    invoke-virtual {v1}, Lwq;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/view/MainPageView;->i(Lcom/tencent/qqpimsecure/view/MainPageView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/view/MainPageView;->b(Lcom/tencent/qqpimsecure/view/MainPageView;)Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->aQ()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const v1, 0x7f020257

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionNotifyImg(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
