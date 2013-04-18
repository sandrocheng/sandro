.class public final Lcom/b/a/bv;
.super Lcom/b/a/dk;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/ca;


# static fields
.field public static final a:I = 0x1

.field private static final b:Lcom/b/a/bv;

.field private static final f:J


# instance fields
.field private c:Ljava/util/List;

.field private d:B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16672
    new-instance v0, Lcom/b/a/bv;

    invoke-direct {v0}, Lcom/b/a/bv;-><init>()V

    .line 16673
    sput-object v0, Lcom/b/a/bv;->b:Lcom/b/a/bv;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/bv;->c:Ljava/util/List;

    .line 16674
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 15634
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 16193
    iput-byte v0, p0, Lcom/b/a/bv;->d:B

    .line 16211
    iput v0, p0, Lcom/b/a/bv;->e:I

    .line 15634
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/bw;)V
    .locals 1
    .parameter

    .prologue
    .line 15627
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/bv;-><init>(Lcom/b/a/bw;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/bw;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 15632
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 16193
    iput-byte v0, p0, Lcom/b/a/bv;->d:B

    .line 16211
    iput v0, p0, Lcom/b/a/bv;->e:I

    .line 15633
    return-void
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/bv;
    .locals 1
    .parameter

    .prologue
    .line 16236
    invoke-static {}, Lcom/b/a/bw;->m()Lcom/b/a/bw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bw;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bw;

    invoke-static {p0}, Lcom/b/a/bw;->a(Lcom/b/a/bw;)Lcom/b/a/bv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/bv;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16242
    invoke-static {}, Lcom/b/a/bw;->m()Lcom/b/a/bw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bw;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bw;

    invoke-static {p0}, Lcom/b/a/bw;->a(Lcom/b/a/bw;)Lcom/b/a/bv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/bv;
    .locals 1
    .parameter

    .prologue
    .line 16290
    invoke-static {}, Lcom/b/a/bw;->m()Lcom/b/a/bw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bw;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bw;

    invoke-static {p0}, Lcom/b/a/bw;->a(Lcom/b/a/bw;)Lcom/b/a/bv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bv;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16296
    invoke-static {}, Lcom/b/a/bw;->m()Lcom/b/a/bw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bw;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/bw;->a(Lcom/b/a/bw;)Lcom/b/a/bv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/bv;
    .locals 1
    .parameter

    .prologue
    .line 16258
    invoke-static {}, Lcom/b/a/bw;->m()Lcom/b/a/bw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bw;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bw;

    invoke-static {p0}, Lcom/b/a/bw;->a(Lcom/b/a/bw;)Lcom/b/a/bv;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/bv;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16264
    invoke-static {}, Lcom/b/a/bw;->m()Lcom/b/a/bw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bw;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bw;

    invoke-static {p0}, Lcom/b/a/bw;->a(Lcom/b/a/bw;)Lcom/b/a/bv;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/bv;
    .locals 1
    .parameter

    .prologue
    .line 16247
    invoke-static {}, Lcom/b/a/bw;->m()Lcom/b/a/bw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bw;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bw;

    invoke-static {p0}, Lcom/b/a/bw;->a(Lcom/b/a/bw;)Lcom/b/a/bv;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/bv;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16253
    invoke-static {}, Lcom/b/a/bw;->m()Lcom/b/a/bw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bw;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bw;

    invoke-static {p0}, Lcom/b/a/bw;->a(Lcom/b/a/bw;)Lcom/b/a/bv;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/b/a/bv;)Lcom/b/a/bw;
    .locals 1
    .parameter

    .prologue
    .line 16303
    invoke-static {}, Lcom/b/a/bw;->m()Lcom/b/a/bw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bw;->a(Lcom/b/a/bv;)Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/bv;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15627
    iput-object p1, p0, Lcom/b/a/bv;->c:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/bv;
    .locals 2
    .parameter

    .prologue
    .line 16269
    invoke-static {}, Lcom/b/a/bw;->m()Lcom/b/a/bw;

    move-result-object v0

    .line 16270
    invoke-virtual {v0, p0}, Lcom/b/a/bw;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16271
    invoke-static {v0}, Lcom/b/a/bw;->a(Lcom/b/a/bw;)Lcom/b/a/bv;

    move-result-object v0

    .line 16273
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/bv;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16280
    invoke-static {}, Lcom/b/a/bw;->m()Lcom/b/a/bw;

    move-result-object v0

    .line 16281
    invoke-virtual {v0, p0, p1}, Lcom/b/a/bw;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16282
    invoke-static {v0}, Lcom/b/a/bw;->a(Lcom/b/a/bw;)Lcom/b/a/bv;

    move-result-object v0

    .line 16284
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/bw;
    .locals 1
    .parameter

    .prologue
    .line 16310
    new-instance v0, Lcom/b/a/bw;

    invoke-direct {v0, p0}, Lcom/b/a/bw;-><init>(Lcom/b/a/dp;)V

    .line 16311
    return-object v0
