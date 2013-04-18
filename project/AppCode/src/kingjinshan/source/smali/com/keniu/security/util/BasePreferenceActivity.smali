.class public Lcom/keniu/security/util/BasePreferenceActivity;
.super Lcom/ijinshan/kpref/PreferenceActivity;
.source "BasePreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/ijinshan/kpref/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f050007

    const/4 v2, 0x1

    const/high16 v6, 0x40a0

    const/4 v5, 0x0

    .line 17
    invoke-virtual {p0, v2}, Lcom/keniu/security/util/BasePreferenceActivity;->requestWindowFeature(I)Z

    .line 18
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 21
    invoke-virtual {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 22
    invoke-virtual {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020203

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 23
    invoke-virtual {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f0201fd

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 26
    invoke-virtual {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 27
    const v1, 0x7f03010d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 28
    const v0, 0x7f080060

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 29
    invoke-virtual {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 33
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 35
    if-ne p2, v7, :cond_2

    .line 36
    mul-float v2, v6, v0

    float-to-int v2, v2

    .line 40
    :goto_0
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 41
    if-eq p2, v7, :cond_0

    .line 42
    invoke-virtual {p0, v1, v3}, Lcom/keniu/security/util/BasePreferenceActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    mul-float v3, v5, v0

    float-to-int v3, v3

    mul-float v4, v5, v0

    float-to-int v4, v4

    mul-float/2addr v0, v6

    float-to-int v0, v0

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 45
    invoke-virtual {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 47
    if-eqz p2, :cond_1

    .line 48
    invoke-virtual {p0, p2}, Lcom/keniu/security/util/BasePreferenceActivity;->a(I)V

    .line 49
    :cond_1
    return-void

    .line 38
    :cond_2
    const/high16 v2, 0x422c

    mul-float/2addr v2, v0

    float-to-int v2, v2

    goto :goto_0
.end method
