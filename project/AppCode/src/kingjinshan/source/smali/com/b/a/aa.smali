.class public final Lcom/b/a/aa;
.super Lcom/b/a/dr;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/ac;


# static fields
.field public static final a:I = 0x3e7

.field private static final b:Lcom/b/a/aa;

.field private static final f:J


# instance fields
.field private c:Ljava/util/List;

.field private d:B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12440
    new-instance v0, Lcom/b/a/aa;

    invoke-direct {v0}, Lcom/b/a/aa;-><init>()V

    .line 12441
    sput-object v0, Lcom/b/a/aa;->b:Lcom/b/a/aa;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/aa;->c:Ljava/util/List;

    .line 12442
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 11890
    invoke-direct {p0}, Lcom/b/a/dr;-><init>()V

    .line 11935
    iput-byte v0, p0, Lcom/b/a/aa;->d:B

    .line 11967
    iput v0, p0, Lcom/b/a/aa;->e:I

    .line 11890
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/ab;)V
    .locals 1
    .parameter

    .prologue
    .line 11883
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/aa;-><init>(Lcom/b/a/ab;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/ab;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 11888
    invoke-direct {p0, p1}, Lcom/b/a/dr;-><init>(Lcom/b/a/dq;)V

    .line 11935
    iput-byte v0, p0, Lcom/b/a/aa;->d:B

    .line 11967
    iput v0, p0, Lcom/b/a/aa;->e:I

    .line 11889
    return-void
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 11993
    invoke-static {}, Lcom/b/a/ab;->o()Lcom/b/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ab;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ab;

    invoke-static {p0}, Lcom/b/a/ab;->a(Lcom/b/a/ab;)Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/aa;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11999
    invoke-static {}, Lcom/b/a/ab;->o()Lcom/b/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ab;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ab;

    invoke-static {p0}, Lcom/b/a/ab;->a(Lcom/b/a/ab;)Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 12047
    invoke-static {}, Lcom/b/a/ab;->o()Lcom/b/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ab;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ab;

    invoke-static {p0}, Lcom/b/a/ab;->a(Lcom/b/a/ab;)Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/aa;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12053
    invoke-static {}, Lcom/b/a/ab;->o()Lcom/b/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ab;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/ab;->a(Lcom/b/a/ab;)Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 12015
    invoke-static {}, Lcom/b/a/ab;->o()Lcom/b/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ab;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ab;

    invoke-static {p0}, Lcom/b/a/ab;->a(Lcom/b/a/ab;)Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/aa;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12021
    invoke-static {}, Lcom/b/a/ab;->o()Lcom/b/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ab;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ab;

    invoke-static {p0}, Lcom/b/a/ab;->a(Lcom/b/a/ab;)Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 12004
    invoke-static {}, Lcom/b/a/ab;->o()Lcom/b/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ab;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ab;

    invoke-static {p0}, Lcom/b/a/ab;->a(Lcom/b/a/ab;)Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/aa;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12010
    invoke-static {}, Lcom/b/a/ab;->o()Lcom/b/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ab;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ab;

    invoke-static {p0}, Lcom/b/a/ab;->a(Lcom/b/a/ab;)Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/b/a/aa;)Lcom/b/a/ab;
    .locals 1
    .parameter

    .prologue
    .line 12060
    invoke-static {}, Lcom/b/a/ab;->o()Lcom/b/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ab;->a(Lcom/b/a/aa;)Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/aa;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11883
    iput-object p1, p0, Lcom/b/a/aa;->c:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/aa;
    .locals 2
    .parameter

    .prologue
    .line 12026
    invoke-static {}, Lcom/b/a/ab;->o()Lcom/b/a/ab;

    move-result-object v0

    .line 12027
    invoke-virtual {v0, p0}, Lcom/b/a/ab;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12028
    invoke-static {v0}, Lcom/b/a/ab;->a(Lcom/b/a/ab;)Lcom/b/a/aa;

    move-result-object v0

    .line 12030
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/aa;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 12037
    invoke-static {}, Lcom/b/a/ab;->o()Lcom/b/a/ab;

    move-result-object v0

    .line 12038
    invoke-virtual {v0, p0, p1}, Lcom/b/a/ab;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12039
    invoke-static {v0}, Lcom/b/a/ab;->a(Lcom/b/a/ab;)Lcom/b/a/aa;

    move-result-object v0

    .line 12041
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/ab;
    .locals 1
    .parameter

    .prologue
    .line 12067
    new-instance v0, Lcom/b/a/ab;

    invoke-direct {v0, p0}, Lcom/b/a/ab;-><init>(Lcom/b/a/dp;)V

    .line 12068
    return-object v0
.end method

