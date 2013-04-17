.class Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$000(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Luf;->a(Landroid/content/Context;)Luf;

    move-result-object v0

    invoke-virtual {v0}, Luf;->a()Llx;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Luf;->a(Llx;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->mCheckSuccessTime:J
    invoke-static {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->access$102(Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;J)J

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->setPassCheck(Z)V

    :cond_1
    return-void
.end method
