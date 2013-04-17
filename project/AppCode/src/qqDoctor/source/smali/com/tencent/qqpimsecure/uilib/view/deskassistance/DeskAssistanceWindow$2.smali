.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;
.super Ljava/lang/Object;

# interfaces
.implements Lzk$b;


# instance fields
.field private mCount:I

.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;->mCount:I

    return-void
.end method


# virtual methods
.method public BestNow()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cJ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindow_Handler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;->sendEmptyMessage(I)Z

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v1, v4, v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->startColorEggAnimation(IJZ)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mOptomoizeStarted:Z
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$202(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;Z)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getMinDeskAssiHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isReadyToShow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66a0

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setIsReadyToShow(Z)V

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public CleanEstimateComplete(IJ)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lho;->a()Lho;

    move-result-object v2

    invoke-virtual {v2}, Lho;->cJ()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindow_Handler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;->sendEmptyMessage(I)Z

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->startColorEggAnimation(IJZ)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mOptomoizeStarted:Z
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$202(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;Z)Z

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66a0

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void
.end method

.method public CleanFinish()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;->mCount:I

    return-void
.end method

.method public isReadyToCleanNow()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isRocketRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;->mCount:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;->mCount:I

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
