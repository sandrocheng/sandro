.class public final Lcom/avast/android/generic/f/b/b;
.super Ljava/lang/Object;
.source "StateProvider.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/telephony/CellLocation;ILandroid/telephony/ServiceState;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput v0, p0, Lcom/avast/android/generic/f/b/b;->a:I

    .line 261
    iput v0, p0, Lcom/avast/android/generic/f/b/b;->b:I

    .line 262
    iput v0, p0, Lcom/avast/android/generic/f/b/b;->c:I

    .line 263
    iput v0, p0, Lcom/avast/android/generic/f/b/b;->d:I

    .line 264
    iput v0, p0, Lcom/avast/android/generic/f/b/b;->e:I

    .line 265
    const/4 v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/f/b/b;->f:I

    .line 272
    instance-of v0, p3, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_2

    .line 273
    check-cast p3, Landroid/telephony/gsm/GsmCellLocation;

    .line 274
    invoke-virtual {p3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/f/b/b;->a(I)V

    .line 275
    invoke-virtual {p3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/f/b/b;->b(I)V

    .line 283
    :cond_0
    :goto_0
    invoke-virtual {p0, p4}, Lcom/avast/android/generic/f/b/b;->c(I)V

    .line 286
    if-eqz p5, :cond_1

    .line 288
    invoke-virtual {p5}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/f/b/b;->a(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p5}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/f/b/b;->f(I)V

    .line 291
    invoke-virtual {p5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-direct {p0, p1, v0}, Lcom/avast/android/generic/f/b/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    :cond_1
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/f/b/b;->b(Ljava/lang/String;)V

    .line 306
    return-void

    .line 276
    :cond_2
    instance-of v0, p3, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_0

    .line 277
    check-cast p3, Landroid/telephony/cdma/CdmaCellLocation;

    .line 278
    invoke-virtual {p3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/f/b/b;->a(I)V

    .line 279
    invoke-virtual {p3}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/f/b/b;->b(I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 318
    if-eqz p2, :cond_0

    .line 323
    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 324
    invoke-virtual {p0, v0}, Lcom/avast/android/generic/f/b/b;->d(I)V

    .line 325
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 326
    invoke-virtual {p0, v0}, Lcom/avast/android/generic/f/b/b;->e(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    goto :goto_0

    .line 327
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/avast/android/generic/f/b/b;->f:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput p1, p0, Lcom/avast/android/generic/f/b/b;->a:I

    .line 345
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/avast/android/generic/f/b/b;->g:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput p1, p0, Lcom/avast/android/generic/f/b/b;->b:I

    .line 353
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/avast/android/generic/f/b/b;->h:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput p1, p0, Lcom/avast/android/generic/f/b/b;->c:I

    .line 361
    return-void
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput p1, p0, Lcom/avast/android/generic/f/b/b;->d:I

    .line 369
    return-void
.end method

.method public e(I)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput p1, p0, Lcom/avast/android/generic/f/b/b;->e:I

    .line 377
    return-void
.end method

.method public f(I)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput p1, p0, Lcom/avast/android/generic/f/b/b;->f:I

    .line 385
    return-void
.end method
