.class Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6681

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView$1;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/systemoptimize/UserWhiteListActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_back_to_main"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView$1;->val$context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;->access$000()Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;->access$002(Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;)Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method