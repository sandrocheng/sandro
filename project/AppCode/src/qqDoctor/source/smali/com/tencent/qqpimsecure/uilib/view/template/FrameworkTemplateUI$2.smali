.class Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->access$100(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->access$100(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->dismissPopList()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mAttachFramework:Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->access$000(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    const v0, 0x7f0803bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mAttachFramework:Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->access$000(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onOptionClick(I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    const/4 v1, 0x0

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->access$102(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;Lcom/tencent/qqpimsecure/uilib/view/PopListView;)Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    return-void
.end method
