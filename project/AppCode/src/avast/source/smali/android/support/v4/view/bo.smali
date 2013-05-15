.class Landroid/support/v4/view/bo;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2753
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 2754
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 2755
    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    iget-boolean v3, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eq v2, v3, :cond_1

    .line 2756
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2758
    :goto_0
    return v0

    .line 2756
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 2758
    :cond_1
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->e:I

    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->e:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2750
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/bo;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
