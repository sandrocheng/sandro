.class Landroid/support/v4/view/af;
.super Ljava/lang/Object;
.source "PagerTitleStripIcs.java"


# direct methods
.method public static a(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    new-instance v0, Landroid/support/v4/view/ag;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/ag;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 29
    return-void
.end method
