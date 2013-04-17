.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$shareWording:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$1;->val$shareWording:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66fd

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;

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
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/ShareActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "default_content"

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$1;->val$shareWording:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_where"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$1;->val$context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->access$200()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->access$202(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;

    return-void
.end method
