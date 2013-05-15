.class public Lcom/avast/android/generic/ui/widget/PasswordTextView;
.super Landroid/widget/EditText;
.source "PasswordTextView.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private c:Lcom/avast/android/generic/ui/widget/o;

.field private d:Lcom/avast/android/generic/ui/widget/p;

.field private e:Lcom/avast/android/generic/ui/widget/n;

.field private f:Lcom/avast/android/generic/ui/widget/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "\\**[^\\*]+\\**"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->a:Ljava/util/regex/Pattern;

    .line 55
    const-string v0, ".*\\*+.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-direct {p0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->d()V

    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 256
    invoke-direct {p0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->d()V

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 261
    invoke-direct {p0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->d()V

    .line 262
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/widget/PasswordTextView;)Lcom/avast/android/generic/ui/widget/n;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->e:Lcom/avast/android/generic/ui/widget/n;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/generic/ui/widget/PasswordTextView;)Lcom/avast/android/generic/ui/widget/p;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->d:Lcom/avast/android/generic/ui/widget/p;

    return-object v0
.end method

.method static synthetic b()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic c()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->b:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 265
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 266
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->setInputType(I)V

    .line 267
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->c:Lcom/avast/android/generic/ui/widget/o;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 268
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->d:Lcom/avast/android/generic/ui/widget/p;

    iget-object v0, v0, Lcom/avast/android/generic/ui/widget/p;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter

    .prologue
    .line 345
    check-cast p1, Lcom/avast/android/generic/ui/widget/PasswordTextView$SavedState;

    .line 346
    invoke-virtual {p1}, Lcom/avast/android/generic/ui/widget/PasswordTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 348
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->d:Lcom/avast/android/generic/ui/widget/p;

    iget-object v0, v0, Lcom/avast/android/generic/ui/widget/p;->a:Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/avast/android/generic/ui/widget/PasswordTextView$SavedState;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget-object v0, p1, Lcom/avast/android/generic/ui/widget/PasswordTextView$SavedState;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    .line 353
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 354
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget v0, p1, Lcom/avast/android/generic/ui/widget/PasswordTextView$SavedState;->b:I

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->setSelection(I)V

    .line 358
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->d:Lcom/avast/android/generic/ui/widget/p;

    iget-object v0, v0, Lcom/avast/android/generic/ui/widget/p;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->getSelectionStart()I

    move-result v1

    .line 368
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    invoke-super {p0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 370
    new-instance v3, Lcom/avast/android/generic/ui/widget/PasswordTextView$SavedState;

    invoke-direct {v3, v2}, Lcom/avast/android/generic/ui/widget/PasswordTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 371
    iput-object v0, v3, Lcom/avast/android/generic/ui/widget/PasswordTextView$SavedState;->a:Ljava/lang/String;

    .line 372
    iput v1, v3, Lcom/avast/android/generic/ui/widget/PasswordTextView$SavedState;->b:I

    .line 373
    return-object v3
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 302
    if-nez p1, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->e:Lcom/avast/android/generic/ui/widget/n;

    if-nez v0, :cond_1

    .line 307
    new-instance v0, Lcom/avast/android/generic/ui/widget/n;

    invoke-direct {v0, p0, v1}, Lcom/avast/android/generic/ui/widget/n;-><init>(Lcom/avast/android/generic/ui/widget/PasswordTextView;Lcom/avast/android/generic/ui/widget/k;)V

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->e:Lcom/avast/android/generic/ui/widget/n;

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->d:Lcom/avast/android/generic/ui/widget/p;

    if-nez v0, :cond_2

    .line 310
    new-instance v0, Lcom/avast/android/generic/ui/widget/p;

    invoke-direct {v0}, Lcom/avast/android/generic/ui/widget/p;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->d:Lcom/avast/android/generic/ui/widget/p;

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->c:Lcom/avast/android/generic/ui/widget/o;

    if-nez v0, :cond_3

    .line 313
    new-instance v0, Lcom/avast/android/generic/ui/widget/o;

    invoke-direct {v0, p0, v1}, Lcom/avast/android/generic/ui/widget/o;-><init>(Lcom/avast/android/generic/ui/widget/PasswordTextView;Lcom/avast/android/generic/ui/widget/k;)V

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->c:Lcom/avast/android/generic/ui/widget/o;

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->f:Lcom/avast/android/generic/ui/widget/l;

    if-nez v0, :cond_4

    .line 316
    sget-object v0, Lcom/avast/android/generic/ui/widget/l;->a:Lcom/avast/android/generic/ui/widget/l;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->f:Lcom/avast/android/generic/ui/widget/l;

    .line 320
    :cond_4
    array-length v0, p1

    if-nez v0, :cond_5

    .line 321
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 322
    new-instance v1, Lcom/avast/android/generic/ui/widget/m;

    iget-object v2, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->f:Lcom/avast/android/generic/ui/widget/l;

    invoke-direct {v1, p0, v2}, Lcom/avast/android/generic/ui/widget/m;-><init>(Lcom/avast/android/generic/ui/widget/PasswordTextView;Lcom/avast/android/generic/ui/widget/l;)V

    aput-object v1, v0, v3

    .line 323
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->d:Lcom/avast/android/generic/ui/widget/p;

    aput-object v2, v0, v1

    .line 331
    :goto_0
    invoke-super {p0, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 332
    return-void

    .line 325
    :cond_5
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 326
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    array-length v1, p1

    new-instance v2, Lcom/avast/android/generic/ui/widget/m;

    iget-object v3, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->f:Lcom/avast/android/generic/ui/widget/l;

    invoke-direct {v2, p0, v3}, Lcom/avast/android/generic/ui/widget/m;-><init>(Lcom/avast/android/generic/ui/widget/PasswordTextView;Lcom/avast/android/generic/ui/widget/l;)V

    aput-object v2, v0, v1

    .line 328
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/avast/android/generic/ui/widget/PasswordTextView;->d:Lcom/avast/android/generic/ui/widget/p;

    aput-object v2, v0, v1

    goto :goto_0
.end method
