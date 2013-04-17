.class Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mBottomAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->access$000(Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mTopAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->access$100(Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->notifyDataSetChanged()V

    return-void
.end method
