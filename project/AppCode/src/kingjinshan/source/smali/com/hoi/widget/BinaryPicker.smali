.class public Lcom/hoi/widget/BinaryPicker;
.super Landroid/widget/FrameLayout;
.source "BinaryPicker.java"


# instance fields
.field private final a:Lcom/hoi/widget/NumberPicker;

.field private final b:Lcom/hoi/widget/NumberPicker;

.field private c:Lcom/hoi/widget/c;

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hoi/widget/BinaryPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/hoi/widget/BinaryPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    const v1, 0x7f0300d1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    const v0, 0x7f08030f

    invoke-virtual {p0, v0}, Lcom/hoi/widget/BinaryPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hoi/widget/NumberPicker;

    iput-object v0, p0, Lcom/hoi/widget/BinaryPicker;->a:Lcom/hoi/widget/NumberPicker;

    .line 50
    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->a:Lcom/hoi/widget/NumberPicker;

    sget-object v1, Lcom/hoi/widget/NumberPicker;->b:Lcom/hoi/widget/x;

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(Lcom/hoi/widget/x;)V

    .line 51
    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->a:Lcom/hoi/widget/NumberPicker;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/hoi/widget/NumberPicker;->a(J)V

    .line 53
    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->a:Lcom/hoi/widget/NumberPicker;

    new-instance v1, Lcom/hoi/widget/a;

    invoke-direct {v1, p0}, Lcom/hoi/widget/a;-><init>(Lcom/hoi/widget/BinaryPicker;)V

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(Lcom/hoi/widget/aa;)V

    .line 64
    const v0, 0x7f080310

    invoke-virtual {p0, v0}, Lcom/hoi/widget/BinaryPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hoi/widget/NumberPicker;

    iput-object v0, p0, Lcom/hoi/widget/BinaryPicker;->b:Lcom/hoi/widget/NumberPicker;

    .line 65
    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->b:Lcom/hoi/widget/NumberPicker;

    sget-object v1, Lcom/hoi/widget/NumberPicker;->b:Lcom/hoi/widget/x;

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(Lcom/hoi/widget/x;)V

    .line 66
    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->b:Lcom/hoi/widget/NumberPicker;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/hoi/widget/NumberPicker;->a(J)V

    .line 69
    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->b:Lcom/hoi/widget/NumberPicker;

    new-instance v1, Lcom/hoi/widget/b;

    invoke-direct {v1, p0}, Lcom/hoi/widget/b;-><init>(Lcom/hoi/widget/BinaryPicker;)V

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(Lcom/hoi/widget/aa;)V

    .line 81
    invoke-virtual {p0}, Lcom/hoi/widget/BinaryPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hoi/widget/BinaryPicker;->setEnabled(Z)V

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/hoi/widget/BinaryPicker;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput p1, p0, Lcom/hoi/widget/BinaryPicker;->d:I

    return p1
.end method

.method static synthetic a(Lcom/hoi/widget/BinaryPicker;)Lcom/hoi/widget/c;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->c:Lcom/hoi/widget/c;

    return-object v0
.end method

.method static synthetic b(Lcom/hoi/widget/BinaryPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/hoi/widget/BinaryPicker;->d:I

    return v0
.end method

.method static synthetic b(Lcom/hoi/widget/BinaryPicker;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput p1, p0, Lcom/hoi/widget/BinaryPicker;->e:I

    return p1
.end method

.method static synthetic c(Lcom/hoi/widget/BinaryPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/hoi/widget/BinaryPicker;->e:I

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->a:Lcom/hoi/widget/NumberPicker;

    iget v1, p0, Lcom/hoi/widget/BinaryPicker;->d:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(I)V

    .line 116
    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->b:Lcom/hoi/widget/NumberPicker;

    iget v1, p0, Lcom/hoi/widget/BinaryPicker;->e:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(I)V

    .line 117
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/hoi/widget/BinaryPicker;->d:I

    return v0
.end method

.method public final a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput p1, p0, Lcom/hoi/widget/BinaryPicker;->d:I

    .line 95
    iput p2, p0, Lcom/hoi/widget/BinaryPicker;->e:I

    .line 96
    return-void
.end method

.method public final a(IIII[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->a:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/hoi/widget/NumberPicker;->a(II)V

    .line 38
    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->b:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0, p3, p4, p5}, Lcom/hoi/widget/NumberPicker;->a(II[Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->b:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/hoi/widget/NumberPicker;->a()V

    .line 40
    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->b:Lcom/hoi/widget/NumberPicker;

    if-ge p3, p4, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(Z)V

    .line 41
    return-void

    .line 40
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(IILcom/hoi/widget/c;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    iput p1, p0, Lcom/hoi/widget/BinaryPicker;->d:I

    .line 109
    iput p2, p0, Lcom/hoi/widget/BinaryPicker;->e:I

    .line 110
    iput-object p3, p0, Lcom/hoi/widget/BinaryPicker;->c:Lcom/hoi/widget/c;

    .line 111
    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->a:Lcom/hoi/widget/NumberPicker;

    iget v1, p0, Lcom/hoi/widget/BinaryPicker;->d:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(I)V

    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->b:Lcom/hoi/widget/NumberPicker;

    iget v1, p0, Lcom/hoi/widget/BinaryPicker;->e:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(I)V

    .line 112
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/hoi/widget/BinaryPicker;->e:I

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/hoi/widget/BinaryPicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 123
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    check-cast p1, Lcom/hoi/widget/BinaryPicker$SavedState;

    .line 135
    invoke-virtual {p1}, Lcom/hoi/widget/BinaryPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 136
    invoke-virtual {p1}, Lcom/hoi/widget/BinaryPicker$SavedState;->a()I

    move-result v0

    iput v0, p0, Lcom/hoi/widget/BinaryPicker;->d:I

    .line 137
    invoke-virtual {p1}, Lcom/hoi/widget/BinaryPicker$SavedState;->b()I

    move-result v0

    iput v0, p0, Lcom/hoi/widget/BinaryPicker;->e:I

    .line 138
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/hoi/widget/BinaryPicker$SavedState;

    iget v2, p0, Lcom/hoi/widget/BinaryPicker;->d:I

    iget v3, p0, Lcom/hoi/widget/BinaryPicker;->e:I

    invoke-direct {v1, v0, v2, v3}, Lcom/hoi/widget/BinaryPicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-object v1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->a:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/hoi/widget/NumberPicker;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/hoi/widget/BinaryPicker;->b:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/hoi/widget/NumberPicker;->setEnabled(Z)V

    .line 91
    return-void
.end method