.method static synthetic b(Lcom/b/a/aa;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 11883
    iget-object v0, p0, Lcom/b/a/aa;->c:Ljava/util/List;

    return-object v0
.end method

.method public static e()Lcom/b/a/aa;
    .locals 1

    .prologue
    .line 11894
    sget-object v0, Lcom/b/a/aa;->b:Lcom/b/a/aa;

    return-object v0
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 11903
    invoke-static {}, Lcom/b/a/p;->z()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static k()Lcom/b/a/ab;
    .locals 1

    .prologue
    .line 12057
    invoke-static {}, Lcom/b/a/ab;->o()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method private static l()Lcom/b/a/aa;
    .locals 1

    .prologue
    .line 11898
    sget-object v0, Lcom/b/a/aa;->b:Lcom/b/a/aa;

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 11933
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/aa;->c:Ljava/util/List;

    .line 11934
    return-void
.end method

.method private static n()Lcom/b/a/ab;
    .locals 1

    .prologue
    .line 12058
    invoke-static {}, Lcom/b/a/ab;->o()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method private o()Lcom/b/a/ab;
    .locals 1

    .prologue
    .line 12062
    invoke-static {}, Lcom/b/a/ab;->o()Lcom/b/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ab;->a(Lcom/b/a/aa;)Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11987
    invoke-super {p0}, Lcom/b/a/dr;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 11883
    invoke-direct {p0}, Lcom/b/a/aa;->o()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 11883
    invoke-static {}, Lcom/b/a/ab;->o()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 11883
    invoke-direct {p0}, Lcom/b/a/aa;->o()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 11883
    invoke-static {}, Lcom/b/a/ab;->o()Lcom/b/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 11883
    sget-object v0, Lcom/b/a/aa;->b:Lcom/b/a/aa;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 11883
    sget-object v0, Lcom/b/a/aa;->b:Lcom/b/a/aa;

    return-object v0
.end method

.method public final a(I)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 11925
    iget-object v0, p0, Lcom/b/a/aa;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    return-object p0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 11883
    new-instance v0, Lcom/b/a/ab;

    invoke-direct {v0, p1}, Lcom/b/a/ab;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    .line 11956
    invoke-virtual {p0}, Lcom/b/a/aa;->b()I

    .line 11958
    invoke-virtual {p0}, Lcom/b/a/aa;->K()Lcom/b/a/ds;

    move-result-object v1

    .line 11960
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/b/a/aa;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 11961
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/b/a/aa;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 11960
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 11963
    :cond_0
    invoke-virtual {v1, p1}, Lcom/b/a/ds;->a(Lcom/b/a/n;)V

    .line 11964
    invoke-virtual {p0}, Lcom/b/a/aa;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 11965
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11937
    iget-byte v0, p0, Lcom/b/a/aa;->d:B

    .line 11938
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 11951
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 11938
    goto :goto_0

    :cond_1
    move v0, v2

    .line 11940
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/aa;->j()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 11941
    invoke-virtual {p0, v0}, Lcom/b/a/aa;->a(I)Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 11942
    iput-byte v2, p0, Lcom/b/a/aa;->d:B

    move v0, v2

    .line 11943
    goto :goto_0

    .line 11940
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11946
    :cond_3
    invoke-virtual {p0}, Lcom/b/a/aa;->J()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11947
    iput-byte v2, p0, Lcom/b/a/aa;->d:B

    move v0, v2

    .line 11948
    goto :goto_0

    .line 11950
    :cond_4
    iput-byte v3, p0, Lcom/b/a/aa;->d:B

    move v0, v3

    .line 11951
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 11969
    iget v0, p0, Lcom/b/a/aa;->e:I

    .line 11970
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11980
    :goto_0
    return v0

    :cond_0
    move v1, v2

    .line 11973
    :goto_1
    iget-object v0, p0, Lcom/b/a/aa;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 11974
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/b/a/aa;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 11973
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 11977
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/aa;->L()I

    move-result v0

    add-int/2addr v0, v2

    .line 11978
    invoke-virtual {p0}, Lcom/b/a/aa;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 11979
    iput v0, p0, Lcom/b/a/aa;->e:I

    goto :goto_0
.end method

.method public final b(I)Lcom/b/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 11929
    iget-object v0, p0, Lcom/b/a/aa;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 11908
    invoke-static {}, Lcom/b/a/p;->A()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final g_()Ljava/util/List;
    .locals 1

    .prologue
    .line 11915
    iget-object v0, p0, Lcom/b/a/aa;->c:Ljava/util/List;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 11919
    iget-object v0, p0, Lcom/b/a/aa;->c:Ljava/util/List;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 11922
    iget-object v0, p0, Lcom/b/a/aa;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
