.class Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$1;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

.field final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    iput-object p2, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 250
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->smoothScrollTo(II)V

    .line 251
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 252
    return-void
.end method
