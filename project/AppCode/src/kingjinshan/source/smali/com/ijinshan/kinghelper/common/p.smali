.class final Lcom/ijinshan/kinghelper/common/p;
.super Ljava/lang/Object;
.source "PickListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/common/PickListActivity;


# direct methods
.method synthetic constructor <init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1455
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/kinghelper/common/p;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/ijinshan/kinghelper/common/PickListActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/p;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/p;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->k(Lcom/ijinshan/kinghelper/common/PickListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/p;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0, p2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Lcom/ijinshan/kinghelper/common/PickListActivity;I)V

    .line 1473
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1459
    if-nez p2, :cond_1

    .line 1460
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/p;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->j(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/p;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->j(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/p;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Lcom/ijinshan/kinghelper/common/PickListActivity;Z)Z

    .line 1466
    :goto_0
    return-void

    .line 1464
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/p;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Lcom/ijinshan/kinghelper/common/PickListActivity;Z)Z

    goto :goto_0
.end method
