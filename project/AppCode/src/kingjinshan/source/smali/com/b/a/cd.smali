.class public final Lcom/b/a/cd;
.super Lcom/b/a/dk;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/cf;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/b/a/cd;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Ljava/lang/Object;

.field private f:Z

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14687
    new-instance v0, Lcom/b/a/cd;

    invoke-direct {v0}, Lcom/b/a/cd;-><init>()V

    .line 14688
    sput-object v0, Lcom/b/a/cd;->c:Lcom/b/a/cd;

    const-string v1, ""

    iput-object v1, v0, Lcom/b/a/cd;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/b/a/cd;->f:Z

    .line 14689
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 14264
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 14332
    iput-byte v0, p0, Lcom/b/a/cd;->g:B

    .line 14361
    iput v0, p0, Lcom/b/a/cd;->h:I

    .line 14264
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/ce;)V
    .locals 1
    .parameter

    .prologue
    .line 14257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/cd;-><init>(Lcom/b/a/ce;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/ce;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 14262
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 14332
    iput-byte v0, p0, Lcom/b/a/cd;->g:B

    .line 14361
    iput v0, p0, Lcom/b/a/cd;->h:I

    .line 14263
    return-void
.end method

.method static synthetic a(Lcom/b/a/cd;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14257
    iput p1, p0, Lcom/b/a/cd;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/cd;
    .locals 1
    .parameter

    .prologue
    .line 14390
    invoke-static {}, Lcom/b/a/ce;->n()Lcom/b/a/ce;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ce;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ce;

    invoke-static {p0}, Lcom/b/a/ce;->a(Lcom/b/a/ce;)Lcom/b/a/cd;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/cd;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14396
    invoke-static {}, Lcom/b/a/ce;->n()Lcom/b/a/ce;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ce;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ce;

    invoke-static {p0}, Lcom/b/a/ce;->a(Lcom/b/a/ce;)Lcom/b/a/cd;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/cd;
    .locals 1
    .parameter

    .prologue
    .line 14444
    invoke-static {}, Lcom/b/a/ce;->n()Lcom/b/a/ce;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ce;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ce;

    invoke-static {p0}, Lcom/b/a/ce;->a(Lcom/b/a/ce;)Lcom/b/a/cd;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/cd;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14450
    invoke-static {}, Lcom/b/a/ce;->n()Lcom/b/a/ce;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ce;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ce;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/ce;->a(Lcom/b/a/ce;)Lcom/b/a/cd;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/cd;
    .locals 1
    .parameter

    .prologue
    .line 14412
    invoke-static {}, Lcom/b/a/ce;->n()Lcom/b/a/ce;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ce;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ce;

    invoke-static {p0}, Lcom/b/a/ce;->a(Lcom/b/a/ce;)Lcom/b/a/cd;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/cd;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14418
    invoke-static {}, Lcom/b/a/ce;->n()Lcom/b/a/ce;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ce;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ce;

    invoke-static {p0}, Lcom/b/a/ce;->a(Lcom/b/a/ce;)Lcom/b/a/cd;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/cd;
    .locals 1
    .parameter

    .prologue
    .line 14401
    invoke-static {}, Lcom/b/a/ce;->n()Lcom/b/a/ce;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ce;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ce;

    invoke-static {p0}, Lcom/b/a/ce;->a(Lcom/b/a/ce;)Lcom/b/a/cd;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/cd;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14407
    invoke-static {}, Lcom/b/a/ce;->n()Lcom/b/a/ce;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ce;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ce;

    invoke-static {p0}, Lcom/b/a/ce;->a(Lcom/b/a/ce;)Lcom/b/a/cd;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/cd;)Lcom/b/a/ce;
    .locals 1
    .parameter

    .prologue
    .line 14457
    invoke-static {}, Lcom/b/a/ce;->n()Lcom/b/a/ce;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ce;->a(Lcom/b/a/cd;)Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/cd;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14257
    iput-object p1, p0, Lcom/b/a/cd;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/cd;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14257
    iput-boolean p1, p0, Lcom/b/a/cd;->f:Z

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/cd;
    .locals 2
    .parameter

    .prologue
    .line 14423
    invoke-static {}, Lcom/b/a/ce;->n()Lcom/b/a/ce;

    move-result-object v0

    .line 14424
    invoke-virtual {v0, p0}, Lcom/b/a/ce;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14425
    invoke-static {v0}, Lcom/b/a/ce;->a(Lcom/b/a/ce;)Lcom/b/a/cd;

    move-result-object v0

    .line 14427
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/cd;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 14434
    invoke-static {}, Lcom/b/a/ce;->n()Lcom/b/a/ce;

    move-result-object v0

    .line 14435
    invoke-virtual {v0, p0, p1}, Lcom/b/a/ce;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14436
    invoke-static {v0}, Lcom/b/a/ce;->a(Lcom/b/a/ce;)Lcom/b/a/cd;

    move-result-object v0

    .line 14438
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/ce;
    .locals 1
    .parameter

    .prologue
    .line 14464
    new-instance v0, Lcom/b/a/ce;

    invoke-direct {v0, p0}, Lcom/b/a/ce;-><init>(Lcom/b/a/dp;)V

    .line 14465
    return-object v0
.end method

.method public static e()Lcom/b/a/cd;
    .locals 1

    .prologue
    .line 14268
    sget-object v0, Lcom/b/a/cd;->c:Lcom/b/a/cd;

    return-object v0
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 14277
    invoke-static {}, Lcom/b/a/p;->J()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static l()Lcom/b/a/ce;
    .locals 1

    .prologue
    .line 14454
    invoke-static {}, Lcom/b/a/ce;->n()Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method private static m()Lcom/b/a/cd;
    .locals 1

    .prologue
    .line 14272
    sget-object v0, Lcom/b/a/cd;->c:Lcom/b/a/cd;

    return-object v0
.end method

.method private n()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 14307
    iget-object v0, p0, Lcom/b/a/cd;->e:Ljava/lang/Object;

    .line 14308
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14309
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 14311
    iput-object v0, p0, Lcom/b/a/cd;->e:Ljava/lang/Object;

    .line 14314
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 14329
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/cd;->e:Ljava/lang/Object;

    .line 14330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/cd;->f:Z

    .line 14331
    return-void
.end method

.method private static p()Lcom/b/a/ce;
    .locals 1

    .prologue
    .line 14455
    invoke-static {}, Lcom/b/a/ce;->n()Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method private q()Lcom/b/a/ce;
    .locals 1

    .prologue
    .line 14459
    invoke-static {}, Lcom/b/a/ce;->n()Lcom/b/a/ce;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ce;->a(Lcom/b/a/cd;)Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14384
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 14257
    invoke-direct {p0}, Lcom/b/a/cd;->q()Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 14257
    invoke-static {}, Lcom/b/a/ce;->n()Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 14257
    invoke-direct {p0}, Lcom/b/a/cd;->q()Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 14257
    invoke-static {}, Lcom/b/a/ce;->n()Lcom/b/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public final G_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14290
    iget v0, p0, Lcom/b/a/cd;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 14257
    sget-object v0, Lcom/b/a/cd;->c:Lcom/b/a/cd;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 14257
    sget-object v0, Lcom/b/a/cd;->c:Lcom/b/a/cd;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 14257
    new-instance v0, Lcom/b/a/ce;

    invoke-direct {v0, p1}, Lcom/b/a/ce;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 14351
    invoke-virtual {p0}, Lcom/b/a/cd;->b()I

    .line 14352
    iget v0, p0, Lcom/b/a/cd;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 14353
    invoke-direct {p0}, Lcom/b/a/cd;->n()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 14355
    :cond_0
    iget v0, p0, Lcom/b/a/cd;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 14356
    iget-boolean v0, p0, Lcom/b/a/cd;->f:Z

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(IZ)V

    .line 14358
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/cd;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 14359
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14334
    iget-byte v0, p0, Lcom/b/a/cd;->g:B

    .line 14335
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 14346
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 14335
    goto :goto_0

    .line 14337
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/cd;->G_()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14338
    iput-byte v2, p0, Lcom/b/a/cd;->g:B

    move v0, v2

    .line 14339
    goto :goto_0

    .line 14341
    :cond_2
    invoke-virtual {p0}, Lcom/b/a/cd;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14342
    iput-byte v2, p0, Lcom/b/a/cd;->g:B

    move v0, v2

    .line 14343
    goto :goto_0

    .line 14345
    :cond_3
    iput-byte v3, p0, Lcom/b/a/cd;->g:B

    move v0, v3

    .line 14346
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 14363
    iget v0, p0, Lcom/b/a/cd;->h:I

    .line 14364
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 14377
    :goto_0
    return v0

    .line 14366
    :cond_0
    const/4 v0, 0x0

    .line 14367
    iget v1, p0, Lcom/b/a/cd;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 14368
    invoke-direct {p0}, Lcom/b/a/cd;->n()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 14371
    :cond_1
    iget v1, p0, Lcom/b/a/cd;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 14372
    iget-boolean v1, p0, Lcom/b/a/cd;->f:Z

    invoke-static {v3}, Lcom/b/a/n;->p(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 14375
    :cond_2
    invoke-virtual {p0}, Lcom/b/a/cd;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 14376
    iput v0, p0, Lcom/b/a/cd;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 14282
    invoke-static {}, Lcom/b/a/p;->K()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 14293
    iget-object v1, p0, Lcom/b/a/cd;->e:Ljava/lang/Object;

    .line 14294
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14295
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 14303
    :goto_0
    return-object v1

    .line 14297
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 14299
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 14300
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14301
    iput-object v2, p0, Lcom/b/a/cd;->e:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 14303
    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 14322
    iget v0, p0, Lcom/b/a/cd;->d:I

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

.method public final k()Z
    .locals 1

    .prologue
    .line 14325
    iget-boolean v0, p0, Lcom/b/a/cd;->f:Z

    return v0
.end method
