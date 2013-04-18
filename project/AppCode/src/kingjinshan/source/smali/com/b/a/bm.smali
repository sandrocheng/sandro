.class public final Lcom/b/a/bm;
.super Lcom/b/a/dr;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/bo;


# static fields
.field public static final a:I = 0x3e7

.field private static final b:Lcom/b/a/bm;

.field private static final f:J


# instance fields
.field private c:Ljava/util/List;

.field private d:B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14174
    new-instance v0, Lcom/b/a/bm;

    invoke-direct {v0}, Lcom/b/a/bm;-><init>()V

    .line 14175
    sput-object v0, Lcom/b/a/bm;->b:Lcom/b/a/bm;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/bm;->c:Ljava/util/List;

    .line 14176
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 13624
    invoke-direct {p0}, Lcom/b/a/dr;-><init>()V

    .line 13669
    iput-byte v0, p0, Lcom/b/a/bm;->d:B

    .line 13701
    iput v0, p0, Lcom/b/a/bm;->e:I

    .line 13624
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/bn;)V
    .locals 1
    .parameter

    .prologue
    .line 13617
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/bm;-><init>(Lcom/b/a/bn;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/bn;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 13622
    invoke-direct {p0, p1}, Lcom/b/a/dr;-><init>(Lcom/b/a/dq;)V

    .line 13669
    iput-byte v0, p0, Lcom/b/a/bm;->d:B

    .line 13701
    iput v0, p0, Lcom/b/a/bm;->e:I

    .line 13623
    return-void
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/bm;
    .locals 1
    .parameter

    .prologue
    .line 13727
    invoke-static {}, Lcom/b/a/bn;->o()Lcom/b/a/bn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bn;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bn;

    invoke-static {p0}, Lcom/b/a/bn;->a(Lcom/b/a/bn;)Lcom/b/a/bm;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/bm;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13733
    invoke-static {}, Lcom/b/a/bn;->o()Lcom/b/a/bn;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bn;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bn;

    invoke-static {p0}, Lcom/b/a/bn;->a(Lcom/b/a/bn;)Lcom/b/a/bm;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/bm;
    .locals 1
    .parameter

    .prologue
    .line 13781
    invoke-static {}, Lcom/b/a/bn;->o()Lcom/b/a/bn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bn;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bn;

    invoke-static {p0}, Lcom/b/a/bn;->a(Lcom/b/a/bn;)Lcom/b/a/bm;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bm;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13787
    invoke-static {}, Lcom/b/a/bn;->o()Lcom/b/a/bn;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bn;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bn;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/bn;->a(Lcom/b/a/bn;)Lcom/b/a/bm;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/bm;
    .locals 1
    .parameter

    .prologue
    .line 13749
    invoke-static {}, Lcom/b/a/bn;->o()Lcom/b/a/bn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bn;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bn;

    invoke-static {p0}, Lcom/b/a/bn;->a(Lcom/b/a/bn;)Lcom/b/a/bm;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/bm;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13755
    invoke-static {}, Lcom/b/a/bn;->o()Lcom/b/a/bn;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bn;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bn;

    invoke-static {p0}, Lcom/b/a/bn;->a(Lcom/b/a/bn;)Lcom/b/a/bm;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/bm;
    .locals 1
    .parameter

    .prologue
    .line 13738
    invoke-static {}, Lcom/b/a/bn;->o()Lcom/b/a/bn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bn;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bn;

    invoke-static {p0}, Lcom/b/a/bn;->a(Lcom/b/a/bn;)Lcom/b/a/bm;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/bm;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13744
    invoke-static {}, Lcom/b/a/bn;->o()Lcom/b/a/bn;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bn;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bn;

    invoke-static {p0}, Lcom/b/a/bn;->a(Lcom/b/a/bn;)Lcom/b/a/bm;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/b/a/bm;)Lcom/b/a/bn;
    .locals 1
    .parameter

    .prologue
    .line 13794
    invoke-static {}, Lcom/b/a/bn;->o()Lcom/b/a/bn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bn;->a(Lcom/b/a/bm;)Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/bm;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13617
    iput-object p1, p0, Lcom/b/a/bm;->c:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/bm;
    .locals 2
    .parameter

    .prologue
    .line 13760
    invoke-static {}, Lcom/b/a/bn;->o()Lcom/b/a/bn;

    move-result-object v0

    .line 13761
    invoke-virtual {v0, p0}, Lcom/b/a/bn;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13762
    invoke-static {v0}, Lcom/b/a/bn;->a(Lcom/b/a/bn;)Lcom/b/a/bm;

    move-result-object v0

    .line 13764
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/bm;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 13771
    invoke-static {}, Lcom/b/a/bn;->o()Lcom/b/a/bn;

    move-result-object v0

    .line 13772
    invoke-virtual {v0, p0, p1}, Lcom/b/a/bn;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13773
    invoke-static {v0}, Lcom/b/a/bn;->a(Lcom/b/a/bn;)Lcom/b/a/bm;

    move-result-object v0

    .line 13775
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/bn;
    .locals 1
    .parameter

    .prologue
    .line 13801
    new-instance v0, Lcom/b/a/bn;

    invoke-direct {v0, p0}, Lcom/b/a/bn;-><init>(Lcom/b/a/dp;)V

    .line 13802
    return-object v0
