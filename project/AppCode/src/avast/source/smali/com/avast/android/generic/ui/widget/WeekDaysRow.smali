.class public Lcom/avast/android/generic/ui/widget/WeekDaysRow;
.super Lcom/avast/android/generic/ui/widget/Row;
.source "WeekDaysRow.java"


# instance fields
.field private a:[Landroid/widget/ToggleButton;

.field private b:I

.field private c:I

.field private m:Z

.field private n:Lcom/avast/android/generic/ui/widget/ah;

.field private o:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a:[Landroid/widget/ToggleButton;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->m:Z

    .line 120
    new-instance v0, Lcom/avast/android/generic/ui/widget/ag;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/ui/widget/ag;-><init>(Lcom/avast/android/generic/ui/widget/WeekDaysRow;)V

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->o:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    sget v0, Lcom/avast/android/generic/p;->b:I

    invoke-direct {p0, p1, p2, v0}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a:[Landroid/widget/ToggleButton;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->m:Z

    .line 120
    new-instance v0, Lcom/avast/android/generic/ui/widget/ag;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/ui/widget/ag;-><init>(Lcom/avast/android/generic/ui/widget/WeekDaysRow;)V

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->o:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 59
    sget-object v0, Lcom/avast/android/generic/ab;->e:[I

    sget v1, Lcom/avast/android/generic/p;->b:I

    sget v2, Lcom/avast/android/generic/aa;->a:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a:[Landroid/widget/ToggleButton;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->m:Z

    .line 120
    new-instance v0, Lcom/avast/android/generic/ui/widget/ag;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/ui/widget/ag;-><init>(Lcom/avast/android/generic/ui/widget/WeekDaysRow;)V

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->o:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 53
    sget-object v0, Lcom/avast/android/generic/ab;->e:[I

    sget v1, Lcom/avast/android/generic/aa;->a:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/widget/WeekDaysRow;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->c:I

    return p1
.end method

.method private a(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->b:I

    .line 64
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/widget/WeekDaysRow;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->m:Z

    return v0
.end method

.method private b(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 148
    move v0, v1

    move v2, v3

    .line 149
    :goto_0
    const/4 v4, 0x7

    if-ge v0, v4, :cond_1

    .line 150
    and-int v4, p1, v2

    if-lez v4, :cond_0

    .line 151
    iget-object v4, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 155
    :goto_1
    mul-int/lit8 v2, v2, 0x2

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    iget-object v4, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1

    .line 157
    :cond_1
    iput p1, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->c:I

    .line 158
    return-void
.end method

.method static synthetic b(Lcom/avast/android/generic/ui/widget/WeekDaysRow;)[Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a:[Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/generic/ui/widget/WeekDaysRow;)Lcom/avast/android/generic/ui/widget/ah;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->n:Lcom/avast/android/generic/ui/widget/ah;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 6

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/v;->o:I

    invoke-static {v0, v1, p0}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    .line 72
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 74
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v0, 0x7

    if-ge v2, v0, :cond_1

    .line 75
    add-int/lit8 v0, v2, 0x7

    add-int/lit8 v1, v3, -0x2

    add-int/2addr v0, v1

    rem-int/lit8 v1, v0, 0x7

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 79
    iget-object v5, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->o:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/avast/android/generic/d;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 83
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a:[Landroid/widget/ToggleButton;

    aput-object v0, v1, v2

    .line 74
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/avast/android/generic/d;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 90
    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->b(I)V

    .line 162
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/avast/android/generic/d;->b(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/avast/android/generic/d/e;->a(Ljava/lang/String;I)Z

    .line 163
    return-void
.end method

.method public a(Lcom/avast/android/generic/ui/widget/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->n:Lcom/avast/android/generic/ui/widget/ah;

    .line 118
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->m:Z

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->g:Ljava/lang/String;

    iget v2, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->b:I

    invoke-interface {v0, v1, v2}, Lcom/avast/android/generic/d/e;->b(Ljava/lang/String;I)I

    move-result v0

    .line 97
    invoke-static {v0}, Lcom/avast/android/generic/d;->c(I)I

    move-result v0

    .line 98
    invoke-direct {p0, v0}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iput-boolean v3, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->m:Z

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->m:Z

    throw v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->c:I

    return v0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->setEnabled(Z)V

    .line 106
    invoke-super {p0, v0}, Lcom/avast/android/generic/ui/widget/Row;->setFocusable(Z)V

    .line 107
    invoke-super {p0, v0}, Lcom/avast/android/generic/ui/widget/Row;->setClickable(Z)V

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a:[Landroid/widget/ToggleButton;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 111
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ToggleButton;->setFocusable(Z)V

    .line 112
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method
