.class Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$1;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method
