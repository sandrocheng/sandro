.class public final Lcom/keniu/security/sync/d/d/a/dr;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/dt;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/dr;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Lcom/keniu/security/sync/d/d/a/ge;

.field private f:Ljava/util/List;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20064
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dr;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/dr;-><init>()V

    .line 20065
    sput-object v0, Lcom/keniu/security/sync/d/d/a/dr;->c:Lcom/keniu/security/sync/d/d/a/dr;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/dr;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/dr;->f:Ljava/util/List;

    .line 20066
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 19371
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 19431
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->g:B

    .line 19466
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->h:I

    .line 19371
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ds;)V
    .locals 1
    .parameter

    .prologue
    .line 19364
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/dr;-><init>(Lcom/keniu/security/sync/d/d/a/ds;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ds;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 19369
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 19431
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->g:B

    .line 19466
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->h:I

    .line 19370
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/dr;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19364
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/dr;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/dr;
    .locals 1
    .parameter

    .prologue
    .line 19495
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ds;->i()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ds;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/keniu/security/sync/d/d/a/ds;)Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dr;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19501
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ds;->i()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ds;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/keniu/security/sync/d/d/a/ds;)Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/dr;
    .locals 1
    .parameter

    .prologue
    .line 19549
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ds;->i()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ds;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/keniu/security/sync/d/d/a/ds;)Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dr;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19555
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ds;->i()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ds;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/keniu/security/sync/d/d/a/ds;)Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/dr;
    .locals 1
    .parameter

    .prologue
    .line 19517
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ds;->i()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ds;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ds;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/keniu/security/sync/d/d/a/ds;)Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dr;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19523
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ds;->i()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ds;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ds;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/keniu/security/sync/d/d/a/ds;)Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/dr;
    .locals 1
    .parameter

    .prologue
    .line 19506
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ds;->i()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ds;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ds;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/keniu/security/sync/d/d/a/ds;)Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dr;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19512
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ds;->i()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ds;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ds;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/keniu/security/sync/d/d/a/ds;)Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/dr;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19364
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/dr;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/dr;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 19364
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/dr;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19364
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/dr;->f:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/dr;
    .locals 2
    .parameter

    .prologue
    .line 19528
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ds;->i()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    .line 19529
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ds;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19530
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/keniu/security/sync/d/d/a/ds;)Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    .line 19532
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dr;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 19539
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ds;->i()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    .line 19540
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ds;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19541
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/keniu/security/sync/d/d/a/ds;)Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    .line 19543
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1
    .parameter

    .prologue
    .line 19569
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ds;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ds;-><init>(Lcom/b/a/dp;)V

    .line 19570
    return-object v0
.end method

.method private static b(Lcom/keniu/security/sync/d/d/a/dr;)Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1
    .parameter

    .prologue
    .line 19562
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ds;->i()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/keniu/security/sync/d/d/a/dr;)Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/dr;
    .locals 1

    .prologue
    .line 19375
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dr;->c:Lcom/keniu/security/sync/d/d/a/dr;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 19384
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->af()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 19364
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/dr;->j:Z

    return v0
.end method

.method static synthetic q()Z
    .locals 1

    .prologue
    .line 19364
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/dr;->j:Z

    return v0
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/dr;
    .locals 1

    .prologue
    .line 19379
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dr;->c:Lcom/keniu/security/sync/d/d/a/dr;

    return-object v0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 19428
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->e:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19429
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->f:Ljava/util/List;

    .line 19430
    return-void
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1

    .prologue
    .line 19559
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ds;->i()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1

    .prologue
    .line 19560
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ds;->i()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1

    .prologue
    .line 19564
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ds;->i()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/keniu/security/sync/d/d/a/dr;)Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19489
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 19364
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dr;->v()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 19364
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ds;->i()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 19364
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dr;->v()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 19364
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ds;->i()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 19364
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dr;->c:Lcom/keniu/security/sync/d/d/a/dr;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 19364
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dr;->c:Lcom/keniu/security/sync/d/d/a/dr;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 19364
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ds;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ds;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/di;
    .locals 1
    .parameter

    .prologue
    .line 19420
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/di;

    return-object p0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 19456
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dr;->b()I

    .line 19457
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 19458
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 19460
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 19461
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 19460
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 19463
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dr;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 19464
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19433
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->g:B

    .line 19434
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 19451
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 19434
    goto :goto_0

    .line 19436
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dr;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 19437
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/dr;->g:B

    move v0, v2

    .line 19438
    goto :goto_0

    .line 19440
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 19441
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/dr;->g:B

    move v0, v2

    .line 19442
    goto :goto_0

    :cond_3
    move v0, v2

    .line 19444
    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dr;->o()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 19445
    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dr;->a(I)Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/di;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 19446
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/dr;->g:B

    move v0, v2

    .line 19447
    goto :goto_0

    .line 19444
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19450
    :cond_5
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/dr;->g:B

    move v0, v3

    .line 19451
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19468
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->h:I

    .line 19469
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 19482
    :goto_0
    return v0

    .line 19472
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_2

    .line 19473
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    move v1, v2

    move v2, v0

    .line 19476
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 19477
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 19476
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 19480
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dr;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gg;->b()I

    move-result v0

    add-int/2addr v0, v2

    .line 19481
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->h:I

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final b(I)Lcom/keniu/security/sync/d/d/a/dk;
    .locals 1
    .parameter

    .prologue
    .line 19424
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dk;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 19389
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ag()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 19397
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1

    .prologue
    .line 19400
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 19403
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .prologue
    .line 19410
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->f:Ljava/util/List;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    .prologue
    .line 19414
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->f:Ljava/util/List;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 19417
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dr;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
