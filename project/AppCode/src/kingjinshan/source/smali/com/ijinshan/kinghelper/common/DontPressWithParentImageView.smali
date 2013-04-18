.class public Lcom/ijinshan/kinghelper/common/DontPressWithParentImageView;
.super Landroid/widget/ImageView;
.source "DontPressWithParentImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .locals 1
    .parameter

    .prologue
    .line 17
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/DontPressWithParentImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    :goto_0
    return-void

    .line 20
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0
.end method
