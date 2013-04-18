.class public final Lcom/b/a/bx;
.super Lcom/b/a/dk;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/bz;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/b/a/bx;

.field private static final k:J


# instance fields
.field private d:Ljava/util/List;

.field private e:I

.field private f:Ljava/util/List;

.field private g:I

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16162
    new-instance v0, Lcom/b/a/bx;

    invoke-direct {v0}, Lcom/b/a/bx;-><init>()V

    .line 16163
    sput-object v0, Lcom/b/a/bx;->c:Lcom/b/a/bx;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/bx;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/bx;->f:Ljava/util/List;

    .line 16164
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 15675
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 15709
    iput v0, p0, Lcom/b/a/bx;->e:I

    .line 15724
    iput v0, p0, Lcom/b/a/bx;->g:I

    .line 15730
    iput-byte v0, p0, Lcom/b/a/bx;->h:B

    .line 15759
    iput v0, p0, Lcom/b/a/bx;->i:I

    .line 15675
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/by;)V
    .locals 1
    .parameter

    .prologue
    .line 15668
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/bx;-><init>(Lcom/b/a/by;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/by;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 15673
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 15709
    iput v0, p0, Lcom/b/a/bx;->e:I

    .line 15724
    iput v0, p0, Lcom/b/a/bx;->g:I

    .line 15730
    iput-byte v0, p0, Lcom/b/a/bx;->h:B

    .line 15759
    iput v0, p0, Lcom/b/a/bx;->i:I

    .line 15674
    return-void
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/bx;
    .locals 1
    .parameter

    .prologue
    .line 15808
    invoke-static {}, Lcom/b/a/by;->n()Lcom/b/a/by;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/by;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/by;

    invoke-static {p0}, Lcom/b/a/by;->a(Lcom/b/a/by;)Lcom/b/a/bx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/bx;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15814
    invoke-static {}, Lcom/b/a/by;->n()Lcom/b/a/by;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/by;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/by;

    invoke-static {p0}, Lcom/b/a/by;->a(Lcom/b/a/by;)Lcom/b/a/bx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/bx;
    .locals 1
    .parameter

    .prologue
    .line 15862
    invoke-static {}, Lcom/b/a/by;->n()Lcom/b/a/by;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/by;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/by;

    invoke-static {p0}, Lcom/b/a/by;->a(Lcom/b/a/by;)Lcom/b/a/bx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bx;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15868
    invoke-static {}, Lcom/b/a/by;->n()Lcom/b/a/by;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/by;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/by;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/by;->a(Lcom/b/a/by;)Lcom/b/a/bx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/bx;
    .locals 1
    .parameter

    .prologue
    .line 15830
    invoke-static {}, Lcom/b/a/by;->n()Lcom/b/a/by;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/by;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/by;

    invoke-static {p0}, Lcom/b/a/by;->a(Lcom/b/a/by;)Lcom/b/a/bx;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/bx;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15836
    invoke-static {}, Lcom/b/a/by;->n()Lcom/b/a/by;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/by;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/by;

    invoke-static {p0}, Lcom/b/a/by;->a(Lcom/b/a/by;)Lcom/b/a/bx;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/bx;
    .locals 1
    .parameter

    .prologue
    .line 15819
    invoke-static {}, Lcom/b/a/by;->n()Lcom/b/a/by;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/by;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/by;

    invoke-static {p0}, Lcom/b/a/by;->a(Lcom/b/a/by;)Lcom/b/a/bx;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/bx;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15825
    invoke-static {}, Lcom/b/a/by;->n()Lcom/b/a/by;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/by;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/by;

    invoke-static {p0}, Lcom/b/a/by;->a(Lcom/b/a/by;)Lcom/b/a/bx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/bx;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 15668
    iget-object v0, p0, Lcom/b/a/bx;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/bx;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15668
    iput-object p1, p0, Lcom/b/a/bx;->d:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/bx;
    .locals 2
    .parameter

    .prologue
    .line 15841
    invoke-static {}, Lcom/b/a/by;->n()Lcom/b/a/by;

    move-result-object v0

    .line 15842
    invoke-virtual {v0, p0}, Lcom/b/a/by;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15843
    invoke-static {v0}, Lcom/b/a/by;->a(Lcom/b/a/by;)Lcom/b/a/bx;

    move-result-object v0

    .line 15845
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/bx;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15852
    invoke-static {}, Lcom/b/a/by;->n()Lcom/b/a/by;

    move-result-object v0

    .line 15853
    invoke-virtual {v0, p0, p1}, Lcom/b/a/by;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15854
    invoke-static {v0}, Lcom/b/a/by;->a(Lcom/b/a/by;)Lcom/b/a/bx;

    move-result-object v0

    .line 15856
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/by;
    .locals 1
    .parameter

    .prologue
    .line 15882
    new-instance v0, Lcom/b/a/by;

    invoke-direct {v0, p0}, Lcom/b/a/by;-><init>(Lcom/b/a/dp;)V

    .line 15883
    return-object v0
.end method

.method static synthetic b(Lcom/b/a/bx;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 15668
    iget-object v0, p0, Lcom/b/a/bx;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/bx;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15668
    iput-object p1, p0, Lcom/b/a/bx;->f:Ljava/util/List;

    return-object p1
.end method

.method private static c(Lcom/b/a/bx;)Lcom/b/a/by;
    .locals 1
    .parameter

    .prologue
    .line 15875
    invoke-static {}, Lcom/b/a/by;->n()Lcom/b/a/by;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/by;->a(Lcom/b/a/bx;)Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lcom/b/a/bx;
    .locals 1

    .prologue
    .line 15679
    sget-object v0, Lcom/b/a/bx;->c:Lcom/b/a/bx;

    return-object v0
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 15688
    invoke-static {}, Lcom/b/a/p;->N()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static l()Lcom/b/a/by;
    .locals 1

    .prologue
    .line 15872
    invoke-static {}, Lcom/b/a/by;->n()Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method private static m()Lcom/b/a/bx;
    .locals 1

    .prologue
    .line 15683
    sget-object v0, Lcom/b/a/bx;->c:Lcom/b/a/bx;

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 15727
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bx;->d:Ljava/util/List;

    .line 15728
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bx;->f:Ljava/util/List;

    .line 15729
    return-void
.end method

.method private static o()Lcom/b/a/by;
    .locals 1

    .prologue
    .line 15873
    invoke-static {}, Lcom/b/a/by;->n()Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method private p()Lcom/b/a/by;
    .locals 1

    .prologue
    .line 15877
    invoke-static {}, Lcom/b/a/by;->n()Lcom/b/a/by;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/by;->a(Lcom/b/a/bx;)Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15802
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 15668
    invoke-direct {p0}, Lcom/b/a/bx;->p()Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 15668
    invoke-static {}, Lcom/b/a/by;->n()Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final E_()Ljava/util/List;
    .locals 1

    .prologue
    .line 15701
    iget-object v0, p0, Lcom/b/a/bx;->d:Ljava/util/List;

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 15668
    invoke-direct {p0}, Lcom/b/a/bx;->p()Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 15668
    invoke-static {}, Lcom/b/a/by;->n()Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 15668
    sget-object v0, Lcom/b/a/bx;->c:Lcom/b/a/bx;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 15668
    sget-object v0, Lcom/b/a/bx;->c:Lcom/b/a/bx;

    return-object v0
.end method

.method public final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 15707
    iget-object v0, p0, Lcom/b/a/bx;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 15668
    new-instance v0, Lcom/b/a/by;

    invoke-direct {v0, p1}, Lcom/b/a/by;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 15741
    invoke-virtual {p0}, Lcom/b/a/bx;->b()I

    .line 15742
    iget-object v0, p0, Lcom/b/a/bx;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 15743
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/b/a/n;->q(I)V

    .line 15744
    iget v0, p0, Lcom/b/a/bx;->e:I

    invoke-virtual {p1, v0}, Lcom/b/a/n;->q(I)V

    :cond_0
    move v1, v2

    .line 15746
    :goto_0
    iget-object v0, p0, Lcom/b/a/bx;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 15747
    iget-object v0, p0, Lcom/b/a/bx;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/b/a/n;->c(I)V

    .line 15746
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 15749
    :cond_1
    iget-object v0, p0, Lcom/b/a/bx;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 15750
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/b/a/n;->q(I)V

    .line 15751
    iget v0, p0, Lcom/b/a/bx;->g:I

    invoke-virtual {p1, v0}, Lcom/b/a/n;->q(I)V

    :cond_2
    move v1, v2

    .line 15753
    :goto_1
    iget-object v0, p0, Lcom/b/a/bx;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 15754
    iget-object v0, p0, Lcom/b/a/bx;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/b/a/n;->c(I)V

    .line 15753
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 15756
    :cond_3
    invoke-virtual {p0}, Lcom/b/a/bx;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 15757
    return-void
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 15732
    iget-byte v0, p0, Lcom/b/a/bx;->h:B

    .line 15733
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 15736
    :goto_0
    return v0

    .line 15733
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 15735
    :cond_1
    iput-byte v2, p0, Lcom/b/a/bx;->h:B

    move v0, v2

    .line 15736
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 15761
    iget v0, p0, Lcom/b/a/bx;->i:I

    .line 15762
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 15795
    :goto_0
    return v0

    :cond_0
    move v1, v3

    move v2, v3

    .line 15767
    :goto_1
    iget-object v0, p0, Lcom/b/a/bx;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 15768
    iget-object v0, p0, Lcom/b/a/bx;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/b/a/n;->l(I)I

    move-result v0

    add-int/2addr v0, v2

    .line 15767
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 15771
    :cond_1
    add-int/lit8 v0, v2, 0x0

    .line 15772
    iget-object v1, p0, Lcom/b/a/bx;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 15773
    add-int/lit8 v0, v0, 0x1

    .line 15774
    invoke-static {v2}, Lcom/b/a/n;->l(I)I

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    .line 15777
    :goto_2
    iput v2, p0, Lcom/b/a/bx;->e:I

    move v2, v3

    .line 15781
    :goto_3
    iget-object v0, p0, Lcom/b/a/bx;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 15782
    iget-object v0, p0, Lcom/b/a/bx;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/b/a/n;->l(I)I

    move-result v0

    add-int/2addr v0, v3

    .line 15781
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_3

    .line 15785
    :cond_2
    add-int v0, v1, v3

    .line 15786
    iget-object v1, p0, Lcom/b/a/bx;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 15787
    add-int/lit8 v0, v0, 0x1

    .line 15788
    invoke-static {v3}, Lcom/b/a/n;->l(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 15791
    :cond_3
    iput v3, p0, Lcom/b/a/bx;->g:I

    .line 15793
    invoke-virtual {p0}, Lcom/b/a/bx;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 15794
    iput v0, p0, Lcom/b/a/bx;->i:I

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_2
.end method

.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 15722
    iget-object v0, p0, Lcom/b/a/bx;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 15693
    invoke-static {}, Lcom/b/a/p;->O()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 15704
    iget-object v0, p0, Lcom/b/a/bx;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .prologue
    .line 15716
    iget-object v0, p0, Lcom/b/a/bx;->f:Ljava/util/List;

    return-object v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 15719
    iget-object v0, p0, Lcom/b/a/bx;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
