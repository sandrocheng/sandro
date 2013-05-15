.class public Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;
.super Lcom/avast/android/generic/ui/widget/BlackButtonRow;
.source "DayButtonRow.java"


# instance fields
.field private b:I

.field private c:I

.field private m:Lcom/avast/android/mobilesecurity/ui/widget/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/BlackButtonRow;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    const v0, 0x7f010072

    invoke-direct {p0, p1, p2, v0}, Lcom/avast/android/generic/ui/widget/BlackButtonRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/BlackButtonRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->b:I

    return v0
.end method

.method private a(IZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->a:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->b:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/avast/android/generic/d/e;->a(Ljava/lang/String;I)Z

    .line 199
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->b:I

    .line 200
    iput p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->b:I

    .line 201
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->m:Lcom/avast/android/mobilesecurity/ui/widget/l;

    if-eqz v1, :cond_1

    if-eq v0, p1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->m:Lcom/avast/android/mobilesecurity/ui/widget/l;

    invoke-interface {v0, p0, p1}, Lcom/avast/android/mobilesecurity/ui/widget/l;->a(Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;I)V

    .line 204
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->a(IZZ)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-super {p0}, Lcom/avast/android/generic/ui/widget/BlackButtonRow;->a()V

    .line 70
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/avast/android/mobilesecurity/ui/widget/h;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/ui/widget/h;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;)V

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->a(Landroid/view/View$OnClickListener;)V

    .line 169
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->c:I

    invoke-direct {p0, v0, v1, v1}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->a(IZZ)V

    .line 170
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 183
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->a(IZZ)V

    .line 184
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->c:I

    .line 63
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method

.method public a(Lcom/avast/android/mobilesecurity/ui/widget/l;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->m:Lcom/avast/android/mobilesecurity/ui/widget/l;

    .line 218
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->g:Ljava/lang/String;

    iget v2, p0, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->c:I

    invoke-interface {v0, v1, v2}, Lcom/avast/android/generic/d/e;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0, v3, v3}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->a(IZZ)V

    .line 175
    return-void
.end method
