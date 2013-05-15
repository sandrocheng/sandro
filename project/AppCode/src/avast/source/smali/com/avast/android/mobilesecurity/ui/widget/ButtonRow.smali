.class public Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;
.super Lcom/avast/android/generic/ui/widget/Row;
.source "ButtonRow.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    const v0, 0x7f010080

    invoke-direct {p0, p1, p2, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030095

    invoke-static {v0, v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    const v0, 0x7f0701c1

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->a:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->a:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 53
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 54
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 55
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->a:Landroid/view/View;

    new-instance v1, Lcom/avast/android/mobilesecurity/ui/widget/c;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/ui/widget/c;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->j:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 65
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->c:I

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 69
    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    sget-object v0, Lcom/avast/android/mobilesecurity/v;->b:[I

    const v1, 0x7f0d00b4

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->b:Landroid/graphics/drawable/Drawable;

    .line 42
    const/4 v1, 0x1

    const v2, 0x7f010081

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->c:I

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/ButtonRow;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 75
    return-void
.end method
