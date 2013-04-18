.class public Lcom/hoi/widget/HorizontalNumberPicker;
.super Landroid/widget/LinearLayout;
.source "HorizontalNumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final a:Lcom/hoi/widget/j;

.field private static final p:[C


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/widget/EditText;

.field private final e:Landroid/text/InputFilter;

.field private f:[Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/hoi/widget/m;

.field private l:Lcom/hoi/widget/j;

.field private m:J

.field private n:Z

.field private o:Z

.field private q:Lcom/hoi/widget/HorizontalNumberPickerButton;

.field private r:Lcom/hoi/widget/HorizontalNumberPickerButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/hoi/widget/h;

    invoke-direct {v0}, Lcom/hoi/widget/h;-><init>()V

    sput-object v0, Lcom/hoi/widget/HorizontalNumberPicker;->a:Lcom/hoi/widget/j;

    .line 309
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hoi/widget/HorizontalNumberPicker;->p:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hoi/widget/HorizontalNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hoi/widget/HorizontalNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Lcom/hoi/widget/i;

    invoke-direct {v0, p0}, Lcom/hoi/widget/i;-><init>(Lcom/hoi/widget/HorizontalNumberPicker;)V

    iput-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->c:Ljava/lang/Runnable;

    .line 79
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->m:J

    .line 95
    const-string v0, "HorizontalNumberPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrent1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0, v3}, Lcom/hoi/widget/HorizontalNumberPicker;->setOrientation(I)V

    .line 97
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 99
    const v1, 0x7f030049

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->b:Landroid/os/Handler;

    .line 101
    new-instance v1, Lcom/hoi/widget/k;

    invoke-direct {v1, p0}, Lcom/hoi/widget/k;-><init>(Lcom/hoi/widget/HorizontalNumberPicker;)V

    .line 102
    new-instance v0, Lcom/hoi/widget/l;

    invoke-direct {v0, p0}, Lcom/hoi/widget/l;-><init>(Lcom/hoi/widget/HorizontalNumberPicker;)V

    iput-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->e:Landroid/text/InputFilter;

    .line 103
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/hoi/widget/HorizontalNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hoi/widget/HorizontalNumberPickerButton;

    iput-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->q:Lcom/hoi/widget/HorizontalNumberPickerButton;

    .line 104
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->q:Lcom/hoi/widget/HorizontalNumberPickerButton;

    invoke-virtual {v0, p0}, Lcom/hoi/widget/HorizontalNumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->q:Lcom/hoi/widget/HorizontalNumberPickerButton;

    invoke-virtual {v0, p0}, Lcom/hoi/widget/HorizontalNumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->q:Lcom/hoi/widget/HorizontalNumberPickerButton;

    invoke-virtual {v0, p0}, Lcom/hoi/widget/HorizontalNumberPickerButton;->a(Lcom/hoi/widget/HorizontalNumberPicker;)V

    .line 107
    const v0, 0x7f080157

    invoke-virtual {p0, v0}, Lcom/hoi/widget/HorizontalNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hoi/widget/HorizontalNumberPickerButton;

    iput-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->r:Lcom/hoi/widget/HorizontalNumberPickerButton;

    .line 108
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->r:Lcom/hoi/widget/HorizontalNumberPickerButton;

    invoke-virtual {v0, p0}, Lcom/hoi/widget/HorizontalNumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->r:Lcom/hoi/widget/HorizontalNumberPickerButton;

    invoke-virtual {v0, p0}, Lcom/hoi/widget/HorizontalNumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->r:Lcom/hoi/widget/HorizontalNumberPickerButton;

    invoke-virtual {v0, p0}, Lcom/hoi/widget/HorizontalNumberPickerButton;->a(Lcom/hoi/widget/HorizontalNumberPicker;)V

    .line 112
    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/hoi/widget/HorizontalNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->d:Landroid/widget/EditText;

    .line 113
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 114
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->d:Landroid/widget/EditText;

    new-array v2, v3, [Landroid/text/InputFilter;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 116
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->d:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 118
    invoke-virtual {p0}, Lcom/hoi/widget/HorizontalNumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0, v4}, Lcom/hoi/widget/HorizontalNumberPicker;->setEnabled(Z)V

    .line 121
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/hoi/widget/HorizontalNumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/hoi/widget/HorizontalNumberPicker;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->f:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 385
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 407
    :goto_0
    return v0

    .line 387
    :cond_0
    const/4 v0, 0x0

    move-object v1, p1

    :goto_1
    iget-object v2, p0, Lcom/hoi/widget/HorizontalNumberPicker;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 390
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 391
    iget-object v2, p0, Lcom/hoi/widget/HorizontalNumberPicker;->f:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    iget v1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->g:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 387
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    iget v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->g:I

    goto :goto_0
.end method

.method private a(II[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p3, p0, Lcom/hoi/widget/HorizontalNumberPicker;->f:[Ljava/lang/String;

    .line 169
    iput p1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->g:I

    .line 170
    iput p2, p0, Lcom/hoi/widget/HorizontalNumberPicker;->h:I

    .line 171
    iput p1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    .line 172
    invoke-direct {p0}, Lcom/hoi/widget/HorizontalNumberPicker;->g()V

    .line 173
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 265
    const-string v0, "validateInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 267
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/hoi/widget/HorizontalNumberPicker;->g()V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hoi/widget/HorizontalNumberPicker;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->g:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->h:I

    if-gt v0, v1, :cond_1

    iget v1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    iput v1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->j:I

    iput v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    invoke-direct {p0}, Lcom/hoi/widget/HorizontalNumberPicker;->f()V

    :cond_1
    invoke-direct {p0}, Lcom/hoi/widget/HorizontalNumberPicker;->g()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/hoi/widget/HorizontalNumberPicker;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/hoi/widget/HorizontalNumberPicker;->c(I)V

    return-void
.end method

.method private a(Lcom/hoi/widget/j;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->l:Lcom/hoi/widget/j;

    .line 137
    return-void
.end method

.method private a(Lcom/hoi/widget/m;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->k:Lcom/hoi/widget/m;

    .line 133
    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hoi/widget/HorizontalNumberPicker;->a(Ljava/lang/String;)I

    move-result v0

    .line 244
    iget v1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->g:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->h:I

    if-gt v0, v1, :cond_0

    .line 245
    iget v1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    iput v1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->j:I

    .line 246
    iput v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    .line 247
    invoke-direct {p0}, Lcom/hoi/widget/HorizontalNumberPicker;->f()V

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/hoi/widget/HorizontalNumberPicker;->g()V

    .line 250
    return-void
.end method

.method static synthetic a(Lcom/hoi/widget/HorizontalNumberPicker;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/hoi/widget/HorizontalNumberPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    return v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->l:Lcom/hoi/widget/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->l:Lcom/hoi/widget/j;

    invoke-interface {v0, p1}, Lcom/hoi/widget/j;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/hoi/widget/HorizontalNumberPicker;)J
    .locals 2
    .parameter

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->m:J

    return-wide v0
.end method

.method private c(I)V
    .locals 2
    .parameter

    .prologue
    .line 210
    iget v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->h:I

    if-le p1, v0, :cond_0

    .line 211
    iget v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->g:I

    .line 215
    :goto_0
    iget v1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    iput v1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->j:I

    .line 216
    iput v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    .line 217
    invoke-direct {p0}, Lcom/hoi/widget/HorizontalNumberPicker;->f()V

    .line 218
    invoke-direct {p0}, Lcom/hoi/widget/HorizontalNumberPicker;->g()V

    .line 219
    return-void

    .line 212
    :cond_0
    iget v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->g:I

    if-ge p1, v0, :cond_1

    .line 213
    iget v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->h:I

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method static synthetic d(Lcom/hoi/widget/HorizontalNumberPicker;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/hoi/widget/HorizontalNumberPicker;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->o:Z

    return v0
.end method

.method static synthetic e()[C
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/hoi/widget/HorizontalNumberPicker;->p:[C

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->k:Lcom/hoi/widget/m;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->k:Lcom/hoi/widget/m;

    iget v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->j:I

    iget v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    .line 225
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/hoi/widget/HorizontalNumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/hoi/widget/HorizontalNumberPicker;)Landroid/text/InputFilter;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->e:Landroid/text/InputFilter;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->f:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->d:Landroid/widget/EditText;

    iget v1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    iget-object v2, p0, Lcom/hoi/widget/HorizontalNumberPicker;->l:Lcom/hoi/widget/j;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hoi/widget/HorizontalNumberPicker;->l:Lcom/hoi/widget/j;

    invoke-interface {v2, v1}, Lcom/hoi/widget/j;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :goto_1
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 240
    return-void

    .line 235
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->f:[Ljava/lang/String;

    iget v2, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    iget v3, p0, Lcom/hoi/widget/HorizontalNumberPicker;->g:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic h(Lcom/hoi/widget/HorizontalNumberPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->h:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 185
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->m:J

    .line 186
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput p1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    .line 177
    invoke-direct {p0}, Lcom/hoi/widget/HorizontalNumberPicker;->g()V

    .line 178
    return-void
.end method

.method public final a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput p1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->g:I

    .line 150
    iput p2, p0, Lcom/hoi/widget/HorizontalNumberPicker;->h:I

    .line 151
    iput p1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    .line 152
    invoke-direct {p0}, Lcom/hoi/widget/HorizontalNumberPicker;->g()V

    .line 153
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->n:Z

    .line 303
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->o:Z

    .line 307
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->d:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/hoi/widget/HorizontalNumberPicker;->a(Landroid/view/View;)V

    .line 415
    iget v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->d:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/hoi/widget/HorizontalNumberPicker;->a(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 195
    :cond_0
    const v0, 0x7f080156

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 196
    iget v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/hoi/widget/HorizontalNumberPicker;->c(I)V

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    const v0, 0x7f080157

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 198
    iget v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->i:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/hoi/widget/HorizontalNumberPicker;->c(I)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    if-nez p2, :cond_0

    .line 259
    invoke-direct {p0, p1}, Lcom/hoi/widget/HorizontalNumberPicker;->a(Landroid/view/View;)V

    .line 262
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 289
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 291
    const v0, 0x7f080156

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 292
    iput-boolean v2, p0, Lcom/hoi/widget/HorizontalNumberPicker;->n:Z

    .line 293
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    :cond_0
    :goto_0
    return v2

    .line 294
    :cond_1
    const v0, 0x7f080157

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 295
    iput-boolean v2, p0, Lcom/hoi/widget/HorizontalNumberPicker;->o:Z

    .line 296
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hoi/widget/HorizontalNumberPicker;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->q:Lcom/hoi/widget/HorizontalNumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/hoi/widget/HorizontalNumberPickerButton;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->r:Lcom/hoi/widget/HorizontalNumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/hoi/widget/HorizontalNumberPickerButton;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/hoi/widget/HorizontalNumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 129
    return-void
.end method
