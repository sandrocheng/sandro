.class Landroid/support/v4/view/aq;
.super Landroid/support/v4/view/ap;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/support/v4/view/ap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-virtual {p2}, Landroid/support/v4/view/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/aw;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-static {p1, p2}, Landroid/support/v4/view/aw;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
