.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6704

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->mEntity:Llx;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;)Llx;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->mKillCount:I
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->mRam:J
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;)J

    move-result-wide v2

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->access$300()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->showDialog(Llx;IJLcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView$1;->val$context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->access$400()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->access$402(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;

    return-void
.end method
