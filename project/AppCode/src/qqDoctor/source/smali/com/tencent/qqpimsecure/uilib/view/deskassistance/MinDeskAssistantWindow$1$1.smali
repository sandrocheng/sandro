.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;


# instance fields
.field final synthetic this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmFinish()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isConfirming:Z
    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$902(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;Z)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->initView()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0, v1, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->hasAddToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$1000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$1100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setHasAddToWindow(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onConfirmStart()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    const/4 v1, 0x1

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isConfirming:Z
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$902(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;Z)Z

    return-void
.end method
