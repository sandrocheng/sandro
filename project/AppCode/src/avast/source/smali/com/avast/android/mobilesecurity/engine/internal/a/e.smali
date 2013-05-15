.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/e;
.super Lcom/google/a/l;
.source "TypoSquattingConfirmProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/g;


# static fields
.field private static final a:Lcom/avast/android/mobilesecurity/engine/internal/a/e;


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Lcom/google/a/c;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Lcom/google/a/z;

.field private l:Lcom/avast/android/mobilesecurity/engine/internal/a/c;

.field private m:B

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1167
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;-><init>(Z)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/e;

    .line 1168
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/e;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->I()V

    .line 1169
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/f;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 104
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 388
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->m:B

    .line 432
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->n:I

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/f;Lcom/avast/android/mobilesecurity/engine/internal/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/f;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 106
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 388
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->m:B

    .line 432
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->n:I

    .line 106
    return-void
.end method

.method private C()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->d:Ljava/lang/Object;

    .line 172
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 173
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 175
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->d:Ljava/lang/Object;

    .line 178
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private D()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->e:Ljava/lang/Object;

    .line 204
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 205
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 207
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->e:Ljava/lang/Object;

    .line 210
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private E()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->f:Ljava/lang/Object;

    .line 236
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 237
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 239
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->f:Ljava/lang/Object;

    .line 242
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private F()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->g:Ljava/lang/Object;

    .line 268
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 269
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 271
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->g:Ljava/lang/Object;

    .line 274
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private G()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->i:Ljava/lang/Object;

    .line 310
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 311
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 313
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->i:Ljava/lang/Object;

    .line 316
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private H()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->j:Ljava/lang/Object;

    .line 342
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 343
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 345
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->j:Ljava/lang/Object;

    .line 348
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private I()V
    .locals 1

    .prologue
    .line 377
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->c:Ljava/lang/Object;

    .line 378
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->d:Ljava/lang/Object;

    .line 379
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->e:Ljava/lang/Object;

    .line 380
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->f:Ljava/lang/Object;

    .line 381
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->g:Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->h:Lcom/google/a/c;

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->i:Ljava/lang/Object;

    .line 384
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->j:Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/google/a/y;->a:Lcom/google/a/z;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->k:Lcom/google/a/z;

    .line 386
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/c;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/c;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->l:Lcom/avast/android/mobilesecurity/engine/internal/a/c;

    .line 387
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/e;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    return p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Lcom/avast/android/mobilesecurity/engine/internal/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->l:Lcom/avast/android/mobilesecurity/engine/internal/a/c;

    return-object p1
.end method