.end method

.method static synthetic b(Lcom/b/a/bv;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 15627
    iget-object v0, p0, Lcom/b/a/bv;->c:Ljava/util/List;

    return-object v0
.end method

.method public static e()Lcom/b/a/bv;
    .locals 1

    .prologue
    .line 15638
    sget-object v0, Lcom/b/a/bv;->b:Lcom/b/a/bv;

    return-object v0
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 15647
    invoke-static {}, Lcom/b/a/p;->L()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static k()Lcom/b/a/bw;
    .locals 1

    .prologue
    .line 16300
    invoke-static {}, Lcom/b/a/bw;->m()Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method private static l()Lcom/b/a/bv;
    .locals 1

    .prologue
    .line 15642
    sget-object v0, Lcom/b/a/bv;->b:Lcom/b/a/bv;

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 16191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bv;->c:Ljava/util/List;

    .line 16192
    return-void
.end method

.method private static n()Lcom/b/a/bw;
    .locals 1

    .prologue
    .line 16301
    invoke-static {}, Lcom/b/a/bw;->m()Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method private o()Lcom/b/a/bw;
    .locals 1

    .prologue
    .line 16305
    invoke-static {}, Lcom/b/a/bw;->m()Lcom/b/a/bw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bw;->a(Lcom/b/a/bv;)Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16230
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 15627
    invoke-direct {p0}, Lcom/b/a/bv;->o()Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final D_()Ljava/util/List;
    .locals 1

    .prologue
    .line 16173
    iget-object v0, p0, Lcom/b/a/bv;->c:Ljava/util/List;

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 15627
    invoke-static {}, Lcom/b/a/bw;->m()Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 15627
    invoke-direct {p0}, Lcom/b/a/bv;->o()Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 15627
    invoke-static {}, Lcom/b/a/bw;->m()Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 15627
    sget-object v0, Lcom/b/a/bv;->b:Lcom/b/a/bv;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 15627
    sget-object v0, Lcom/b/a/bv;->b:Lcom/b/a/bv;

    return-object v0
.end method

.method public final a(I)Lcom/b/a/bx;
    .locals 1
    .parameter

    .prologue
    .line 16183
    iget-object v0, p0, Lcom/b/a/bv;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/bx;

    return-object p0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 15627
    new-instance v0, Lcom/b/a/bw;

    invoke-direct {v0, p1}, Lcom/b/a/bw;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    .line 16204
    invoke-virtual {p0}, Lcom/b/a/bv;->b()I

    .line 16205
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/b/a/bv;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 16206
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/b/a/bv;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 16205
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 16208
    :cond_0
    invoke-virtual {p0}, Lcom/b/a/bv;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 16209
    return-void
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 16195
    iget-byte v0, p0, Lcom/b/a/bv;->d:B

    .line 16196
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 16199
    :goto_0
    return v0

    .line 16196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 16198
    :cond_1
    iput-byte v2, p0, Lcom/b/a/bv;->d:B

    move v0, v2

    .line 16199
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 16213
    iget v0, p0, Lcom/b/a/bv;->e:I

    .line 16214
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 16223
    :goto_0
    return v0

    :cond_0
    move v1, v2

    .line 16217
    :goto_1
    iget-object v0, p0, Lcom/b/a/bv;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 16218
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/b/a/bv;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 16217
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 16221
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/bv;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gg;->b()I

    move-result v0

    add-int/2addr v0, v2

    .line 16222
    iput v0, p0, Lcom/b/a/bv;->e:I

    goto :goto_0
.end method

.method public final b(I)Lcom/b/a/bz;
    .locals 1
    .parameter

    .prologue
    .line 16187
    iget-object v0, p0, Lcom/b/a/bv;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/bz;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 15652
    invoke-static {}, Lcom/b/a/p;->M()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 16177
    iget-object v0, p0, Lcom/b/a/bv;->c:Ljava/util/List;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 16180
    iget-object v0, p0, Lcom/b/a/bv;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
