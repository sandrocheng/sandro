.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

.field final synthetic val$activityId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$2;->val$activityId:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6706

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->access$300()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;->onConfirmFinish()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqt;->a(Landroid/content/Context;)Lqt;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$2;->val$activityId:Ljava/lang/String;

    iget-object v0, v0, Lqt;->a:Lhn;

    const-string v2, "lottery_color_egg_config"

    const-string v3, "id"

    invoke-virtual {v0, v1, v2, v3}, Lhn;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$2;->val$context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->access$500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;)V

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->access$200()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->access$202(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    return-void
.end method