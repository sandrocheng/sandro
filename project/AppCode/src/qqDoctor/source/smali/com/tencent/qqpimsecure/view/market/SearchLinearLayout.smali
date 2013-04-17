.class public Lcom/tencent/qqpimsecure/view/market/SearchLinearLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/market/SearchLinearLayout;->a:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/market/SearchLinearLayout;->a:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/market/SearchCenterView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/market/SearchLinearLayout;->a:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/market/SearchCenterView;->e()V

    :cond_0
    return-void
.end method

.method public setSearchCenterView(Lcom/tencent/qqpimsecure/view/market/SearchCenterView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/view/market/SearchLinearLayout;->a:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    return-void
.end method
