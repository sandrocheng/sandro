.class public Lcom/avast/android/generic/d;
.super Ljava/lang/Object;
.source "GenericContract.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/avast/android/generic/z;->bD:I

    aput v1, v0, v3

    sget v1, Lcom/avast/android/generic/z;->aR:I

    aput v1, v0, v4

    sget v1, Lcom/avast/android/generic/z;->aC:I

    aput v1, v0, v5

    sget v1, Lcom/avast/android/generic/z;->bd:I

    aput v1, v0, v6

    sget v1, Lcom/avast/android/generic/z;->ah:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/avast/android/generic/z;->be:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/avast/android/generic/z;->cQ:I

    aput v2, v0, v1

    sput-object v0, Lcom/avast/android/generic/d;->a:[I

    .line 156
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/avast/android/generic/z;->bv:I

    aput v1, v0, v3

    sget v1, Lcom/avast/android/generic/z;->X:I

    aput v1, v0, v4

    sget v1, Lcom/avast/android/generic/z;->aJ:I

    aput v1, v0, v5

    sget v1, Lcom/avast/android/generic/z;->ar:I

    aput v1, v0, v6

    sget v1, Lcom/avast/android/generic/z;->bQ:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/avast/android/generic/z;->bl:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/avast/android/generic/z;->w:I

    aput v2, v0, v1

    sput-object v0, Lcom/avast/android/generic/d;->b:[I

    .line 163
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/avast/android/generic/z;->bE:I

    aput v1, v0, v3

    sget v1, Lcom/avast/android/generic/z;->bT:I

    aput v1, v0, v4

    sget v1, Lcom/avast/android/generic/z;->n:I

    aput v1, v0, v5

    sget v1, Lcom/avast/android/generic/z;->bu:I

    aput v1, v0, v6

    sget v1, Lcom/avast/android/generic/z;->bC:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/avast/android/generic/z;->ck:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/avast/android/generic/z;->o:I

    aput v2, v0, v1

    sput-object v0, Lcom/avast/android/generic/d;->c:[I

    return-void
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 322
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, -0x2

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public static a(I)I
    .locals 2
    .parameter

    .prologue
    .line 222
    const/4 v1, 0x1

    .line 223
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 224
    mul-int/lit8 v1, v1, 0x2

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    return v1
.end method

.method private static a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 307
    if-nez p1, :cond_1

    .line 314
    :cond_0
    return v0

    :cond_1
    move v1, v0

    move v0, p0

    .line 310
    :goto_0
    if-ge v1, p1, :cond_0

    .line 311
    mul-int/lit8 p0, v0, 0x2

    .line 310
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, p0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 194
    sget-object v0, Lcom/avast/android/generic/d;->a:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(III)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 337
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 338
    invoke-static {v0, p0}, Lcom/avast/android/generic/d;->a(Landroid/text/format/Time;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p1, p2}, Lcom/avast/android/generic/d;->a(Landroid/text/format/Time;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/text/format/Time;I)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 352
    iget v0, p0, Landroid/text/format/Time;->weekDay:I

    add-int/lit8 v0, v0, -0x1

    .line 353
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 354
    const/4 v0, 0x6

    .line 355
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LookupSupport.checkWeekDays("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), wd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 356
    const-wide/high16 v2, 0x4000

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    and-int/2addr v0, p1

    if-lt v0, v1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/text/format/Time;II)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 342
    iget v2, p0, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v2, v2, 0x3c

    iget v3, p0, Landroid/text/format/Time;->minute:I

    add-int/2addr v2, v3

    .line 344
    if-gt p1, p2, :cond_1

    .line 345
    if-gt p1, v2, :cond_0

    if-gt v2, p2, :cond_0

    .line 347
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 345
    goto :goto_0

    .line 347
    :cond_1
    if-ge v2, p1, :cond_2

    if-gt v2, p2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static b(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 259
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, -0x2

    rem-int/lit8 v3, v1, 0x7

    .line 268
    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    .line 270
    :goto_0
    const/4 v4, 0x7

    if-ge v1, v4, :cond_1

    .line 271
    and-int v4, p0, v2

    if-lez v4, :cond_0

    .line 272
    const/4 v4, 0x2

    add-int v5, v1, v3

    rem-int/lit8 v5, v5, 0x7

    invoke-static {v4, v5}, Lcom/avast/android/generic/d;->a(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 274
    :cond_0
    mul-int/lit8 v2, v2, 0x2

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_1
    return v0
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 204
    sget-object v0, Lcom/avast/android/generic/d;->b:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, -0x2

    rsub-int/lit8 v3, v1, 0x7

    .line 294
    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    .line 296
    :goto_0
    const/4 v4, 0x7

    if-ge v1, v4, :cond_1

    .line 297
    and-int v4, p0, v2

    if-lez v4, :cond_0

    .line 298
    const/4 v4, 0x2

    add-int v5, v1, v3

    rem-int/lit8 v5, v5, 0x7

    invoke-static {v4, v5}, Lcom/avast/android/generic/d;->a(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 300
    :cond_0
    mul-int/lit8 v2, v2, 0x2

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_1
    return v0
.end method
