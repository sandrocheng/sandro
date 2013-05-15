.class public Lcom/avast/android/generic/ui/widget/NextRow;
.super Lcom/avast/android/generic/ui/widget/Row;
.source "NextRow.java"


# instance fields
.field protected a:Z

.field private b:Ljava/lang/String;

.field private c:Landroid/support/v4/app/FragmentManager;

.field private m:I

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 72
    sget v0, Lcom/avast/android/generic/p;->a:I

    invoke-direct {p0, p1, p2, v0}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    sget-object v0, Lcom/avast/android/generic/ab;->e:[I

    sget v1, Lcom/avast/android/generic/p;->a:I

    sget v2, Lcom/avast/android/generic/aa;->c:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/NextRow;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 75
    sget-object v0, Lcom/avast/android/generic/ab;->f:[I

    sget v1, Lcom/avast/android/generic/p;->a:I

    sget v2, Lcom/avast/android/generic/aa;->c:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/NextRow;->b(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    sget-object v0, Lcom/avast/android/generic/ab;->e:[I

    sget v1, Lcom/avast/android/generic/aa;->c:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/NextRow;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 61
    sget-object v0, Lcom/avast/android/generic/ab;->f:[I

    sget v1, Lcom/avast/android/generic/aa;->c:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/NextRow;->b(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/widget/NextRow;)Landroid/support/v4/app/FragmentManager;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/NextRow;->c:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void
.end method

.method static synthetic b(Lcom/avast/android/generic/ui/widget/NextRow;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/NextRow;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/NextRow;->b:Ljava/lang/String;

    .line 84
    const/4 v0, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/ui/widget/NextRow;->m:I

    .line 85
    const/4 v0, 0x3

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/ui/widget/NextRow;->p:I

    .line 86
    const/4 v0, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/NextRow;->a:Z

    .line 88
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method

.method static synthetic c(Lcom/avast/android/generic/ui/widget/NextRow;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/avast/android/generic/ui/widget/NextRow;->m:I

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/NextRow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/v;->n:I

    invoke-static {v0, v1, p0}, Lcom/avast/android/generic/ui/widget/NextRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 98
    sget v0, Lcom/avast/android/generic/t;->ac:I

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/NextRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/NextRow;->n:Landroid/widget/ImageView;

    .line 100
    sget v0, Lcom/avast/android/generic/t;->P:I

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/NextRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/NextRow;->o:Landroid/widget/ImageView;

    .line 101
    iget v0, p0, Lcom/avast/android/generic/ui/widget/NextRow;->p:I

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/NextRow;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/NextRow;->o:Landroid/widget/ImageView;

    iget v1, p0, Lcom/avast/android/generic/ui/widget/NextRow;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/widget/NextRow;->a:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/NextRow;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 107
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 108
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/NextRow;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    :cond_0
    new-instance v0, Lcom/avast/android/generic/ui/widget/j;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/ui/widget/j;-><init>(Lcom/avast/android/generic/ui/widget/NextRow;)V

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/NextRow;->a(Landroid/view/View$OnClickListener;)V

    .line 135
    return-void
.end method