.method public static a()Lcom/avast/android/mobilesecurity/engine/internal/a/e;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/e;

    return-object v0
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/a/e;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 1
    .parameter

    .prologue
    .line 564
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->u()Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/e;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->h:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Lcom/google/a/z;)Lcom/google/a/z;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->k:Lcom/google/a/z;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/engine/internal/a/e;)Lcom/google/a/z;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->k:Lcom/google/a/z;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic g(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->j:Ljava/lang/Object;

    return-object p1
.end method

.method public static u()Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 1

    .prologue
    .line 561
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->e()Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v0

    return-object v0
.end method

.method private z()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->c:Ljava/lang/Object;

    .line 140
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 141
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 143
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->c:Ljava/lang/Object;

    .line 146
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->y()Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->x()Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 399
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->w()I

    .line 400
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 401
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->z()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 403
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 404
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->C()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 406
    :cond_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 407
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->D()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 409
    :cond_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 410
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->E()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 412
    :cond_3
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 413
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->F()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 415
    :cond_4
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 416
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->h:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 418
    :cond_5
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 419
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->G()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 421
    :cond_6
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 422
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->H()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 424
    :cond_7
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 425
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->l:Lcom/avast/android/mobilesecurity/engine/internal/a/c;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/c;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->c(II)V

    .line 427
    :cond_8
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->k:Lcom/google/a/z;

    invoke-interface {v1}, Lcom/google/a/z;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 428
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->k:Lcom/google/a/z;

    invoke-interface {v2, v0}, Lcom/google/a/z;->c(I)Lcom/google/a/c;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_9
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 122
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->c:Ljava/lang/Object;

    .line 126
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, Ljava/lang/String;

    .line 135
    :goto_0
    return-object v0

    .line 129
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 131
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->c:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 135
    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->d:Ljava/lang/Object;

    .line 158
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 159
    check-cast v0, Ljava/lang/String;

    .line 167
    :goto_0
    return-object v0

    .line 161
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 163
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->d:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 167
    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 186
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->e:Ljava/lang/Object;

    .line 190
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 191
    check-cast v0, Ljava/lang/String;

    .line 199
    :goto_0
    return-object v0

    .line 193
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 195
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->e:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 199
    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->f:Ljava/lang/Object;

    .line 222
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 223
    check-cast v0, Ljava/lang/String;

    .line 231
    :goto_0
    return-object v0

    .line 225
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 227
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 231
    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->g:Ljava/lang/Object;

    .line 254
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 255
    check-cast v0, Ljava/lang/String;

    .line 263
    :goto_0
    return-object v0

    .line 257
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 259
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 263
    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 282
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->h:Lcom/google/a/c;

    return-object v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 292
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->i:Ljava/lang/Object;

    .line 296
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 297
    check-cast v0, Ljava/lang/String;

    .line 305
    :goto_0
    return-object v0

    .line 299
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 301
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->i:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 305
    goto :goto_0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 324
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->j:Ljava/lang/Object;

    .line 328
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 329
    check-cast v0, Ljava/lang/String;

    .line 337
    :goto_0
    return-object v0

    .line 331
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 333
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->j:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 337
    goto :goto_0
.end method

.method public r()Ljava/util/List;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->k:Lcom/google/a/z;

    return-object v0
.end method

.method public s()Z
    .locals 2

    .prologue
    .line 370
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Lcom/avast/android/mobilesecurity/engine/internal/a/c;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->l:Lcom/avast/android/mobilesecurity/engine/internal/a/c;

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 390
    iget-byte v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->m:B

    .line 391
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 394
    :goto_0
    return v0

    .line 391
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 393
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->m:B

    goto :goto_0
.end method

.method public w()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 434
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->n:I

    .line 435
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 484
    :goto_0
    return v0

    .line 438
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_a

    .line 439
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->z()Lcom/google/a/c;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v0

    add-int/2addr v0, v1

    .line 442
    :goto_1
    iget v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 443
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->C()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v2

    add-int/2addr v0, v2

    .line 446
    :cond_1
    iget v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_2

    .line 447
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->D()Lcom/google/a/c;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v2

    add-int/2addr v0, v2

    .line 450
    :cond_2
    iget v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_3

    .line 451
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->E()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v2

    add-int/2addr v0, v2

    .line 454
    :cond_3
    iget v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 455
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->F()Lcom/google/a/c;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v2

    add-int/2addr v0, v2

    .line 458
    :cond_4
    iget v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 459
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->h:Lcom/google/a/c;

    invoke-static {v2, v3}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v2

    add-int/2addr v0, v2

    .line 462
    :cond_5
    iget v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 463
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->G()Lcom/google/a/c;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v2

    add-int/2addr v0, v2

    .line 466
    :cond_6
    iget v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 467
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->H()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v2

    add-int/2addr v0, v2

    .line 470
    :cond_7
    iget v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 471
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->l:Lcom/avast/android/mobilesecurity/engine/internal/a/c;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/a/c;->a()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/a/e;->g(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    move v2, v1

    .line 476
    :goto_2
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->k:Lcom/google/a/z;

    invoke-interface {v3}, Lcom/google/a/z;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 477
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->k:Lcom/google/a/z;

    invoke-interface {v3, v1}, Lcom/google/a/z;->c(I)Lcom/google/a/c;

    move-result-object v3

    invoke-static {v3}, Lcom/google/a/e;->b(Lcom/google/a/c;)I

    move-result v3

    add-int/2addr v2, v3

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 480
    :cond_9
    add-int/2addr v0, v2

    .line 481
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->r()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 483
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->n:I

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method public x()Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 1

    .prologue
    .line 562
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->u()Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 1

    .prologue
    .line 566
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/e;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v0

    return-object v0
.end method