.end method

.method static synthetic b(Lcom/b/a/bm;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 13617
    iget-object v0, p0, Lcom/b/a/bm;->c:Ljava/util/List;

    return-object v0
.end method

.method public static e()Lcom/b/a/bm;
    .locals 1

    .prologue
    .line 13628
    sget-object v0, Lcom/b/a/bm;->b:Lcom/b/a/bm;

    return-object v0
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 13637
    invoke-static {}, Lcom/b/a/p;->F()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static k()Lcom/b/a/bn;
    .locals 1

    .prologue
    .line 13791
    invoke-static {}, Lcom/b/a/bn;->o()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method private static l()Lcom/b/a/bm;
    .locals 1

    .prologue
    .line 13632
    sget-object v0, Lcom/b/a/bm;->b:Lcom/b/a/bm;

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 13667
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bm;->c:Ljava/util/List;

    .line 13668
    return-void
.end method

.method private static n()Lcom/b/a/bn;
    .locals 1

    .prologue
    .line 13792
    invoke-static {}, Lcom/b/a/bn;->o()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method private o()Lcom/b/a/bn;
    .locals 1

    .prologue
    .line 13796
    invoke-static {}, Lcom/b/a/bn;->o()Lcom/b/a/bn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bn;->a(Lcom/b/a/bm;)Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A_()Ljava/util/List;
    .locals 1

    .prologue
    .line 13649
    iget-object v0, p0, Lcom/b/a/bm;->c:Ljava/util/List;

    return-object v0
.end method

.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13721
    invoke-super {p0}, Lcom/b/a/dr;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 13617
    invoke-direct {p0}, Lcom/b/a/bm;->o()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 13617
    invoke-static {}, Lcom/b/a/bn;->o()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 13617
    invoke-direct {p0}, Lcom/b/a/bm;->o()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 13617
    invoke-static {}, Lcom/b/a/bn;->o()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 13617
    sget-object v0, Lcom/b/a/bm;->b:Lcom/b/a/bm;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 13617
    sget-object v0, Lcom/b/a/bm;->b:Lcom/b/a/bm;

    return-object v0
.end method

.method public final a(I)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 13659
    iget-object v0, p0, Lcom/b/a/bm;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    return-object p0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 13617
    new-instance v0, Lcom/b/a/bn;

    invoke-direct {v0, p1}, Lcom/b/a/bn;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    .line 13690
    invoke-virtual {p0}, Lcom/b/a/bm;->b()I

    .line 13692
    invoke-virtual {p0}, Lcom/b/a/bm;->K()Lcom/b/a/ds;

    move-result-object v1

    .line 13694
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/b/a/bm;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 13695
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/b/a/bm;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 13694
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 13697
    :cond_0
    invoke-virtual {v1, p1}, Lcom/b/a/ds;->a(Lcom/b/a/n;)V

    .line 13698
    invoke-virtual {p0}, Lcom/b/a/bm;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 13699
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13671
    iget-byte v0, p0, Lcom/b/a/bm;->d:B

    .line 13672
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 13685
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 13672
    goto :goto_0

    :cond_1
    move v0, v2

    .line 13674
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/bm;->j()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 13675
    invoke-virtual {p0, v0}, Lcom/b/a/bm;->a(I)Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 13676
    iput-byte v2, p0, Lcom/b/a/bm;->d:B

    move v0, v2

    .line 13677
    goto :goto_0

    .line 13674
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13680
    :cond_3
    invoke-virtual {p0}, Lcom/b/a/bm;->J()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13681
    iput-byte v2, p0, Lcom/b/a/bm;->d:B

    move v0, v2

    .line 13682
    goto :goto_0

    .line 13684
    :cond_4
    iput-byte v3, p0, Lcom/b/a/bm;->d:B

    move v0, v3

    .line 13685
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 13703
    iget v0, p0, Lcom/b/a/bm;->e:I

    .line 13704
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 13714
    :goto_0
    return v0

    :cond_0
    move v1, v2

    .line 13707
    :goto_1
    iget-object v0, p0, Lcom/b/a/bm;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 13708
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/b/a/bm;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 13707
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 13711
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/bm;->L()I

    move-result v0

    add-int/2addr v0, v2

    .line 13712
    invoke-virtual {p0}, Lcom/b/a/bm;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 13713
    iput v0, p0, Lcom/b/a/bm;->e:I

    goto :goto_0
.end method

.method public final b(I)Lcom/b/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 13663
    iget-object v0, p0, Lcom/b/a/bm;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 13642
    invoke-static {}, Lcom/b/a/p;->G()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 13653
    iget-object v0, p0, Lcom/b/a/bm;->c:Ljava/util/List;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 13656
    iget-object v0, p0, Lcom/b/a/bm;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
