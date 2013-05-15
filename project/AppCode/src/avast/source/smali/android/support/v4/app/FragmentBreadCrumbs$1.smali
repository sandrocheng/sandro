.class Landroid/support/v4/app/FragmentBreadCrumbs$1;
.super Ljava/lang/Object;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentBreadCrumbs;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentBreadCrumbs;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 434
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/app/FragmentManager$BackStackEntry;

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager$BackStackEntry;

    .line 436
    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/support/v4/app/FragmentBreadCrumbs;->mParentEntry:Landroid/support/v4/app/BackStackRecord;

    if-ne v0, v1, :cond_1

    .line 437
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    #getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$000(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    #getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$000(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/support/v4/app/FragmentBreadCrumbs;->mLastEntry:Landroid/support/v4/app/BackStackRecord;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/support/v4/app/FragmentBreadCrumbs;->mLastEntryListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2

    .line 441
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    iget-object v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mLastEntryListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 443
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    #getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    invoke-static {v1}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$100(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 444
    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    #getter for: Landroid/support/v4/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    invoke-static {v1}, Landroid/support/v4/app/FragmentBreadCrumbs;->access$100(Landroid/support/v4/app/FragmentBreadCrumbs;)Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    move-result-object v2

    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntry:Landroid/support/v4/app/BackStackRecord;

    if-ne v0, v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2, v1, v3}, Landroid/support/v4/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;->onBreadCrumbClick(Landroid/support/v4/app/FragmentManager$BackStackEntry;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/support/v4/app/FragmentBreadCrumbs;->mTopEntry:Landroid/support/v4/app/BackStackRecord;

    if-ne v0, v1, :cond_5

    .line 450
    iget-object v0, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    iget-object v0, v0, Landroid/support/v4/app/FragmentBreadCrumbs;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :cond_4
    move-object v1, v0

    .line 444
    goto :goto_1

    .line 452
    :cond_5
    iget-object v1, p0, Landroid/support/v4/app/FragmentBreadCrumbs$1;->this$0:Landroid/support/v4/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/support/v4/app/FragmentBreadCrumbs;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getId()I

    move-result v0

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    goto :goto_0
.end method
