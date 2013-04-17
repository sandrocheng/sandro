.class Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mAttachFramework:Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->access$000(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mAttachFramework:Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->access$000(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onOptionClick(I)V

    :cond_0
    return-void
.end method
