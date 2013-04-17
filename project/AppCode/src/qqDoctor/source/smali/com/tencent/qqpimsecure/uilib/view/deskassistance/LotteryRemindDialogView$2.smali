.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6703

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView$2;->val$context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->mEntity:Llx;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;)Llx;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->mKillCount:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->mRam:J
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;)J

    move-result-wide v3

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->access$100()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->showDialog(Llx;IJLcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;)V

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->access$200()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->access$202(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
