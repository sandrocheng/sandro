.class public final Lcom/b/a/bp;
.super Lcom/b/a/dk;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/br;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/b/a/bp;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/util/List;

.field private h:Lcom/b/a/bs;

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8330
    new-instance v0, Lcom/b/a/bp;

    invoke-direct {v0}, Lcom/b/a/bp;-><init>()V

    .line 8331
    sput-object v0, Lcom/b/a/bp;->d:Lcom/b/a/bp;

    const-string v1, ""

    iput-object v1, v0, Lcom/b/a/bp;->f:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/bp;->g:Ljava/util/List;

    invoke-static {}, Lcom/b/a/bs;->e()Lcom/b/a/bs;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/bp;->h:Lcom/b/a/bs;

    .line 8332
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 7551
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 7644
    iput-byte v0, p0, Lcom/b/a/bp;->i:B

    .line 7680
    iput v0, p0, Lcom/b/a/bp;->k:I

    .line 7551
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/bq;)V
    .locals 1
    .parameter

    .prologue
    .line 7544
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/bp;-><init>(Lcom/b/a/bq;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/bq;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 7549
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 7644
    iput-byte v0, p0, Lcom/b/a/bp;->i:B

    .line 7680
    iput v0, p0, Lcom/b/a/bp;->k:I

    .line 7550
    return-void
.end method

.method static synthetic a(Lcom/b/a/bp;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7544
    iput p1, p0, Lcom/b/a/bp;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/bp;
    .locals 1
    .parameter

    .prologue
    .line 7713
    invoke-static {}, Lcom/b/a/bq;->r()Lcom/b/a/bq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bq;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bq;

    invoke-static {p0}, Lcom/b/a/bq;->a(Lcom/b/a/bq;)Lcom/b/a/bp;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/bp;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7719
    invoke-static {}, Lcom/b/a/bq;->r()Lcom/b/a/bq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bq;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bq;

    invoke-static {p0}, Lcom/b/a/bq;->a(Lcom/b/a/bq;)Lcom/b/a/bp;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/bp;
    .locals 1
    .parameter

    .prologue
    .line 7767
    invoke-static {}, Lcom/b/a/bq;->r()Lcom/b/a/bq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bq;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bq;

    invoke-static {p0}, Lcom/b/a/bq;->a(Lcom/b/a/bq;)Lcom/b/a/bp;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bp;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7773
    invoke-static {}, Lcom/b/a/bq;->r()Lcom/b/a/bq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bq;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/bq;->a(Lcom/b/a/bq;)Lcom/b/a/bp;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/bp;
    .locals 1
    .parameter

    .prologue
    .line 7735
    invoke-static {}, Lcom/b/a/bq;->r()Lcom/b/a/bq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bq;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bq;

    invoke-static {p0}, Lcom/b/a/bq;->a(Lcom/b/a/bq;)Lcom/b/a/bp;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/bp;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7741
    invoke-static {}, Lcom/b/a/bq;->r()Lcom/b/a/bq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bq;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bq;

    invoke-static {p0}, Lcom/b/a/bq;->a(Lcom/b/a/bq;)Lcom/b/a/bp;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/bp;
    .locals 1
    .parameter

    .prologue
    .line 7724
    invoke-static {}, Lcom/b/a/bq;->r()Lcom/b/a/bq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bq;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bq;

    invoke-static {p0}, Lcom/b/a/bq;->a(Lcom/b/a/bq;)Lcom/b/a/bp;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/bp;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7730
    invoke-static {}, Lcom/b/a/bq;->r()Lcom/b/a/bq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bq;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bq;

    invoke-static {p0}, Lcom/b/a/bq;->a(Lcom/b/a/bq;)Lcom/b/a/bp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/bp;Lcom/b/a/bs;)Lcom/b/a/bs;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7544
    iput-object p1, p0, Lcom/b/a/bp;->h:Lcom/b/a/bs;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/bp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7544
    iput-object p1, p0, Lcom/b/a/bp;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/bp;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 7544
    iget-object v0, p0, Lcom/b/a/bp;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/bp;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7544
    iput-object p1, p0, Lcom/b/a/bp;->g:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/bp;
    .locals 2
    .parameter

    .prologue
    .line 7746
    invoke-static {}, Lcom/b/a/bq;->r()Lcom/b/a/bq;

    move-result-object v0

    .line 7747
    invoke-virtual {v0, p0}, Lcom/b/a/bq;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7748
    invoke-static {v0}, Lcom/b/a/bq;->a(Lcom/b/a/bq;)Lcom/b/a/bp;

    move-result-object v0

    .line 7750
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/bp;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7757
    invoke-static {}, Lcom/b/a/bq;->r()Lcom/b/a/bq;

    move-result-object v0

    .line 7758
    invoke-virtual {v0, p0, p1}, Lcom/b/a/bq;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7759
    invoke-static {v0}, Lcom/b/a/bq;->a(Lcom/b/a/bq;)Lcom/b/a/bp;

    move-result-object v0

    .line 7761
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/bp;)Lcom/b/a/bq;
    .locals 1
    .parameter

    .prologue
    .line 7780
    invoke-static {}, Lcom/b/a/bq;->r()Lcom/b/a/bq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bq;->a(Lcom/b/a/bp;)Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/bq;
    .locals 1
    .parameter

    .prologue
    .line 7787
    new-instance v0, Lcom/b/a/bq;

    invoke-direct {v0, p0}, Lcom/b/a/bq;-><init>(Lcom/b/a/dp;)V

    .line 7788
    return-object v0
