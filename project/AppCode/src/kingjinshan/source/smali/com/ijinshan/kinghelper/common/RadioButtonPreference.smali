.class public Lcom/ijinshan/kinghelper/common/RadioButtonPreference;
.super Lcom/ijinshan/kpref/CheckBoxPreference;
.source "RadioButtonPreference.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/ijinshan/kpref/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/ijinshan/kpref/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method private b(Landroid/view/View;)Landroid/widget/CheckBox;
    .locals 2
    .parameter

    .prologue
    .line 66
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Landroid/widget/CheckBox;

    move-object v0, p1

    .line 78
    :goto_0
    return-object v0

    .line 69
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 70
    check-cast p1, Landroid/view/ViewGroup;

    .line 71
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->b(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 74
    goto :goto_0

    .line 71
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->b(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    const v2, 0x1080009

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 59
    :cond_0
    return-object v0
.end method

.method protected final a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Landroid/view/View;)V

    .line 50
    return-void
.end method
