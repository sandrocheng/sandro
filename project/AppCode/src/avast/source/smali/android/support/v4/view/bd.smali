.class final Landroid/support/v4/view/bd;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/bh;Landroid/support/v4/view/bh;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    iget v0, p1, Landroid/support/v4/view/bh;->b:I

    iget v1, p2, Landroid/support/v4/view/bh;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    check-cast p1, Landroid/support/v4/view/bh;

    check-cast p2, Landroid/support/v4/view/bh;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/bd;->a(Landroid/support/v4/view/bh;Landroid/support/v4/view/bh;)I

    move-result v0

    return v0
.end method
