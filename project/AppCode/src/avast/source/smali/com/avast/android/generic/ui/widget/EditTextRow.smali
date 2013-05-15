.class public Lcom/avast/android/generic/ui/widget/EditTextRow;
.super Lcom/avast/android/generic/ui/widget/Row;
.source "EditTextRow.java"


# instance fields
.field private a:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

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

    invoke-direct {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    sget-object v0, Lcom/avast/android/generic/ab;->e:[I

    sget v1, Lcom/avast/android/generic/aa;->b:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 47
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/v;->d:I

    invoke-static {v0, v1, p0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    sget v0, Lcom/avast/android/generic/t;->S:I

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->a:Landroid/widget/EditText;

    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->a:Landroid/widget/EditText;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 77
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/avast/android/generic/ui/widget/g;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/ui/widget/g;-><init>(Lcom/avast/android/generic/ui/widget/EditTextRow;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 85
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 140
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method public a([Landroid/text/InputFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 198
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->g:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/avast/android/generic/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 156
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/avast/android/generic/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setEnabled(Z)V

    .line 112
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setFocusable(Z)V

    .line 113
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setClickable(Z)V

    .line 115
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 117
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 118
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/EditTextRow;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 119
    return-void
.end method
