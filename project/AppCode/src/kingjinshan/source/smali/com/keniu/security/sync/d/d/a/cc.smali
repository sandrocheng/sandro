.class public final Lcom/keniu/security/sync/d/d/a/cc;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ce;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field private static final f:Lcom/keniu/security/sync/d/d/a/cc;

.field private static final p:J


# instance fields
.field private g:I

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private k:J

.field private l:I

.field private m:I

.field private n:B

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 11002
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cc;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/cc;-><init>()V

    .line 11003
    sput-object v0, Lcom/keniu/security/sync/d/d/a/cc;->f:Lcom/keniu/security/sync/d/d/a/cc;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cc;->h:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/cc;->i:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/keniu/security/sync/d/d/a/cc;->k:J

    iput v3, v0, Lcom/keniu/security/sync/d/d/a/cc;->l:I

    iput v3, v0, Lcom/keniu/security/sync/d/d/a/cc;->m:I

    .line 11004
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 10367
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 10490
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->n:B

    .line 10536
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->o:I

    .line 10367
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/cd;)V
    .locals 1
    .parameter

    .prologue
    .line 10360
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/cc;-><init>(Lcom/keniu/security/sync/d/d/a/cd;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/cd;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 10365
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 10490
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->n:B

    .line 10536
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->o:I

    .line 10366
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/cd;
    .locals 1

    .prologue
    .line 10646
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cd;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cd;->a(Lcom/keniu/security/sync/d/d/a/cc;)Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cc;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10360
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/cc;->l:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cc;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10360
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/cc;->k:J

    return-wide p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 10577
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cd;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cd;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cd;->a(Lcom/keniu/security/sync/d/d/a/cd;)Lcom/keniu/security/sync/d/d/a/cc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10583
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cd;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cd;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cd;->a(Lcom/keniu/security/sync/d/d/a/cd;)Lcom/keniu/security/sync/d/d/a/cc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 10631
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cd;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cd;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cd;->a(Lcom/keniu/security/sync/d/d/a/cd;)Lcom/keniu/security/sync/d/d/a/cc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10637
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cd;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cd;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cd;->a(Lcom/keniu/security/sync/d/d/a/cd;)Lcom/keniu/security/sync/d/d/a/cc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 10599
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cd;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cd;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cd;->a(Lcom/keniu/security/sync/d/d/a/cd;)Lcom/keniu/security/sync/d/d/a/cc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10605
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cd;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cd;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cd;->a(Lcom/keniu/security/sync/d/d/a/cd;)Lcom/keniu/security/sync/d/d/a/cc;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 10588
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cd;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cd;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cd;->a(Lcom/keniu/security/sync/d/d/a/cd;)Lcom/keniu/security/sync/d/d/a/cc;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10594
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cd;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cd;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/cd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/cd;->a(Lcom/keniu/security/sync/d/d/a/cd;)Lcom/keniu/security/sync/d/d/a/cc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/cc;)Lcom/keniu/security/sync/d/d/a/cd;
    .locals 1
    .parameter

    .prologue
    .line 10644
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cd;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cd;->a(Lcom/keniu/security/sync/d/d/a/cc;)Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cc;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10360
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cc;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/cc;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10360
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/cc;->m:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/cc;
    .locals 2
    .parameter

    .prologue
    .line 10610
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cd;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    .line 10611
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/cd;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10612
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cd;->a(Lcom/keniu/security/sync/d/d/a/cd;)Lcom/keniu/security/sync/d/d/a/cc;

    move-result-object v0

    .line 10614
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cc;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 10621
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cd;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    .line 10622
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/cd;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10623
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cd;->a(Lcom/keniu/security/sync/d/d/a/cd;)Lcom/keniu/security/sync/d/d/a/cc;

    move-result-object v0

    .line 10625
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/cd;
    .locals 1
    .parameter

    .prologue
    .line 10651
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cd;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/cd;-><init>(Lcom/b/a/dp;)V

    .line 10652
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/cc;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10360
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cc;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/cc;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10360
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/cc;->g:I

    return p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/cc;
    .locals 1

    .prologue
    .line 10371
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cc;->f:Lcom/keniu/security/sync/d/d/a/cc;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 10380
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->H()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static t()Lcom/keniu/security/sync/d/d/a/cd;
    .locals 1

    .prologue
    .line 10641
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cd;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic u()Z
    .locals 1

    .prologue
    .line 10360
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/cc;->j:Z

    return v0
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/cc;
    .locals 1

    .prologue
    .line 10375
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cc;->f:Lcom/keniu/security/sync/d/d/a/cc;

    return-object v0
