.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66fe

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->mCheckBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;)Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->du()V

    const/16 v1, 0x66ff

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$2;->val$context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_0
    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->access$200()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->access$202(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
