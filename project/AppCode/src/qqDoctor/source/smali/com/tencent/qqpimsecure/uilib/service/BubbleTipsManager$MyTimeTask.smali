.class Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$MyTimeTask;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;


# direct methods
.method private constructor <init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$MyTimeTask;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$MyTimeTask;-><init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$MyTimeTask;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
