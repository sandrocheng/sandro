.class public Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private mMainPageView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;


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

    sub-int v0, p5, p3

    invoke-static {v0}, Lgw;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;->mMainPageView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-static {v0}, Lgw;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;->mMainPageView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-void
.end method

.method public setMainPageView(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;->mMainPageView:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-void
.end method
