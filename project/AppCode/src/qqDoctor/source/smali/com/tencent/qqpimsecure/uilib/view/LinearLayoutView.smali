.class public Lcom/tencent/qqpimsecure/uilib/view/LinearLayoutView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private mDispatch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LinearLayoutView;->mDispatch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LinearLayoutView;->mDispatch:Z

    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LinearLayoutView;->mDispatch:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchSetPressed(Z)V

    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LinearLayoutView;->mDispatch:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchSetSelected(Z)V

    :cond_0
    return-void
.end method

.method public isDispatch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LinearLayoutView;->mDispatch:Z

    return v0
.end method

.method public setDispatch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/LinearLayoutView;->mDispatch:Z

    return-void
.end method
