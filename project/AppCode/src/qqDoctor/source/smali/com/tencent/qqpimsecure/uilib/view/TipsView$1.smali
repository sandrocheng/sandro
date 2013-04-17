.class Lcom/tencent/qqpimsecure/uilib/view/TipsView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/TipsView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/TipsView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TipsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TipsView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/TipsView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TipsView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/TipsView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
