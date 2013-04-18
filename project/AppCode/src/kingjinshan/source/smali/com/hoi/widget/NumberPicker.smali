.class public Lcom/hoi/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final a:Lcom/hoi/widget/x;

.field public static final b:Lcom/hoi/widget/x;

.field private static final q:[C


# instance fields
.field private final c:Landroid/os/Handler;

.field private final d:Ljava/lang/Runnable;

.field private final e:Landroid/widget/EditText;

.field private final f:Landroid/text/InputFilter;

.field private g:[Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/hoi/widget/aa;

.field private m:Lcom/hoi/widget/x;

.field private n:J

.field private o:Z

.field private p:Z

.field private r:Lcom/hoi/widget/NumberPickerButton;

.field private s:Lcom/hoi/widget/NumberPickerButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/hoi/widget/u;

    invoke-direct {v0}, Lcom/hoi/widget/u;-><init>()V

    sput-object v0, Lcom/hoi/widget/NumberPicker;->a:Lcom/hoi/widget/x;

    .line 52
    new-instance v0, Lcom/hoi/widget/v;

    invoke-direct {v0}, Lcom/hoi/widget/v;-><init>()V

    sput-object v0, Lcom/hoi/widget/NumberPicker;->b:Lcom/hoi/widget/x;

    .line 335
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hoi/widget/NumberPicker;->q:[C

    return-void

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
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hoi/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hoi/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance v0, Lcom/hoi/widget/w;

    invoke-direct {v0, p0}, Lcom/hoi/widget/w;-><init>(Lcom/hoi/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/hoi/widget/NumberPicker;->d:Ljava/lang/Runnable;

    .line 108
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/hoi/widget/NumberPicker;->n:J

    .line 124
    invoke-virtual {p0, v2}, Lcom/hoi/widget/NumberPicker;->setOrientation(I)V

    .line 125
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 127
    const v1, 0x7f0300ca

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hoi/widget/NumberPicker;->c:Landroid/os/Handler;

    .line 129
    new-instance v1, Lcom/hoi/widget/y;

    invoke-direct {v1, p0}, Lcom/hoi/widget/y;-><init>(Lcom/hoi/widget/NumberPicker;)V

    .line 130
    new-instance v0, Lcom/hoi/widget/z;

    invoke-direct {v0, p0}, Lcom/hoi/widget/z;-><init>(Lcom/hoi/widget/NumberPicker;)V

    iput-object v0, p0, Lcom/hoi/widget/NumberPicker;->f:Landroid/text/InputFilter;

    .line 131
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/hoi/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hoi/widget/NumberPickerButton;

    iput-object v0, p0, Lcom/hoi/widget/NumberPicker;->r:Lcom/hoi/widget/NumberPickerButton;

    .line 132
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->r:Lcom/hoi/widget/NumberPickerButton;

    invoke-virtual {v0, p0}, Lcom/hoi/widget/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->r:Lcom/hoi/widget/NumberPickerButton;

    invoke-virtual {v0, p0}, Lcom/hoi/widget/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->r:Lcom/hoi/widget/NumberPickerButton;

    invoke-virtual {v0, p0}, Lcom/hoi/widget/NumberPickerButton;->a(Lcom/hoi/widget/NumberPicker;)V

    .line 135
    const v0, 0x7f080157

    invoke-virtual {p0, v0}, Lcom/hoi/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hoi/widget/NumberPickerButton;

    iput-object v0, p0, Lcom/hoi/widget/NumberPicker;->s:Lcom/hoi/widget/NumberPickerButton;

    .line 136
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->s:Lcom/hoi/widget/NumberPickerButton;

    invoke-virtual {v0, p0}, Lcom/hoi/widget/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->s:Lcom/hoi/widget/NumberPickerButton;

    invoke-virtual {v0, p0}, Lcom/hoi/widget/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->s:Lcom/hoi/widget/NumberPickerButton;

    invoke-virtual {v0, p0}, Lcom/hoi/widget/NumberPickerButton;->a(Lcom/hoi/widget/NumberPicker;)V

    .line 140
    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/hoi/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    .line 141
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 142
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 143
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 145
    invoke-virtual {p0}, Lcom/hoi/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0, v3}, Lcom/hoi/widget/NumberPicker;->setEnabled(Z)V

    .line 148
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/hoi/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/hoi/widget/NumberPicker;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->g:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 411
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 433
    :goto_0
    return v0

    .line 413
    :cond_0
    const/4 v0, 0x0

    move-object v1, p1

    :goto_1
    iget-object v2, p0, Lcom/hoi/widget/NumberPicker;->g:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 416
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 417
    iget-object v2, p0, Lcom/hoi/widget/NumberPicker;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    iget v1, p0, Lcom/hoi/widget/NumberPicker;->h:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 413
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    iget v0, p0, Lcom/hoi/widget/NumberPicker;->h:I

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 292
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 293
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/hoi/widget/NumberPicker;->g()V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hoi/widget/NumberPicker;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/hoi/widget/NumberPicker;->h:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Lcom/hoi/widget/NumberPicker;->i:I

    if-gt v0, v1, :cond_1

    iget v1, p0, Lcom/hoi/widget/NumberPicker;->j:I

    iput v1, p0, Lcom/hoi/widget/NumberPicker;->k:I

    iput v0, p0, Lcom/hoi/widget/NumberPicker;->j:I

    invoke-direct {p0}, Lcom/hoi/widget/NumberPicker;->f()V

    :cond_1
    invoke-direct {p0}, Lcom/hoi/widget/NumberPicker;->g()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/hoi/widget/NumberPicker;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/hoi/widget/NumberPicker;->c(I)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hoi/widget/NumberPicker;->a(Ljava/lang/String;)I

    move-result v0

    .line 271
    iget v1, p0, Lcom/hoi/widget/NumberPicker;->h:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/hoi/widget/NumberPicker;->i:I

    if-gt v0, v1, :cond_0

    .line 272
    iget v1, p0, Lcom/hoi/widget/NumberPicker;->j:I

    iput v1, p0, Lcom/hoi/widget/NumberPicker;->k:I

    .line 273
    iput v0, p0, Lcom/hoi/widget/NumberPicker;->j:I

    .line 274
    invoke-direct {p0}, Lcom/hoi/widget/NumberPicker;->f()V

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/hoi/widget/NumberPicker;->g()V

    .line 277
    return-void
.end method

.method static synthetic a(Lcom/hoi/widget/NumberPicker;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/hoi/widget/NumberPicker;->o:Z

    return v0
.end method

.method static synthetic b(Lcom/hoi/widget/NumberPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/hoi/widget/NumberPicker;->j:I

    return v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->m:Lcom/hoi/widget/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->m:Lcom/hoi/widget/x;

    invoke-interface {v0, p1}, Lcom/hoi/widget/x;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/hoi/widget/NumberPicker;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/hoi/widget/NumberPicker;->n:J

    return-wide v0
.end method

.method private c(I)V
    .locals 2
    .parameter

    .prologue
    .line 237
    iget v0, p0, Lcom/hoi/widget/NumberPicker;->i:I

    if-le p1, v0, :cond_0

    .line 238
    iget v0, p0, Lcom/hoi/widget/NumberPicker;->h:I

    .line 242
    :goto_0
    iget v1, p0, Lcom/hoi/widget/NumberPicker;->j:I

    iput v1, p0, Lcom/hoi/widget/NumberPicker;->k:I

    .line 243
    iput v0, p0, Lcom/hoi/widget/NumberPicker;->j:I

    .line 244
    invoke-direct {p0}, Lcom/hoi/widget/NumberPicker;->f()V

    .line 245
    invoke-direct {p0}, Lcom/hoi/widget/NumberPicker;->g()V

    .line 246
    return-void

    .line 239
    :cond_0
    iget v0, p0, Lcom/hoi/widget/NumberPicker;->h:I

    if-ge p1, v0, :cond_1

    .line 240
    iget v0, p0, Lcom/hoi/widget/NumberPicker;->i:I

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method static synthetic d(Lcom/hoi/widget/NumberPicker;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/hoi/widget/NumberPicker;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/hoi/widget/NumberPicker;->p:Z

    return v0
.end method

.method static synthetic e()[C
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/hoi/widget/NumberPicker;->q:[C

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->l:Lcom/hoi/widget/aa;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->l:Lcom/hoi/widget/aa;

    iget v1, p0, Lcom/hoi/widget/NumberPicker;->k:I

    iget v1, p0, Lcom/hoi/widget/NumberPicker;->j:I

    invoke-interface {v0, v1}, Lcom/hoi/widget/aa;->a(I)V

    .line 252
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/hoi/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->g:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/hoi/widget/NumberPicker;)Landroid/text/InputFilter;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->f:Landroid/text/InputFilter;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->g:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    iget v1, p0, Lcom/hoi/widget/NumberPicker;->j:I

    iget-object v2, p0, Lcom/hoi/widget/NumberPicker;->m:Lcom/hoi/widget/x;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hoi/widget/NumberPicker;->m:Lcom/hoi/widget/x;

    invoke-interface {v2, v1}, Lcom/hoi/widget/x;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :goto_1
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 267
    return-void

    .line 262
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hoi/widget/NumberPicker;->g:[Ljava/lang/String;

    iget v2, p0, Lcom/hoi/widget/NumberPicker;->j:I

    iget v3, p0, Lcom/hoi/widget/NumberPicker;->h:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic h(Lcom/hoi/widget/NumberPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/hoi/widget/NumberPicker;->i:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 93
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 94
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 96
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput p1, p0, Lcom/hoi/widget/NumberPicker;->j:I

    .line 204
    invoke-direct {p0}, Lcom/hoi/widget/NumberPicker;->g()V

    .line 205
    return-void
.end method

.method public final a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput p1, p0, Lcom/hoi/widget/NumberPicker;->h:I

    .line 177
    iput p2, p0, Lcom/hoi/widget/NumberPicker;->i:I

    .line 178
    iput p1, p0, Lcom/hoi/widget/NumberPicker;->j:I

    .line 179
    invoke-direct {p0}, Lcom/hoi/widget/NumberPicker;->g()V

    .line 180
    return-void
.end method

.method public final a(II[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p3, p0, Lcom/hoi/widget/NumberPicker;->g:[Ljava/lang/String;

    .line 196
    iput p1, p0, Lcom/hoi/widget/NumberPicker;->h:I

    .line 197
    iput p2, p0, Lcom/hoi/widget/NumberPicker;->i:I

    .line 198
    iput p1, p0, Lcom/hoi/widget/NumberPicker;->j:I

    .line 199
    invoke-direct {p0}, Lcom/hoi/widget/NumberPicker;->g()V

    .line 200
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/hoi/widget/NumberPicker;->n:J

    .line 213
    return-void
.end method

.method public final a(Lcom/hoi/widget/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/hoi/widget/NumberPicker;->l:Lcom/hoi/widget/aa;

    .line 160
    return-void
.end method

.method public final a(Lcom/hoi/widget/x;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/hoi/widget/NumberPicker;->m:Lcom/hoi/widget/x;

    .line 164
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 81
    if-nez p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->r:Lcom/hoi/widget/NumberPickerButton;

    invoke-virtual {v0, v2}, Lcom/hoi/widget/NumberPickerButton;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->s:Lcom/hoi/widget/NumberPickerButton;

    invoke-virtual {v0, v2}, Lcom/hoi/widget/NumberPickerButton;->setVisibility(I)V

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->r:Lcom/hoi/widget/NumberPickerButton;

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPickerButton;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->s:Lcom/hoi/widget/NumberPickerButton;

    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPickerButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hoi/widget/NumberPicker;->o:Z

    .line 329
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hoi/widget/NumberPicker;->p:Z

    .line 333
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/hoi/widget/NumberPicker;->a(Landroid/view/View;)V

    .line 441
    iget v0, p0, Lcom/hoi/widget/NumberPicker;->j:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/hoi/widget/NumberPicker;->a(Landroid/view/View;)V

    .line 218
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 222
    :cond_0
    const v0, 0x7f080156

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 223
    iget v0, p0, Lcom/hoi/widget/NumberPicker;->j:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/hoi/widget/NumberPicker;->c(I)V

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 224
    :cond_2
    const v0, 0x7f080157

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 225
    iget v0, p0, Lcom/hoi/widget/NumberPicker;->j:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/hoi/widget/NumberPicker;->c(I)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 285
    if-nez p2, :cond_0

    .line 286
    invoke-direct {p0, p1}, Lcom/hoi/widget/NumberPicker;->a(Landroid/view/View;)V

    .line 288
    :cond_0
    invoke-direct {p0, p1}, Lcom/hoi/widget/NumberPicker;->a(Landroid/view/View;)V

    .line 289
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 315
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 317
    const v0, 0x7f080156

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 318
    iput-boolean v2, p0, Lcom/hoi/widget/NumberPicker;->o:Z

    .line 319
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hoi/widget/NumberPicker;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    :cond_0
    :goto_0
    return v2

    .line 320
    :cond_1
    const v0, 0x7f080157

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 321
    iput-boolean v2, p0, Lcom/hoi/widget/NumberPicker;->p:Z

    .line 322
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hoi/widget/NumberPicker;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->r:Lcom/hoi/widget/NumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/hoi/widget/NumberPickerButton;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->s:Lcom/hoi/widget/NumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/hoi/widget/NumberPickerButton;->setEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/hoi/widget/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 156
    return-void
.end method
