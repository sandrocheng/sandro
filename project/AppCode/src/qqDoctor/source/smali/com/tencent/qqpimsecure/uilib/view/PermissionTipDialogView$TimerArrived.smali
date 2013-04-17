.class public Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimerArrived"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->access$006(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lru;->a:Lru$a;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimeoverOpt:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput v0, v3, Lru$a;->a:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mCheckBoxView:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimeoverOpt:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)I

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mInfo:Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    move-result-object v2

    iget v2, v2, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->RememberState(II)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->access$500(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->access$500(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->access$500(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    const/4 v1, 0x0

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->access$502(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->access$600(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->PERMISSION_DIALOG_DELETE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$TimerArrived;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->access$600(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v1, Lru;->a:Lru$a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lru;->a:Lru$a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method
