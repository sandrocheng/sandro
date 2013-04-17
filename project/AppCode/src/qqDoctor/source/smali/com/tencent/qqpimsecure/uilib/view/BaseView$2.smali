.class Lcom/tencent/qqpimsecure/uilib/view/BaseView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    return-void
.end method
