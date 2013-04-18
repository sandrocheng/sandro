.class public final Lcom/b/a/bs;
.super Lcom/b/a/dr;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/bu;


# static fields
.field public static final a:I = 0x3e7

.field private static final b:Lcom/b/a/bs;

.field private static final f:J


# instance fields
.field private c:Ljava/util/List;

.field private d:B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13596
    new-instance v0, Lcom/b/a/bs;

    invoke-direct {v0}, Lcom/b/a/bs;-><init>()V

    .line 13597
    sput-object v0, Lcom/b/a/bs;->b:Lcom/b/a/bs;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/bs;->c:Ljava/util/List;

    .line 13598
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 13046
    invoke-direct {p0}, Lcom/b/a/dr;-><init>()V

    .line 13091
    iput-byte v0, p0, Lcom/b/a/bs;->d:B

    .line 13123
    iput v0, p0, Lcom/b/a/bs;->e:I

    .line 13046
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/bt;)V
    .locals 1
    .parameter

    .prologue
    .line 13039
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/bs;-><init>(Lcom/b/a/bt;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/bt;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 13044
    invoke-direct {p0, p1}, Lcom/b/a/dr;-><init>(Lcom/b/a/dq;)V

    .line 13091
    iput-byte v0, p0, Lcom/b/a/bs;->d:B

    .line 13123
    iput v0, p0, Lcom/b/a/bs;->e:I

    .line 13045
    return-void
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/bs;
    .locals 1
    .parameter

    .prologue
    .line 13149
    invoke-static {}, Lcom/b/a/bt;->o()Lcom/b/a/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bt;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bt;

    invoke-static {p0}, Lcom/b/a/bt;->a(Lcom/b/a/bt;)Lcom/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/bs;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13155
    invoke-static {}, Lcom/b/a/bt;->o()Lcom/b/a/bt;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bt;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bt;

    invoke-static {p0}, Lcom/b/a/bt;->a(Lcom/b/a/bt;)Lcom/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/bs;
    .locals 1
    .parameter

    .prologue
    .line 13203
    invoke-static {}, Lcom/b/a/bt;->o()Lcom/b/a/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bt;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bt;

    invoke-static {p0}, Lcom/b/a/bt;->a(Lcom/b/a/bt;)Lcom/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bs;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13209
    invoke-static {}, Lcom/b/a/bt;->o()Lcom/b/a/bt;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bt;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bt;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/bt;->a(Lcom/b/a/bt;)Lcom/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/bs;
    .locals 1
    .parameter

    .prologue
    .line 13171
    invoke-static {}, Lcom/b/a/bt;->o()Lcom/b/a/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bt;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bt;

    invoke-static {p0}, Lcom/b/a/bt;->a(Lcom/b/a/bt;)Lcom/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/bs;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13177
    invoke-static {}, Lcom/b/a/bt;->o()Lcom/b/a/bt;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bt;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bt;

    invoke-static {p0}, Lcom/b/a/bt;->a(Lcom/b/a/bt;)Lcom/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/bs;
    .locals 1
    .parameter

    .prologue
    .line 13160
    invoke-static {}, Lcom/b/a/bt;->o()Lcom/b/a/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bt;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bt;

    invoke-static {p0}, Lcom/b/a/bt;->a(Lcom/b/a/bt;)Lcom/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/bs;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13166
    invoke-static {}, Lcom/b/a/bt;->o()Lcom/b/a/bt;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bt;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bt;

    invoke-static {p0}, Lcom/b/a/bt;->a(Lcom/b/a/bt;)Lcom/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/b/a/bs;)Lcom/b/a/bt;
    .locals 1
    .parameter

    .prologue
    .line 13216
    invoke-static {}, Lcom/b/a/bt;->o()Lcom/b/a/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bt;->a(Lcom/b/a/bs;)Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/bs;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13039
    iput-object p1, p0, Lcom/b/a/bs;->c:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/bs;
    .locals 2
    .parameter

    .prologue
    .line 13182
    invoke-static {}, Lcom/b/a/bt;->o()Lcom/b/a/bt;

    move-result-object v0

    .line 13183
    invoke-virtual {v0, p0}, Lcom/b/a/bt;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13184
    invoke-static {v0}, Lcom/b/a/bt;->a(Lcom/b/a/bt;)Lcom/b/a/bs;

    move-result-object v0

    .line 13186
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/bs;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 13193
    invoke-static {}, Lcom/b/a/bt;->o()Lcom/b/a/bt;

    move-result-object v0

    .line 13194
    invoke-virtual {v0, p0, p1}, Lcom/b/a/bt;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13195
    invoke-static {v0}, Lcom/b/a/bt;->a(Lcom/b/a/bt;)Lcom/b/a/bs;

    move-result-object v0

    .line 13197
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/bt;
    .locals 1
    .parameter

    .prologue
    .line 13223
    new-instance v0, Lcom/b/a/bt;

    invoke-direct {v0, p0}, Lcom/b/a/bt;-><init>(Lcom/b/a/dp;)V

    .line 13224
    return-object v0
