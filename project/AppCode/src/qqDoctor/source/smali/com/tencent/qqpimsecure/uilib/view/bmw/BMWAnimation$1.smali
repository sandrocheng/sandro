.class Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Percent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;->access$000(Lcom/tencent/qqpimsecure/uilib/view/bmw/BMWAnimation;I)V

    return-void
.end method