.end method

.method private w()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 10410
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->h:Ljava/lang/Object;

    .line 10411
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10412
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 10414
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->h:Ljava/lang/Object;

    .line 10417
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private x()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 10442
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->i:Ljava/lang/Object;

    .line 10443
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10444
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 10446
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->i:Ljava/lang/Object;

    .line 10449
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private y()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10484
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->h:Ljava/lang/Object;

    .line 10485
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->i:Ljava/lang/Object;

    .line 10486
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->k:J

    .line 10487
    iput v2, p0, Lcom/keniu/security/sync/d/d/a/cc;->l:I

    .line 10488
    iput v2, p0, Lcom/keniu/security/sync/d/d/a/cc;->m:I

    .line 10489
    return-void
.end method

.method private static z()Lcom/keniu/security/sync/d/d/a/cd;
    .locals 1

    .prologue
    .line 10642
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cd;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10571
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 10360
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cc;->A()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 10360
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cd;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 10360
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cc;->A()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 10360
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cd;->t()Lcom/keniu/security/sync/d/d/a/cd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 10360
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cc;->f:Lcom/keniu/security/sync/d/d/a/cc;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 10360
    sget-object v0, Lcom/keniu/security/sync/d/d/a/cc;->f:Lcom/keniu/security/sync/d/d/a/cc;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 10360
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cd;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/cd;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 10517
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cc;->b()I

    .line 10518
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 10519
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cc;->w()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 10521
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->g:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 10522
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cc;->x()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 10524
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->g:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 10525
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/cc;->k:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/n;->b(IJ)V

    .line 10527
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->g:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 10528
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->l:I

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(II)V

    .line 10530
    :cond_3
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->g:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 10531
    const/4 v0, 0x5

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cc;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 10533
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cc;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 10534
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10492
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->n:B

    .line 10493
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 10512
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 10493
    goto :goto_0

    .line 10495
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cc;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10496
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cc;->n:B

    move v0, v2

    .line 10497
    goto :goto_0

    .line 10499
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cc;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10500
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cc;->n:B

    move v0, v2

    .line 10501
    goto :goto_0

    .line 10503
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cc;->p()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10504
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cc;->n:B

    move v0, v2

    .line 10505
    goto :goto_0

    .line 10507
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cc;->r()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10508
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/cc;->n:B

    move v0, v2

    .line 10509
    goto :goto_0

    .line 10511
    :cond_5
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/cc;->n:B

    move v0, v3

    .line 10512
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 10538
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->o:I

    .line 10539
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 10564
    :goto_0
    return v0

    .line 10541
    :cond_0
    const/4 v0, 0x0

    .line 10542
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cc;->g:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 10543
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cc;->w()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 10546
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cc;->g:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 10547
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cc;->x()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10550
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cc;->g:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 10551
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/cc;->k:J

    invoke-static {v1, v2, v3}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10554
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cc;->g:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 10555
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cc;->l:I

    invoke-static {v4, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10558
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cc;->g:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 10559
    const/4 v1, 0x5

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/cc;->m:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10562
    :cond_5
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cc;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 10563
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->o:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 10385
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->I()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10393
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 10396
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cc;->h:Ljava/lang/Object;

    .line 10397
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10398
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 10406
    :goto_0
    return-object v1

    .line 10400
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 10402
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 10403
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10404
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/cc;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10406
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 10425
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->g:I

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

.method public final m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 10428
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cc;->i:Ljava/lang/Object;

    .line 10429
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10430
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 10438
    :goto_0
    return-object v1

    .line 10432
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 10434
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 10435
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10436
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/cc;->i:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10438
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 10457
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->g:I

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

.method public final o()J
    .locals 2

    .prologue
    .line 10460
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->k:J

    return-wide v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 10467
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->g:I

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

.method public final q()I
    .locals 1

    .prologue
    .line 10470
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->l:I

    return v0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 10477
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->g:I

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

.method public final s()I
    .locals 1

    .prologue
    .line 10480
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cc;->m:I

    return v0
.end method
