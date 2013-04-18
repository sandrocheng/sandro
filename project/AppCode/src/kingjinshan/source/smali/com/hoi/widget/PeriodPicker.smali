.class public Lcom/hoi/widget/PeriodPicker;
.super Landroid/widget/FrameLayout;
.source "PeriodPicker.java"


# instance fields
.field private final a:Lcom/hoi/widget/NumberPicker;

.field private final b:Lcom/hoi/widget/NumberPicker;

.field private c:Lcom/hoi/widget/ad;

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hoi/widget/PeriodPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hoi/widget/PeriodPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 39
    const v1, 0x7f0300d1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    const v0, 0x7f08030f

    invoke-virtual {p0, v0}, Lcom/hoi/widget/PeriodPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hoi/widget/NumberPicker;

    iput-object v0, p0, Lcom/hoi/widget/PeriodPicker;->a:Lcom/hoi/widget/NumberPicker;

    .line 42
    iget-object v0, p0, Lcom/hoi/widget/PeriodPicker;->a:Lcom/hoi/widget/NumberPicker;

    sget-object v1, Lcom/hoi/widget/NumberPicker;->a:Lcom/hoi/widget/x;

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(Lcom/hoi/widget/x;)V

    .line 43
    iget-object v0, p0, Lcom/hoi/widget/PeriodPicker;->a:Lcom/hoi/widget/NumberPicker;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/hoi/widget/NumberPicker;->a(J)V

    .line 44
    iget-object v0, p0, Lcom/hoi/widget/PeriodPicker;->a:Lcom/hoi/widget/NumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v4, v1}, Lcom/hoi/widget/NumberPicker;->a(II)V

    .line 45
    iget-object v0, p0, Lcom/hoi/widget/PeriodPicker;->a:Lcom/hoi/widget/NumberPicker;

    new-instance v1, Lcom/hoi/widget/ab;

    invoke-direct {v1, p0}, Lcom/hoi/widget/ab;-><init>(Lcom/hoi/widget/PeriodPicker;)V

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(Lcom/hoi/widget/aa;)V

    .line 56
    const v0, 0x7f080310

    invoke-virtual {p0, v0}, Lcom/hoi/widget/PeriodPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hoi/widget/NumberPicker;

    iput-object v0, p0, Lcom/hoi/widget/PeriodPicker;->b:Lcom/hoi/widget/NumberPicker;

    .line 57
    iget-object v0, p0, Lcom/hoi/widget/PeriodPicker;->b:Lcom/hoi/widget/NumberPicker;

    sget-object v1, Lcom/hoi/widget/NumberPicker;->a:Lcom/hoi/widget/x;

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(Lcom/hoi/widget/x;)V

    .line 58
    iget-object v0, p0, Lcom/hoi/widget/PeriodPicker;->b:Lcom/hoi/widget/NumberPicker;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/hoi/widget/NumberPicker;->a(J)V

    .line 59
    iget-object v0, p0, Lcom/hoi/widget/PeriodPicker;->b:Lcom/hoi/widget/NumberPicker;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/hoi/widget/PeriodPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/hoi/widget/NumberPicker;->a(II[Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/hoi/widget/PeriodPicker;->b:Lcom/hoi/widget/NumberPicker;

    new-instance v1, Lcom/hoi/widget/ac;

    invoke-direct {v1, p0}, Lcom/hoi/widget/ac;-><init>(Lcom/hoi/widget/PeriodPicker;)V

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(Lcom/hoi/widget/aa;)V

    .line 71
    iget-object v0, p0, Lcom/hoi/widget/PeriodPicker;->b:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/hoi/widget/NumberPicker;->a()V

    .line 73
    invoke-virtual {p0}, Lcom/hoi/widget/PeriodPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hoi/widget/PeriodPicker;->setEnabled(Z)V

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/hoi/widget/PeriodPicker;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput p1, p0, Lcom/hoi/widget/PeriodPicker;->d:I

    return p1
.end method

.method static synthetic a(Lcom/hoi/widget/PeriodPicker;)Lcom/hoi/widget/ad;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/hoi/widget/PeriodPicker;->c:Lcom/hoi/widget/ad;

    return-object v0
.end method

.method static synthetic b(Lcom/hoi/widget/PeriodPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/hoi/widget/PeriodPicker;->d:I

    return v0
.end method

.method static synthetic b(Lcom/hoi/widget/PeriodPicker;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput p1, p0, Lcom/hoi/widget/PeriodPicker;->e:I

    return p1
.end method

.method static synthetic c(Lcom/hoi/widget/PeriodPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/hoi/widget/PeriodPicker;->e:I

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/hoi/widget/PeriodPicker;->a:Lcom/hoi/widget/NumberPicker;

    iget v1, p0, Lcom/hoi/widget/PeriodPicker;->d:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(I)V

    .line 108
    iget-object v0, p0, Lcom/hoi/widget/PeriodPicker;->b:Lcom/hoi/widget/NumberPicker;

    iget v1, p0, Lcom/hoi/widget/PeriodPicker;->e:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(I)V

    .line 109
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/hoi/widget/PeriodPicker;->d:I

    return v0
.end method

.method public final a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput p1, p0, Lcom/hoi/widget/PeriodPicker;->d:I

    .line 87
    iput p2, p0, Lcom/hoi/widget/PeriodPicker;->e:I

    .line 88
    return-void
.end method

.method public final a(IILcom/hoi/widget/ad;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iput p1, p0, Lcom/hoi/widget/PeriodPicker;->d:I

    .line 101
    iput p2, p0, Lcom/hoi/widget/PeriodPicker;->e:I

    .line 102
    iput-object p3, p0, Lcom/hoi/widget/PeriodPicker;->c:Lcom/hoi/widget/ad;

    .line 103
    iget-object v0, p0, Lcom/hoi/widget/PeriodPicker;->a:Lcom/hoi/widget/NumberPicker;

    iget v1, p0, Lcom/hoi/widget/PeriodPicker;->d:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(I)V

    iget-object v0, p0, Lcom/hoi/widget/PeriodPicker;->b:Lcom/hoi/widget/NumberPicker;

    iget v1, p0, Lcom/hoi/widget/PeriodPicker;->e:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(I)V

    .line 104
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/hoi/widget/PeriodPicker;->e:I

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/hoi/widget/PeriodPicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 115
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 126
    check-cast p1, Lcom/hoi/widget/PeriodPicker$SavedState;

    .line 127
    invoke-virtual {p1}, Lcom/hoi/widget/PeriodPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 128
    invoke-virtual {p1}, Lcom/hoi/widget/PeriodPicker$SavedState;->a()I

    move-result v0

    iput v0, p0, Lcom/hoi/widget/PeriodPicker;->d:I

    .line 129
    invoke-virtual {p1}, Lcom/hoi/widget/PeriodPicker$SavedState;->b()I

    move-result v0

    iput v0, p0, Lcom/hoi/widget/PeriodPicker;->e:I

    .line 130
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/hoi/widget/PeriodPicker$SavedState;

    iget v2, p0, Lcom/hoi/widget/PeriodPicker;->d:I

    iget v3, p0, Lcom/hoi/widget/PeriodPicker;->e:I

    invoke-direct {v1, v0, v2, v3}, Lcom/hoi/widget/PeriodPicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-object v1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/hoi/widget/PeriodPicker;->a:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/hoi/widget/NumberPicker;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/hoi/widget/PeriodPicker;->b:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/hoi/widget/NumberPicker;->setEnabled(Z)V

    .line 83
    return-void
.end method
