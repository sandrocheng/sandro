.class Lcom/tencent/qqpimsecure/uilib/view/BaseView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->loadDataList()V

    return-void
.end method
