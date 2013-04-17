.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6700

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView$2;->val$context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_0
    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;->access$000()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;->access$002(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
