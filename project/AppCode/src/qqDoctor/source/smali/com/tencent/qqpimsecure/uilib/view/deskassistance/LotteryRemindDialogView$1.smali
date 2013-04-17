.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6702

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Luf;->a(Landroid/content/Context;)Luf;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->mEntity:Llx;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;)Llx;

    move-result-object v1

    iget-object v1, v1, Llx;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->mEntity:Llx;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;)Llx;

    move-result-object v1

    invoke-virtual {v0, v1}, Luf;->b(Llx;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->mEntity:Llx;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;)Llx;

    move-result-object v1

    iget-object v1, v1, Llx;->b:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->access$100()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->showDialog(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView$1;->val$context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_0
    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->access$200()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;->access$202(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/LotteryRemindDialogView;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
