.class public Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;
.super Landroid/widget/CheckBox;
.source "DontPressWithParentCheckBox.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/CheckBox;->onFinishInflate()V

    .line 44
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter

    .prologue
    .line 49
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0
.end method
