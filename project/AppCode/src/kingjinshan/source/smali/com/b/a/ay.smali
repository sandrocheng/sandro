.class public final Lcom/b/a/ay;
.super Lcom/b/a/dk;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/ba;


# static fields
.field public static final a:I = 0x1

.field private static final b:Lcom/b/a/ay;

.field private static final f:J


# instance fields
.field private c:Ljava/util/List;

.field private d:B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 567
    new-instance v0, Lcom/b/a/ay;

    invoke-direct {v0}, Lcom/b/a/ay;-><init>()V

    .line 568
    sput-object v0, Lcom/b/a/ay;->b:Lcom/b/a/ay;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ay;->c:Ljava/util/List;

    .line 569
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 76
    iput-byte v0, p0, Lcom/b/a/ay;->d:B

    .line 100
    iput v0, p0, Lcom/b/a/ay;->e:I

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/az;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/ay;-><init>(Lcom/b/a/az;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/az;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 76
    iput-byte v0, p0, Lcom/b/a/ay;->d:B

    .line 100
    iput v0, p0, Lcom/b/a/ay;->e:I

    .line 30
    return-void
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/ay;
    .locals 1
    .parameter

    .prologue
    .line 125
    invoke-static {}, Lcom/b/a/az;->k()Lcom/b/a/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/az;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/az;

    invoke-static {p0}, Lcom/b/a/az;->a(Lcom/b/a/az;)Lcom/b/a/ay;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/ay;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-static {}, Lcom/b/a/az;->k()Lcom/b/a/az;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/az;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/az;

    invoke-static {p0}, Lcom/b/a/az;->a(Lcom/b/a/az;)Lcom/b/a/ay;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/ay;
    .locals 1
    .parameter

    .prologue
    .line 179
    invoke-static {}, Lcom/b/a/az;->k()Lcom/b/a/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/az;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/az;

    invoke-static {p0}, Lcom/b/a/az;->a(Lcom/b/a/az;)Lcom/b/a/ay;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ay;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-static {}, Lcom/b/a/az;->k()Lcom/b/a/az;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/az;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/az;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/az;->a(Lcom/b/a/az;)Lcom/b/a/ay;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/ay;
    .locals 1
    .parameter

    .prologue
    .line 147
    invoke-static {}, Lcom/b/a/az;->k()Lcom/b/a/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/az;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/az;

    invoke-static {p0}, Lcom/b/a/az;->a(Lcom/b/a/az;)Lcom/b/a/ay;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/ay;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-static {}, Lcom/b/a/az;->k()Lcom/b/a/az;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/az;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/az;

    invoke-static {p0}, Lcom/b/a/az;->a(Lcom/b/a/az;)Lcom/b/a/ay;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/ay;
    .locals 1
    .parameter

    .prologue
    .line 136
    invoke-static {}, Lcom/b/a/az;->k()Lcom/b/a/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/az;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/az;

    invoke-static {p0}, Lcom/b/a/az;->a(Lcom/b/a/az;)Lcom/b/a/ay;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/ay;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-static {}, Lcom/b/a/az;->k()Lcom/b/a/az;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/az;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/az;

    invoke-static {p0}, Lcom/b/a/az;->a(Lcom/b/a/az;)Lcom/b/a/ay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/ay;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/b/a/ay;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/ay;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/b/a/ay;->c:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/ay;
    .locals 2
    .parameter

    .prologue
    .line 158
    invoke-static {}, Lcom/b/a/az;->k()Lcom/b/a/az;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p0}, Lcom/b/a/az;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-static {v0}, Lcom/b/a/az;->a(Lcom/b/a/az;)Lcom/b/a/ay;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/ay;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-static {}, Lcom/b/a/az;->k()Lcom/b/a/az;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p0, p1}, Lcom/b/a/az;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-static {v0}, Lcom/b/a/az;->a(Lcom/b/a/az;)Lcom/b/a/ay;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/ay;)Lcom/b/a/az;
    .locals 1
    .parameter

    .prologue
    .line 192
    invoke-static {}, Lcom/b/a/az;->k()Lcom/b/a/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/az;->a(Lcom/b/a/ay;)Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/az;
    .locals 1
    .parameter

    .prologue
    .line 199
    new-instance v0, Lcom/b/a/az;

    invoke-direct {v0, p0}, Lcom/b/a/az;-><init>(Lcom/b/a/dp;)V

    .line 200
    return-object v0
.end method

.method public static e()Lcom/b/a/ay;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/b/a/ay;->b:Lcom/b/a/ay;

    return-object v0
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/b/a/p;->b()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static k()Lcom/b/a/ay;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/b/a/ay;->b:Lcom/b/a/ay;

    return-object v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ay;->c:Ljava/util/List;

    .line 75
    return-void
.end method

.method private static m()Lcom/b/a/az;
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/b/a/az;->k()Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method private static n()Lcom/b/a/az;
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/b/a/az;->k()Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method private o()Lcom/b/a/az;
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/b/a/az;->k()Lcom/b/a/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/az;->a(Lcom/b/a/ay;)Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/b/a/ay;->o()Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/b/a/az;->k()Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/b/a/ay;->o()Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/b/a/az;->k()Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/b/a/ay;->b:Lcom/b/a/ay;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/b/a/ay;->b:Lcom/b/a/ay;

    return-object v0
.end method

.method public final a(I)Lcom/b/a/av;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/b/a/ay;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/av;

    return-object p0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 24
    new-instance v0, Lcom/b/a/az;

    invoke-direct {v0, p1}, Lcom/b/a/az;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/b/a/ay;->b()I

    .line 94
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/b/a/ay;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 95
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/b/a/ay;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 94
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/b/a/ay;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 98
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    iget-byte v0, p0, Lcom/b/a/ay;->d:B

    .line 79
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 88
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 79
    goto :goto_0

    :cond_1
    move v0, v2

    .line 81
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/ay;->j()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 82
    invoke-virtual {p0, v0}, Lcom/b/a/ay;->a(I)Lcom/b/a/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/av;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    iput-byte v2, p0, Lcom/b/a/ay;->d:B

    move v0, v2

    .line 84
    goto :goto_0

    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_3
    iput-byte v3, p0, Lcom/b/a/ay;->d:B

    move v0, v3

    .line 88
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 102
    iget v0, p0, Lcom/b/a/ay;->e:I

    .line 103
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 112
    :goto_0
    return v0

    :cond_0
    move v1, v2

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/b/a/ay;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 107
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/b/a/ay;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 106
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/ay;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gg;->b()I

    move-result v0

    add-int/2addr v0, v2

    .line 111
    iput v0, p0, Lcom/b/a/ay;->e:I

    goto :goto_0
.end method

.method public final b(I)Lcom/b/a/ax;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/b/a/ay;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/ax;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/b/a/p;->c()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/b/a/ay;->c:Ljava/util/List;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/b/a/ay;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final s_()Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/b/a/ay;->c:Ljava/util/List;

    return-object v0
.end method
