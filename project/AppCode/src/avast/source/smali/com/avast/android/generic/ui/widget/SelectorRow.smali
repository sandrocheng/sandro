.class public Lcom/avast/android/generic/ui/widget/SelectorRow;
.super Lcom/avast/android/generic/ui/widget/Row;
.source "SelectorRow.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:I

.field private b:I

.field private c:[I

.field private m:[Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Lcom/avast/android/generic/ui/widget/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/SelectorRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    sget v0, Lcom/avast/android/generic/p;->a:I

    invoke-direct {p0, p1, p2, v0}, Lcom/avast/android/generic/ui/widget/SelectorRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method private a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 291
    iput v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->n:I

    .line 292
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->c:[I

    if-eqz v1, :cond_0

    .line 293
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->c:[I

    aget v1, v1, v0

    .line 295
    if-ne p1, v1, :cond_2

    .line 296
    iput v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->n:I

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->f()V

    .line 303
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->q:Lcom/avast/android/generic/ui/widget/u;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->q:Lcom/avast/android/generic/ui/widget/u;

    iget v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->n:I

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->c()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/avast/android/generic/ui/widget/u;->a(Lcom/avast/android/generic/ui/widget/SelectorRow;II)V

    .line 307
    :cond_1
    return-void

    .line 293
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/widget/SelectorRow;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->m:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/generic/ui/widget/SelectorRow;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->n:I

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/avast/android/generic/d/e;->a(Ljava/lang/String;I)Z

    .line 332
    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->m:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->m:[Ljava/lang/String;

    iget v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->n:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->o:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->o:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->d(Ljava/lang/String;)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/v;->n:I

    invoke-static {v0, v1, p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 109
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "You have to specify android:id, otherwise the SelectorRow won\'t work."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->b:I

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->m:[Ljava/lang/String;

    .line 118
    :cond_1
    iget v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->a:I

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->c:[I

    .line 122
    :cond_2
    new-instance v0, Lcom/avast/android/generic/ui/widget/t;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/ui/widget/t;-><init>(Lcom/avast/android/generic/ui/widget/SelectorRow;)V

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->a(Landroid/view/View$OnClickListener;)V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->n:I

    .line 136
    invoke-direct {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->f()V

    .line 137
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 160
    iput p1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->b:I

    .line 161
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->m:[Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->f()V

    .line 163
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-super {p0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/Row;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->o:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/avast/android/generic/ab;->l:[I

    sget v1, Lcom/avast/android/generic/aa;->c:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->a:I

    .line 96
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->b:I

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    sget-object v0, Lcom/avast/android/generic/ab;->e:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->p:I

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    return-void
.end method

.method public a(Lcom/avast/android/generic/ui/widget/u;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->q:Lcom/avast/android/generic/ui/widget/u;

    .line 210
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->o:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public a([I)V
    .locals 1
    .parameter

    .prologue
    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->a:I

    .line 198
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->c:[I

    .line 199
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->g:Ljava/lang/String;

    iget v2, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->p:I

    invoke-interface {v0, v1, v2}, Lcom/avast/android/generic/d/e;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ui/widget/SelectorRow;->a(IZ)V

    .line 340
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput p1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->p:I

    .line 251
    return-void
.end method

.method public c()I
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->c:[I

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->c:[I

    iget v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->n:I

    aget v0, v0, v1

    .line 263
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->n:I

    goto :goto_0
.end method

.method public c(I)V
    .locals 1
    .parameter

    .prologue
    .line 277
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->a(IZ)V

    .line 278
    invoke-direct {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->d()V

    .line 279
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter

    .prologue
    .line 311
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 312
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->n:I

    .line 313
    invoke-direct {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->f()V

    .line 314
    invoke-direct {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->d()V

    .line 315
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->q:Lcom/avast/android/generic/ui/widget/u;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->q:Lcom/avast/android/generic/ui/widget/u;

    iget v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->n:I

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->c()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/avast/android/generic/ui/widget/u;->a(Lcom/avast/android/generic/ui/widget/SelectorRow;II)V

    .line 319
    :cond_0
    const/4 v0, 0x1

    .line 321
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Lcom/avast/android/generic/ui/widget/Row;->onDetachedFromWindow()V

    .line 142
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/avast/android/generic/util/s;->a(ILandroid/os/Handler$Callback;)V

    .line 144
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/avast/android/generic/ui/widget/Row;->onDetachedFromWindow()V

    .line 149
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/avast/android/generic/util/s;->b(ILandroid/os/Handler$Callback;)V

    .line 151
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 366
    instance-of v0, p1, Lcom/avast/android/generic/ui/widget/SelectorRow$SavedState;

    if-nez v0, :cond_0

    .line 367
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/widget/Row;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 376
    :goto_0
    return-void

    .line 371
    :cond_0
    check-cast p1, Lcom/avast/android/generic/ui/widget/SelectorRow$SavedState;

    .line 372
    invoke-virtual {p1}, Lcom/avast/android/generic/ui/widget/SelectorRow$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/avast/android/generic/ui/widget/Row;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 374
    iget v0, p1, Lcom/avast/android/generic/ui/widget/SelectorRow$SavedState;->a:I

    iput v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->n:I

    .line 375
    invoke-direct {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->f()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 358
    invoke-super {p0}, Lcom/avast/android/generic/ui/widget/Row;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 359
    new-instance v1, Lcom/avast/android/generic/ui/widget/SelectorRow$SavedState;

    invoke-direct {v1, v0}, Lcom/avast/android/generic/ui/widget/SelectorRow$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 360
    iget v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow;->n:I

    iput v0, v1, Lcom/avast/android/generic/ui/widget/SelectorRow$SavedState;->a:I

    .line 361
    return-object v1
.end method