.end method

.method public static e()Lcom/b/a/bp;
    .locals 1

    .prologue
    .line 7555
    sget-object v0, Lcom/b/a/bp;->d:Lcom/b/a/bp;

    return-object v0
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 7564
    invoke-static {}, Lcom/b/a/p;->p()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static p()Lcom/b/a/bq;
    .locals 1

    .prologue
    .line 7777
    invoke-static {}, Lcom/b/a/bq;->r()Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lcom/b/a/bp;
    .locals 1

    .prologue
    .line 7559
    sget-object v0, Lcom/b/a/bp;->d:Lcom/b/a/bp;

    return-object v0
.end method

.method private r()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 7594
    iget-object v0, p0, Lcom/b/a/bp;->f:Ljava/lang/Object;

    .line 7595
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7596
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 7598
    iput-object v0, p0, Lcom/b/a/bp;->f:Ljava/lang/Object;

    .line 7601
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 7640
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bp;->f:Ljava/lang/Object;

    .line 7641
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bp;->g:Ljava/util/List;

    .line 7642
    invoke-static {}, Lcom/b/a/bs;->e()Lcom/b/a/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bp;->h:Lcom/b/a/bs;

    .line 7643
    return-void
.end method

.method private static t()Lcom/b/a/bq;
    .locals 1

    .prologue
    .line 7778
    invoke-static {}, Lcom/b/a/bq;->r()Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/b/a/bq;
    .locals 1

    .prologue
    .line 7782
    invoke-static {}, Lcom/b/a/bq;->r()Lcom/b/a/bq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bq;->a(Lcom/b/a/bp;)Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7707
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final B_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7577
    iget v0, p0, Lcom/b/a/bp;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 7544
    invoke-direct {p0}, Lcom/b/a/bp;->u()Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 7544
    invoke-static {}, Lcom/b/a/bq;->r()Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 7544
    invoke-direct {p0}, Lcom/b/a/bp;->u()Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 7544
    invoke-static {}, Lcom/b/a/bq;->r()Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 7544
    sget-object v0, Lcom/b/a/bp;->d:Lcom/b/a/bp;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 7544
    sget-object v0, Lcom/b/a/bp;->d:Lcom/b/a/bp;

    return-object v0
.end method

