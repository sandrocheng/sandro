.class public Lcom/avast/android/generic/ui/widget/RowImage;
.super Lcom/avast/android/generic/ui/widget/Row;
.source "RowImage.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:I

.field private c:Z

.field private m:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 58
    sget v0, Lcom/avast/android/generic/p;->c:I

    invoke-direct {p0, p1, p2, v0}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    sget-object v0, Lcom/avast/android/generic/ab;->e:[I

    sget v1, Lcom/avast/android/generic/p;->c:I

    sget v2, Lcom/avast/android/generic/aa;->b:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/RowImage;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 62
    sget-object v0, Lcom/avast/android/generic/ab;->f:[I

    sget v1, Lcom/avast/android/generic/p;->c:I

    sget v2, Lcom/avast/android/generic/aa;->b:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/RowImage;->b(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object v0, Lcom/avast/android/generic/ab;->e:[I

    sget v1, Lcom/avast/android/generic/aa;->b:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/RowImage;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/RowImage;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/v;->a:I

    invoke-static {v0, v1, p0}, Lcom/avast/android/generic/ui/widget/RowImage;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 94
    sget v0, Lcom/avast/android/generic/t;->ac:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/RowImage;->m:Landroid/widget/ImageView;

    .line 95
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/widget/RowImage;->c:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/RowImage;->m:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    :cond_0
    sget v0, Lcom/avast/android/generic/t;->aJ:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/RowImage;->a:Landroid/widget/ImageView;

    .line 101
    iget v0, p0, Lcom/avast/android/generic/ui/widget/RowImage;->b:I

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/RowImage;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/RowImage;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/avast/android/generic/ui/widget/RowImage;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    :cond_1
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method

.method protected b(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/ui/widget/RowImage;->b:I

    .line 82
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    invoke-static {p1}, Lcom/avast/android/generic/util/al;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/RowImage;->c:Z

    .line 85
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 126
    instance-of v0, p1, Lcom/avast/android/generic/ui/widget/RowImage$SavedState;

    if-nez v0, :cond_0

    .line 127
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 135
    :goto_0
    return-void

    .line 131
    :cond_0
    check-cast p1, Lcom/avast/android/generic/ui/widget/RowImage$SavedState;

    .line 132
    invoke-virtual {p1}, Lcom/avast/android/generic/ui/widget/RowImage$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/avast/android/generic/ui/widget/Row;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 134
    iget-boolean v0, p1, Lcom/avast/android/generic/ui/widget/RowImage$SavedState;->a:Z

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/RowImage;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/avast/android/generic/ui/widget/Row;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 119
    new-instance v1, Lcom/avast/android/generic/ui/widget/RowImage$SavedState;

    invoke-direct {v1, v0}, Lcom/avast/android/generic/ui/widget/RowImage$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 120
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/RowImage;->isEnabled()Z

    move-result v0

    iput-boolean v0, v1, Lcom/avast/android/generic/ui/widget/RowImage$SavedState;->a:Z

    .line 121
    return-object v1
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setEnabled(Z)V

    .line 112
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setFocusable(Z)V

    .line 113
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setClickable(Z)V

    .line 114
    return-void
.end method
