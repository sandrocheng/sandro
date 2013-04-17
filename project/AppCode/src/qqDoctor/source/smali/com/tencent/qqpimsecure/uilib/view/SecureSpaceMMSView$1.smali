.class Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

.field final synthetic val$smilcomponent:Ladg;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;Ladg;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$1;->val$smilcomponent:Ladg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$1;->val$smilcomponent:Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$1;->val$smilcomponent:Ladg;

    invoke-virtual {v1}, Ladg;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/MMSImageAcitivty;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "SMILComponent"

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$1;->val$smilcomponent:Ladg;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "form"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
