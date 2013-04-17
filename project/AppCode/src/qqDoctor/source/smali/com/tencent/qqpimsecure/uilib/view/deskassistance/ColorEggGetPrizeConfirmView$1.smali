.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$1;
.super Ljava/lang/Object;

# interfaces
.implements Labv$b;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentApp(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mProcessServer:Lzo;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;)Lzo;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lzo;->a(Landroid/content/ComponentName;)Z

    move-result v1

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mIsOnDeskNow:Z
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->access$002(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;Z)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mIsOnDeskNow:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mMainLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->access$200()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    move-result-object v1

    sget-object v2, Lkg;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mMainLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->access$200()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    move-result-object v1

    sget-object v2, Lkg;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
