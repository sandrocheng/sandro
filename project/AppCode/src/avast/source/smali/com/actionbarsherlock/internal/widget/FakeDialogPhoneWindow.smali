.class public Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;
.super Landroid/widget/LinearLayout;
.source "FakeDialogPhoneWindow.java"


# instance fields
.field final mMinWidthMajor:Landroid/util/TypedValue;

.field final mMinWidthMinor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 14
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 19
    sget-object v0, Lcom/actionbarsherlock/R$styleable;->SherlockTheme:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 21
    const/16 v1, 0x31

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 22
    const/16 v1, 0x32

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 24
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 31
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v3, :cond_1

    move v0, v1

    .line 33
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 35
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;->getMeasuredWidth()I

    move-result v5

    .line 38
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 40
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 42
    :goto_1
    iget v6, v0, Landroid/util/TypedValue;->type:I

    if-eqz v6, :cond_5

    .line 44
    iget v6, v0, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    .line 45
    invoke-virtual {v0, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 52
    :goto_2
    if-ge v5, v0, :cond_5

    .line 53
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v2, v1

    .line 60
    :goto_3
    if-eqz v2, :cond_0

    .line 61
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 63
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 31
    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/FakeDialogPhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    goto :goto_1

    .line 46
    :cond_3
    iget v6, v0, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_4

    .line 47
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    invoke-virtual {v0, v6, v4}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_2

    :cond_4
    move v0, v2

    .line 49
    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3
.end method