.method public final a(I)Lcom/b/a/bj;
    .locals 1
    .parameter

    .prologue
    .line 7619
    iget-object v0, p0, Lcom/b/a/bp;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/bj;

    return-object p0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 7544
    new-instance v0, Lcom/b/a/bq;

    invoke-direct {v0, p1}, Lcom/b/a/bq;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 7667
    invoke-virtual {p0}, Lcom/b/a/bp;->b()I

    .line 7668
    iget v0, p0, Lcom/b/a/bp;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 7669
    invoke-direct {p0}, Lcom/b/a/bp;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 7671
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/b/a/bp;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 7672
    iget-object v0, p0, Lcom/b/a/bp;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 7671
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 7674
    :cond_1
    iget v0, p0, Lcom/b/a/bp;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_2

    .line 7675
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/b/a/bp;->h:Lcom/b/a/bs;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 7677
    :cond_2
    invoke-virtual {p0}, Lcom/b/a/bp;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 7678
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7646
    iget-byte v0, p0, Lcom/b/a/bp;->i:B

    .line 7647
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 7662
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 7647
    goto :goto_0

    :cond_1
    move v0, v2

    .line 7649
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/bp;->l()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 7650
    invoke-virtual {p0, v0}, Lcom/b/a/bp;->a(I)Lcom/b/a/bj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/bj;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7651
    iput-byte v2, p0, Lcom/b/a/bp;->i:B

    move v0, v2

    .line 7652
    goto :goto_0

    .line 7649
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7655
    :cond_3
    invoke-virtual {p0}, Lcom/b/a/bp;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7656
    iget-object v0, p0, Lcom/b/a/bp;->h:Lcom/b/a/bs;

    invoke-virtual {v0}, Lcom/b/a/bs;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7657
    iput-byte v2, p0, Lcom/b/a/bp;->i:B

    move v0, v2

    .line 7658
    goto :goto_0

    .line 7661
    :cond_4
    iput-byte v3, p0, Lcom/b/a/bp;->i:B

    move v0, v3

    .line 7662
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7682
    iget v0, p0, Lcom/b/a/bp;->k:I

    .line 7683
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7700
    :goto_0
    return v0

    .line 7686
    :cond_0
    iget v0, p0, Lcom/b/a/bp;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_3

    .line 7687
    invoke-direct {p0}, Lcom/b/a/bp;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    move v1, v2

    move v2, v0

    .line 7690
    :goto_2
    iget-object v0, p0, Lcom/b/a/bp;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 7691
    iget-object v0, p0, Lcom/b/a/bp;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v4, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 7690
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 7694
    :cond_1
    iget v0, p0, Lcom/b/a/bp;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_2

    .line 7695
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/b/a/bp;->h:Lcom/b/a/bs;

    invoke-static {v0, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 7698
    :goto_3
    invoke-virtual {p0}, Lcom/b/a/bp;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 7699
    iput v0, p0, Lcom/b/a/bp;->k:I

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final b(I)Lcom/b/a/bl;
    .locals 1
    .parameter

    .prologue
    .line 7623
    iget-object v0, p0, Lcom/b/a/bp;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/bl;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 7569
    invoke-static {}, Lcom/b/a/p;->q()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 7580
    iget-object v1, p0, Lcom/b/a/bp;->f:Ljava/lang/Object;

    .line 7581
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7582
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 7590
    :goto_0
    return-object v1

    .line 7584
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 7586
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 7587
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7588
    iput-object v2, p0, Lcom/b/a/bp;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7590
    goto :goto_0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .prologue
    .line 7609
    iget-object v0, p0, Lcom/b/a/bp;->g:Ljava/util/List;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1

    .prologue
    .line 7613
    iget-object v0, p0, Lcom/b/a/bp;->g:Ljava/util/List;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 7616
    iget-object v0, p0, Lcom/b/a/bp;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 7630
    iget v0, p0, Lcom/b/a/bp;->e:I

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

.method public final n()Lcom/b/a/bs;
    .locals 1

    .prologue
    .line 7633
    iget-object v0, p0, Lcom/b/a/bp;->h:Lcom/b/a/bs;

    return-object v0
.end method

.method public final o()Lcom/b/a/bu;
    .locals 1

    .prologue
    .line 7636
    iget-object v0, p0, Lcom/b/a/bp;->h:Lcom/b/a/bs;

    return-object v0
.end method
