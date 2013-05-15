.class public Lcom/avast/android/generic/ui/widget/BlackButtonRow;
.super Lcom/avast/android/generic/ui/widget/Row;
.source "BlackButtonRow.java"


# instance fields
.field protected a:Landroid/widget/Button;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 32
    sget v0, Lcom/avast/android/generic/p;->c:I

    invoke-direct {p0, p1, p2, v0}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    sget-object v0, Lcom/avast/android/generic/ab;->e:[I

    sget v1, Lcom/avast/android/generic/p;->c:I

    sget v2, Lcom/avast/android/generic/aa;->b:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/BlackButtonRow;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    sget-object v0, Lcom/avast/android/generic/ab;->e:[I

    sget v1, Lcom/avast/android/generic/aa;->b:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/BlackButtonRow;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/BlackButtonRow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/v;->r:I

    invoke-static {v0, v1, p0}, Lcom/avast/android/generic/ui/widget/BlackButtonRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    sget v0, Lcom/avast/android/generic/t;->ae:I

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/BlackButtonRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/BlackButtonRow;->a:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/BlackButtonRow;->a:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 47
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/BlackButtonRow;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/BlackButtonRow;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/BlackButtonRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/ui/widget/BlackButtonRow;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/avast/android/generic/ui/widget/BlackButtonRow;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/avast/android/generic/d/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setEnabled(Z)V

    .line 64
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setFocusable(Z)V

    .line 65
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setClickable(Z)V

    .line 67
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/BlackButtonRow;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    return-void
.end method
