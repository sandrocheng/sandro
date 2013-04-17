.class Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

.field final synthetic val$isNeedCheck:Z

.field final synthetic val$killCount:I

.field final synthetic val$ram:J


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;ZIJ)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    iput-boolean p2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$isNeedCheck:Z

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$killCount:I

    iput-wide p4, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$ram:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$000(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Luf;->a(Landroid/content/Context;)Luf;

    move-result-object v0

    invoke-virtual {v0}, Luf;->a()Llx;

    move-result-object v8

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$isNeedCheck:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$killCount:I

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$ram:J

    #calls: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showNormalColorEgg(IJZ)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$200(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;IJZ)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$killCount:I

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$ram:J

    #calls: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showToast(IJLjava/lang/String;Z)V
    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$300(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;IJLjava/lang/String;Z)V

    move v0, v7

    :goto_0
    if-nez v0, :cond_0

    if-eqz v8, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->isPassCheck()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->setPassCheck(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mCheckSuccessTime:J
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$100(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mCheckSuccessTime:J
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$100(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, v8, Llx;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    #calls: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showLotteryColorEgg(Llx;)V
    invoke-static {v0, v8}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$600(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;Llx;)V

    const/4 v4, 0x0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;-><init>(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)V

    iput-object v8, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->entity:Ljava/lang/Object;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$killCount:I

    iput v1, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->killCount:I

    iget-wide v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$ram:J

    iput-wide v1, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->ram:J

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$500(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xe

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    move v5, v7

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$killCount:I

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$ram:J

    #calls: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showToast(IJLjava/lang/String;Z)V
    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$300(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;IJLjava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$500(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$500(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mColorEggConfigManager:Lqt;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)Lqt;

    move-result-object v0

    invoke-virtual {v0}, Lqt;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mColorEggConfigManager:Lqt;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)Lqt;

    move-result-object v0

    invoke-virtual {v0}, Lqt;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lld;

    if-eqz v6, :cond_6

    iget-boolean v0, v6, Lld;->e:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$killCount:I

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$ram:J

    #calls: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showNormalColorEgg(IJZ)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$200(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;IJZ)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$killCount:I

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$ram:J

    #calls: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showToast(IJLjava/lang/String;Z)V
    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$300(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;IJLjava/lang/String;Z)V

    iput-boolean v7, v6, Lld;->e:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mColorEggConfigManager:Lqt;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)Lqt;

    move-result-object v0

    invoke-virtual {v0, v6}, Lqt;->a(Lld;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;-><init>(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)V

    iput-object v6, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->entity:Ljava/lang/Object;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$killCount:I

    iput v1, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->killCount:I

    iget-wide v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$ram:J

    iput-wide v1, v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$ColorEggDialogInfoHolder;->ram:J

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mWindow_Handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$500(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xd

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    move v0, v7

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$killCount:I

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$ram:J

    #calls: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showNormalColorEgg(IJZ)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3, v7}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$200(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;IJZ)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$killCount:I

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$ram:J

    #calls: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showNormalColorEgg(IJZ)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3, v7}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$200(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;IJZ)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_4
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$killCount:I

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$ram:J

    #calls: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showNormalColorEgg(IJZ)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3, v7}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$200(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;IJZ)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$killCount:I

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$2;->val$ram:J

    #calls: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->showNormalColorEgg(IJZ)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3, v7}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$200(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;IJZ)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_6
    move v0, v5

    goto/16 :goto_0
.end method
