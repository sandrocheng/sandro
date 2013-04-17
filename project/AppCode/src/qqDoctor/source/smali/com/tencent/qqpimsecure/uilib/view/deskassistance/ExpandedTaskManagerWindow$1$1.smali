.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;

.field final synthetic val$sParent:Landroid/widget/AdapterView;

.field final synthetic val$sPosition:I


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;Landroid/widget/AdapterView;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1$1;->val$sParent:Landroid/widget/AdapterView;

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1$1;->val$sPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1$1;->val$sParent:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;->mTaskGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;->access$200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;)Landroid/widget/GridView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1$1;->val$sPosition:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->closeApp(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;->access$300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;->mTaskManagerDataAdapter:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