.end method

.method static synthetic b(Lcom/b/a/bs;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 13039
    iget-object v0, p0, Lcom/b/a/bs;->c:Ljava/util/List;

    return-object v0
.end method

.method public static e()Lcom/b/a/bs;
    .locals 1

    .prologue
    .line 13050
    sget-object v0, Lcom/b/a/bs;->b:Lcom/b/a/bs;

    return-object v0
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 13059
    invoke-static {}, Lcom/b/a/p;->D()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static k()Lcom/b/a/bt;
    .locals 1

    .prologue
    .line 13213
    invoke-static {}, Lcom/b/a/bt;->o()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method private static l()Lcom/b/a/bs;
    .locals 1

    .prologue
    .line 13054
    sget-object v0, Lcom/b/a/bs;->b:Lcom/b/a/bs;

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 13089
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bs;->c:Ljava/util/List;

    .line 13090
    return-void
.end method

.method private static n()Lcom/b/a/bt;
    .locals 1

    .prologue
    .line 13214
    invoke-static {}, Lcom/b/a/bt;->o()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method private o()Lcom/b/a/bt;
    .locals 1

    .prologue
    .line 13218
    invoke-static {}, Lcom/b/a/bt;->o()Lcom/b/a/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bt;->a(Lcom/b/a/bs;)Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13143
    invoke-super {p0}, Lcom/b/a/dr;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final C_()Ljava/util/List;
    .locals 1

    .prologue
    .line 13071
    iget-object v0, p0, Lcom/b/a/bs;->c:Ljava/util/List;

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 13039
    invoke-direct {p0}, Lcom/b/a/bs;->o()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 13039
    invoke-static {}, Lcom/b/a/bt;->o()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 13039
    invoke-direct {p0}, Lcom/b/a/bs;->o()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 13039
    invoke-static {}, Lcom/b/a/bt;->o()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 13039
    sget-object v0, Lcom/b/a/bs;->b:Lcom/b/a/bs;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 13039
    sget-object v0, Lcom/b/a/bs;->b:Lcom/b/a/bs;

    return-object v0
.end method

.method public final a(I)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 13081
    iget-object v0, p0, Lcom/b/a/bs;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    return-object p0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 13039
    new-instance v0, Lcom/b/a/bt;

    invoke-direct {v0, p1}, Lcom/b/a/bt;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    .line 13112
    invoke-virtual {p0}, Lcom/b/a/bs;->b()I

    .line 13114
    invoke-virtual {p0}, Lcom/b/a/bs;->K()Lcom/b/a/ds;

    move-result-object v1

    .line 13116
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/b/a/bs;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 13117
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/b/a/bs;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 13116
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 13119
    :cond_0
    invoke-virtual {v1, p1}, Lcom/b/a/ds;->a(Lcom/b/a/n;)V

    .line 13120
    invoke-virtual {p0}, Lcom/b/a/bs;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 13121
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13093
    iget-byte v0, p0, Lcom/b/a/bs;->d:B

    .line 13094
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 13107
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 13094
    goto :goto_0

    :cond_1
    move v0, v2

    .line 13096
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/bs;->j()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 13097
    invoke-virtual {p0, v0}, Lcom/b/a/bs;->a(I)Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 13098
    iput-byte v2, p0, Lcom/b/a/bs;->d:B

    move v0, v2

    .line 13099
    goto :goto_0

    .line 13096
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13102
    :cond_3
    invoke-virtual {p0}, Lcom/b/a/bs;->J()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13103
    iput-byte v2, p0, Lcom/b/a/bs;->d:B

    move v0, v2

    .line 13104
    goto :goto_0

    .line 13106
    :cond_4
    iput-byte v3, p0, Lcom/b/a/bs;->d:B

    move v0, v3

    .line 13107
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 13125
    iget v0, p0, Lcom/b/a/bs;->e:I

    .line 13126
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 13136
    :goto_0
    return v0

    :cond_0
    move v1, v2

    .line 13129
    :goto_1
    iget-object v0, p0, Lcom/b/a/bs;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 13130
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/b/a/bs;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 13129
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 13133
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/bs;->L()I

    move-result v0

    add-int/2addr v0, v2

    .line 13134
    invoke-virtual {p0}, Lcom/b/a/bs;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 13135
    iput v0, p0, Lcom/b/a/bs;->e:I

    goto :goto_0
.end method

.method public final b(I)Lcom/b/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 13085
    iget-object v0, p0, Lcom/b/a/bs;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 13064
    invoke-static {}, Lcom/b/a/p;->E()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 13075
    iget-object v0, p0, Lcom/b/a/bs;->c:Ljava/util/List;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 13078
    iget-object v0, p0, Lcom/b/a/bs;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
