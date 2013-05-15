.class Lcom/avast/android/mobilesecurity/ui/l;
.super Landroid/widget/FrameLayout;
.source "SideMenu.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/ui/g;


# direct methods
.method private constructor <init>(Lcom/avast/android/mobilesecurity/ui/g;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/l;->a:Lcom/avast/android/mobilesecurity/ui/g;

    .line 79
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/ui/g;Landroid/content/Context;Lcom/avast/android/mobilesecurity/ui/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/ui/l;-><init>(Lcom/avast/android/mobilesecurity/ui/g;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/l;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/g;->a(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/l;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/g;->a(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/l;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/ui/g;->a(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/ui/l;->scrollTo(II)V

    .line 86
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/l;->invalidate()V

    .line 88
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 93
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/l;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/g;->b(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/l;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/g;->b(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/l;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/g;->b(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/l;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/g;->b(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
