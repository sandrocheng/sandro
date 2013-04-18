.class public Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;
.super Landroid/app/Activity;
.source "TrafficZiFeiSubProviceSettingActivity.java"


# static fields
.field private static final a:I = 0x12c

.field private static final u:I = 0xa0

.field private static final v:[I

.field private static final w:[C


# instance fields
.field private b:Lcom/keniu/security/traffic/y;

.field private c:Lcom/keniu/security/util/SafeViewFlipper;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:[Ljava/lang/String;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/ArrayList;

.field private i:Landroid/widget/ListView;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/view/LayoutInflater;

.field private l:Ljava/util/ArrayList;

.field private m:Ljava/util/ArrayList;

.field private n:[Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Z

.field private t:Lcom/keniu/security/util/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->v:[I

    .line 62
    const/16 v0, 0x17

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->w:[C

    return-void

    .line 57
    nop

    :array_0
    .array-data 0x4
        0x41t 0x6t 0x0t 0x0t
        0x65t 0x6t 0x0t 0x0t
        0x29t 0x7t 0x0t 0x0t
        0x1et 0x8t 0x0t 0x0t
        0xe2t 0x8t 0x0t 0x0t
        0xfet 0x8t 0x0t 0x0t
        0x81t 0x9t 0x0t 0x0t
        0x22t 0xat 0x0t 0x0t
        0xe3t 0xat 0x0t 0x0t
        0x22t 0xct 0x0t 0x0t
        0x8ct 0xct 0x0t 0x0t
        0x90t 0xdt 0x0t 0x0t
        0x33t 0xet 0x0t 0x0t
        0x8at 0xet 0x0t 0x0t
        0x92t 0xet 0x0t 0x0t
        0x12t 0xft 0x0t 0x0t
        0xbbt 0xft 0x0t 0x0t
        0xf6t 0xft 0x0t 0x0t
        0x26t 0x11t 0x0t 0x0t
        0xcet 0x11t 0x0t 0x0t
        0x4ct 0x12t 0x0t 0x0t
        0x3dt 0x13t 0x0t 0x0t
        0x81t 0x14t 0x0t 0x0t
        0xe0t 0x15t 0x0t 0x0t
    .end array-data

    .line 62
    :array_1
    .array-data 0x2
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->f:[Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->p:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->q:Ljava/lang/String;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->r:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->s:Z

    .line 53
    new-instance v0, Lcom/keniu/security/util/aw;

    invoke-direct {v0}, Lcom/keniu/security/util/aw;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->t:Lcom/keniu/security/util/aw;

    .line 268
    return-void
.end method

.method private static a([B)C
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 368
    const/16 v0, 0x2d

    move v1, v4

    .line 369
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 372
    aget-byte v2, p0, v1

    const/16 v3, 0xa0

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :cond_0
    aget-byte v1, p0, v4

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    add-int/2addr v1, v2

    move v2, v4

    .line 375
    :goto_1
    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    .line 376
    sget-object v3, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->v:[I

    aget v3, v3, v2

    if-lt v1, v3, :cond_2

    sget-object v3, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->v:[I

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    if-ge v1, v3, :cond_2

    .line 378
    sget-object v0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->w:[C

    aget-char v0, v0, v2

    .line 382
    :cond_1
    return v0

    .line 375
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->o:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->k:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method protected static a()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 391
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 396
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 397
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 398
    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->c:Lcom/keniu/security/util/SafeViewFlipper;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->p:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 338
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 339
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v7

    .line 342
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 344
    const/4 v4, 0x1

    new-array v4, v4, [C

    aput-char v3, v4, v7

    .line 345
    const/4 v3, 0x0

    .line 347
    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    const-string v6, "GBK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 351
    :goto_1
    aget-byte v5, v3, v7

    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    aget-byte v5, v3, v7

    if-lez v5, :cond_0

    .line 353
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 342
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 355
    :cond_0
    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->a([B)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 358
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->l:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->s:Z

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->n:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->r:I

    return p1
.end method

.method protected static b()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 407
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x4080

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 412
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 413
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 414
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->h:Ljava/util/ArrayList;

    return-object p1
.end method

.method protected static c()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 423
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x4080

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 428
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 429
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 430
    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->e:Landroid/widget/Button;

    return-object v0
.end method

.method protected static d()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 439
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 444
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 445
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 446
    return-object v0
.end method

.method static synthetic d(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->e()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->i:Landroid/widget/ListView;

    return-object v0
.end method

.method private e()Ljava/util/ArrayList;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 220
    invoke-static {}, Lcn/com/wali/zft/plugin;->getprovinces()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->g:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->m:Ljava/util/ArrayList;

    .line 222
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->c:Lcom/keniu/security/util/SafeViewFlipper;

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->d:Landroid/widget/Button;

    const v1, 0x7f0b0513

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 224
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->f:[Ljava/lang/String;

    move v0, v4

    .line 226
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->f:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->f:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->f:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->f:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->c:Lcom/keniu/security/util/SafeViewFlipper;

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 234
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->s:Z

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->g:Ljava/util/ArrayList;

    iget v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->o:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcn/com/wali/zft/plugin;->getcities(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->h:Ljava/util/ArrayList;

    .line 243
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->h:Ljava/util/ArrayList;

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->n:[Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->n:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v5, :cond_3

    .line 246
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->b:Lcom/keniu/security/traffic/y;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->b:Lcom/keniu/security/traffic/y;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->n:[Ljava/lang/String;

    aget-object v1, v1, v4

    iput-object v1, v0, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->finish()V

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->m:Ljava/util/ArrayList;

    return-object v0

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcn/com/wali/zft/plugin;->getcities(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->h:Ljava/util/ArrayList;

    goto :goto_1

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->d:Landroid/widget/Button;

    const v1, 0x7f0b079d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 252
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->e:Landroid/widget/Button;

    const v1, 0x7f0b0218

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    move v0, v4

    .line 253
    :goto_2
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->n:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->n:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->n:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->n:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 257
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static synthetic f(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Lcom/keniu/security/traffic/y;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->b:Lcom/keniu/security/traffic/y;

    return-object v0
.end method

.method static synthetic g(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->j:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic j(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic k(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic m(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->n:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->k:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic o(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->r:I

    return v0
.end method


# virtual methods
.method public final a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 208
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    move v1, v4

    .line 210
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 211
    aget-object v2, p1, v1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    const/4 v0, 0x1

    .line 215
    :goto_1
    return v0

    .line 210
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 215
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->requestWindowFeature(I)Z

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f03011e

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->setContentView(I)V

    .line 79
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->b:Lcom/keniu/security/traffic/y;

    .line 82
    const v0, 0x7f0803ec

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/util/SafeViewFlipper;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->c:Lcom/keniu/security/util/SafeViewFlipper;

    .line 83
    const v0, 0x7f0803f7

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->d:Landroid/widget/Button;

    .line 84
    const v0, 0x7f0803f8

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->e:Landroid/widget/Button;

    .line 85
    const v0, 0x7f0803c8

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->i:Landroid/widget/ListView;

    .line 86
    const v0, 0x7f0803a8

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->j:Landroid/widget/ListView;

    .line 89
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/traffic/fa;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/fa;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/traffic/fb;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/fb;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_num"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->c:Lcom/keniu/security/util/SafeViewFlipper;

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/SafeViewFlipper;->setDisplayedChild(I)V

    .line 141
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->e()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->l:Ljava/util/ArrayList;

    .line 142
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 143
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/keniu/security/traffic/fe;

    invoke-direct {v1, p0, p0}, Lcom/keniu/security/traffic/fe;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/keniu/security/traffic/fc;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/fc;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 186
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/keniu/security/traffic/fe;

    invoke-direct {v1, p0, p0}, Lcom/keniu/security/traffic/fe;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/keniu/security/traffic/fd;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/fd;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 204
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 69
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->t:Lcom/keniu/security/util/aw;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;->t:Lcom/keniu/security/util/aw;

    invoke-virtual {v0}, Lcom/keniu/security/util/aw;->a()V

    .line 72
    :cond_0
    return-void
.end method
