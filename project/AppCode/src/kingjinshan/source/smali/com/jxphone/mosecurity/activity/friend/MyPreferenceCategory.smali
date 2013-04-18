.class Lcom/jxphone/mosecurity/activity/friend/MyPreferenceCategory;
.super Lcom/ijinshan/kpref/PreferenceCategory;
.source "MyPreferenceCategory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/ijinshan/kpref/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/PreferenceCategory;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 20
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 21
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object p0, v0

    .line 22
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    const v2, -0xfce9d4

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 25
    :cond_0
    return-object v1
.end method
