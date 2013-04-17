.class Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$5;->this$0:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$5;->this$0:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mAttachFramework:Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->access$000(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$5;->this$0:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mAttachFramework:Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->access$000(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onTabClick(Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V

    :cond_0
    return-void
.end method
