.class public Lcom/avast/android/generic/ui/widget/TimeButtonRow;
.super Lcom/avast/android/generic/ui/widget/BlackButtonRow;
.source "TimeButtonRow.java"


# instance fields
.field private b:I

.field private c:I

.field private m:Lcom/avast/android/generic/ui/widget/af;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/BlackButtonRow;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    sget v0, Lcom/avast/android/generic/p;->c:I

    invoke-direct {p0, p1, p2, v0}, Lcom/avast/android/generic/ui/widget/BlackButtonRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/BlackButtonRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/widget/TimeButtonRow;)I
    .locals 1
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->b:I

    return v0
.end method

.method private a(IZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/avast/android/generic/util/aj;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->b:I

    if-eq p1, v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/avast/android/generic/d/e;->a(Ljava/lang/String;I)Z

    .line 113
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->b:I

    .line 114
    iput p1, p0, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->b:I

    .line 115
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->m:Lcom/avast/android/generic/ui/widget/af;

    if-eqz v1, :cond_1

    if-eq v0, p1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->m:Lcom/avast/android/generic/ui/widget/af;

    invoke-interface {v0, p0, p1}, Lcom/avast/android/generic/ui/widget/af;->a(Lcom/avast/android/generic/ui/widget/TimeButtonRow;I)V

    .line 118
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/widget/TimeButtonRow;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->a(IZZ)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-super {p0}, Lcom/avast/android/generic/ui/widget/BlackButtonRow;->a()V

    .line 63
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 66
    new-instance v1, Lcom/avast/android/generic/ui/widget/ad;

    invoke-direct {v1, p0, v0}, Lcom/avast/android/generic/ui/widget/ad;-><init>(Lcom/avast/android/generic/ui/widget/TimeButtonRow;Z)V

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->a(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->c:I

    invoke-direct {p0, v0, v2, v2}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->a(IZZ)V

    .line 84
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->c:I

    .line 56
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->g:Ljava/lang/String;

    iget v2, p0, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->c:I

    invoke-interface {v0, v1, v2}, Lcom/avast/android/generic/d/e;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0, v3, v3}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->a(IZZ)V

    .line 89
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->b:I

    return v0
.end method
