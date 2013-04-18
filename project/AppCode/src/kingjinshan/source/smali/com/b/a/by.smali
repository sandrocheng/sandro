.class public final Lcom/b/a/by;
.super Lcom/b/a/dn;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/bz;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15899
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 16069
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/by;->b:Ljava/util/List;

    .line 16114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/by;->c:Ljava/util/List;

    .line 15900
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    .line 15901
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 15885
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/by;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15904
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 16069
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/by;->b:Ljava/util/List;

    .line 16114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/by;->c:Ljava/util/List;

    .line 15905
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    .line 15906
    return-void
.end method

.method static synthetic a(Lcom/b/a/by;)Lcom/b/a/bx;
    .locals 2
    .parameter

    .prologue
    .line 15885
    invoke-virtual {p0}, Lcom/b/a/by;->m()Lcom/b/a/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bx;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/by;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(II)Lcom/b/a/by;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16088
    invoke-direct {p0}, Lcom/b/a/by;->v()V

    .line 16089
    iget-object v0, p0, Lcom/b/a/by;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16090
    invoke-virtual {p0}, Lcom/b/a/by;->af_()V

    .line 16091
    return-object p0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/b/a/by;
    .locals 1
    .parameter

    .prologue
    .line 16101
    invoke-direct {p0}, Lcom/b/a/by;->v()V

    .line 16102
    iget-object v0, p0, Lcom/b/a/by;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16103
    invoke-virtual {p0}, Lcom/b/a/by;->af_()V

    .line 16104
    return-object p0
.end method

.method private b(II)Lcom/b/a/by;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16133
    invoke-direct {p0}, Lcom/b/a/by;->x()V

    .line 16134
    iget-object v0, p0, Lcom/b/a/by;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16135
    invoke-virtual {p0}, Lcom/b/a/by;->af_()V

    .line 16136
    return-object p0
.end method

.method private b(Ljava/lang/Iterable;)Lcom/b/a/by;
    .locals 1
    .parameter

    .prologue
    .line 16146
    invoke-direct {p0}, Lcom/b/a/by;->x()V

    .line 16147
    iget-object v0, p0, Lcom/b/a/by;->c:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16148
    invoke-virtual {p0}, Lcom/b/a/by;->af_()V

    .line 16149
    return-object p0
.end method

.method private c(I)Lcom/b/a/by;
    .locals 2
    .parameter

    .prologue
    .line 16094
    invoke-direct {p0}, Lcom/b/a/by;->v()V

    .line 16095
    iget-object v0, p0, Lcom/b/a/by;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16096
    invoke-virtual {p0}, Lcom/b/a/by;->af_()V

    .line 16097
    return-object p0
.end method

.method private d(I)Lcom/b/a/by;
    .locals 2
    .parameter

    .prologue
    .line 16139
    invoke-direct {p0}, Lcom/b/a/by;->x()V

    .line 16140
    iget-object v0, p0, Lcom/b/a/by;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16141
    invoke-virtual {p0}, Lcom/b/a/by;->af_()V

    .line 16142
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/by;
    .locals 1
    .parameter

    .prologue
    .line 15973
    instance-of v0, p1, Lcom/b/a/bx;

    if-eqz v0, :cond_0

    .line 15974
    check-cast p1, Lcom/b/a/bx;

    invoke-virtual {p0, p1}, Lcom/b/a/by;->a(Lcom/b/a/bx;)Lcom/b/a/by;

    move-result-object v0

    .line 15977
    :goto_0
    return-object v0

    .line 15976
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 15977
    goto :goto_0
.end method

.method static synthetic n()Lcom/b/a/by;
    .locals 1

    .prologue
    .line 15885
    new-instance v0, Lcom/b/a/by;

    invoke-direct {v0}, Lcom/b/a/by;-><init>()V

    return-object v0
.end method

.method private static o()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 15890
    invoke-static {}, Lcom/b/a/p;->N()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static p()V
    .locals 1

    .prologue
    .line 15908
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    .line 15910
    return-void
.end method

.method private static q()Lcom/b/a/by;
    .locals 1

    .prologue
    .line 15912
    new-instance v0, Lcom/b/a/by;

    invoke-direct {v0}, Lcom/b/a/by;-><init>()V

    return-object v0
.end method

.method private r()Lcom/b/a/by;
    .locals 1

    .prologue
    .line 15916
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 15917
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/by;->b:Ljava/util/List;

    .line 15918
    iget v0, p0, Lcom/b/a/by;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/by;->a:I

    .line 15919
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/by;->c:Ljava/util/List;

    .line 15920
    iget v0, p0, Lcom/b/a/by;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/by;->a:I

    .line 15921
    return-object p0
.end method

.method private s()Lcom/b/a/by;
    .locals 2

    .prologue
    .line 15925
    new-instance v0, Lcom/b/a/by;

    invoke-direct {v0}, Lcom/b/a/by;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/by;->m()Lcom/b/a/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/by;->a(Lcom/b/a/bx;)Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/b/a/bx;
    .locals 1

    .prologue
    .line 15934
    invoke-static {}, Lcom/b/a/bx;->e()Lcom/b/a/bx;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/b/a/bx;
    .locals 2

    .prologue
    .line 15947
    invoke-virtual {p0}, Lcom/b/a/by;->m()Lcom/b/a/bx;

    move-result-object v0

    .line 15948
    invoke-virtual {v0}, Lcom/b/a/bx;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15949
    invoke-static {v0}, Lcom/b/a/by;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 15952
    :cond_0
    return-object v0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 16071
    iget v0, p0, Lcom/b/a/by;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 16072
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/by;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/by;->b:Ljava/util/List;

    .line 16073
    iget v0, p0, Lcom/b/a/by;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/by;->a:I

    .line 16075
    :cond_0
    return-void
.end method

.method private w()Lcom/b/a/by;
    .locals 1

    .prologue
    .line 16107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/by;->b:Ljava/util/List;

    .line 16108
    iget v0, p0, Lcom/b/a/by;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/by;->a:I

    .line 16109
    invoke-virtual {p0}, Lcom/b/a/by;->af_()V

    .line 16110
    return-object p0
.end method

.method private x()V
    .locals 2

    .prologue
    .line 16116
    iget v0, p0, Lcom/b/a/by;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 16117
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/by;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/by;->c:Ljava/util/List;

    .line 16118
    iget v0, p0, Lcom/b/a/by;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/by;->a:I

    .line 16120
    :cond_0
    return-void
.end method

.method private y()Lcom/b/a/by;
    .locals 1

    .prologue
    .line 16152
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/by;->c:Ljava/util/List;

    .line 16153
    iget v0, p0, Lcom/b/a/by;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/by;->a:I

    .line 16154
    invoke-virtual {p0}, Lcom/b/a/by;->af_()V

    .line 16155
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 15895
    invoke-static {}, Lcom/b/a/p;->O()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 15930
    invoke-static {}, Lcom/b/a/bx;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final E_()Ljava/util/List;
    .locals 1

    .prologue
    .line 16078
    iget-object v0, p0, Lcom/b/a/by;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 15885
    invoke-direct {p0}, Lcom/b/a/by;->r()Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 15885
    invoke-direct {p0}, Lcom/b/a/by;->s()Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 15885
    invoke-static {}, Lcom/b/a/bx;->e()Lcom/b/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 15885
    invoke-static {}, Lcom/b/a/bx;->e()Lcom/b/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 15885
    invoke-virtual {p0}, Lcom/b/a/by;->m()Lcom/b/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 15885
    invoke-virtual {p0}, Lcom/b/a/by;->l()Lcom/b/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 15885
    invoke-virtual {p0}, Lcom/b/a/by;->m()Lcom/b/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 15885
    invoke-virtual {p0}, Lcom/b/a/by;->l()Lcom/b/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 16084
    iget-object v0, p0, Lcom/b/a/by;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/b/a/bx;)Lcom/b/a/by;
    .locals 2
    .parameter

    .prologue
    .line 15982
    invoke-static {}, Lcom/b/a/bx;->e()Lcom/b/a/bx;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 16004
    :goto_0
    return-object v0

    .line 15983
    :cond_0
    invoke-static {p1}, Lcom/b/a/bx;->a(Lcom/b/a/bx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15984
    iget-object v0, p0, Lcom/b/a/by;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15985
    invoke-static {p1}, Lcom/b/a/bx;->a(Lcom/b/a/bx;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/by;->b:Ljava/util/List;

    .line 15986
    iget v0, p0, Lcom/b/a/by;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/by;->a:I

    .line 15991
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/by;->af_()V

    .line 15993
    :cond_1
    invoke-static {p1}, Lcom/b/a/bx;->b(Lcom/b/a/bx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15994
    iget-object v0, p0, Lcom/b/a/by;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15995
    invoke-static {p1}, Lcom/b/a/bx;->b(Lcom/b/a/bx;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/by;->c:Ljava/util/List;

    .line 15996
    iget v0, p0, Lcom/b/a/by;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/by;->a:I

    .line 16001
    :goto_2
    invoke-virtual {p0}, Lcom/b/a/by;->af_()V

    .line 16003
    :cond_2
    invoke-virtual {p1}, Lcom/b/a/bx;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/by;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 16004
    goto :goto_0

    .line 15988
    :cond_3
    invoke-direct {p0}, Lcom/b/a/by;->v()V

    .line 15989
    iget-object v0, p0, Lcom/b/a/by;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/bx;->a(Lcom/b/a/bx;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 15998
    :cond_4
    invoke-direct {p0}, Lcom/b/a/by;->x()V

    .line 15999
    iget-object v0, p0, Lcom/b/a/by;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/bx;->b(Lcom/b/a/bx;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 15885
    invoke-direct {p0, p1}, Lcom/b/a/by;->d(Lcom/b/a/ev;)Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15885
    invoke-virtual {p0, p1, p2}, Lcom/b/a/by;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 16008
    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 16129
    iget-object v0, p0, Lcom/b/a/by;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 15885
    invoke-direct {p0}, Lcom/b/a/by;->s()Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15885
    invoke-virtual {p0, p1, p2}, Lcom/b/a/by;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 15885
    invoke-direct {p0}, Lcom/b/a/by;->r()Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 15885
    invoke-direct {p0, p1}, Lcom/b/a/by;->d(Lcom/b/a/ev;)Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15885
    invoke-virtual {p0, p1, p2}, Lcom/b/a/by;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15885
    invoke-direct {p0}, Lcom/b/a/by;->s()Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 15885
    invoke-direct {p0}, Lcom/b/a/by;->s()Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15885
    invoke-virtual {p0, p1, p2}, Lcom/b/a/by;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/by;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 16015
    invoke-virtual {p0}, Lcom/b/a/by;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 16019
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 16020
    sparse-switch v1, :sswitch_data_0

    .line 16026
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/by;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16028
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/by;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 16029
    invoke-virtual {p0}, Lcom/b/a/by;->af_()V

    move-object v0, p0

    .line 16030
    :goto_1
    return-object v0

    .line 16022
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/by;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 16023
    invoke-virtual {p0}, Lcom/b/a/by;->af_()V

    move-object v0, p0

    .line 16024
    goto :goto_1

    .line 16035
    :sswitch_1
    invoke-direct {p0}, Lcom/b/a/by;->v()V

    .line 16036
    iget-object v1, p0, Lcom/b/a/by;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16040
    :sswitch_2
    invoke-virtual {p1}, Lcom/b/a/m;->r()I

    move-result v1

    .line 16041
    invoke-virtual {p1, v1}, Lcom/b/a/m;->c(I)I

    move-result v1

    .line 16042
    :goto_2
    invoke-virtual {p1}, Lcom/b/a/m;->v()I

    move-result v2

    if-lez v2, :cond_1

    .line 16043
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v2

    invoke-direct {p0}, Lcom/b/a/by;->v()V

    iget-object v3, p0, Lcom/b/a/by;->b:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/by;->af_()V

    goto :goto_2

    .line 16045
    :cond_1
    invoke-virtual {p1, v1}, Lcom/b/a/m;->d(I)V

    goto :goto_0

    .line 16049
    :sswitch_3
    invoke-direct {p0}, Lcom/b/a/by;->x()V

    .line 16050
    iget-object v1, p0, Lcom/b/a/by;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16054
    :sswitch_4
    invoke-virtual {p1}, Lcom/b/a/m;->r()I

    move-result v1

    .line 16055
    invoke-virtual {p1, v1}, Lcom/b/a/m;->c(I)I

    move-result v1

    .line 16056
    :goto_3
    invoke-virtual {p1}, Lcom/b/a/m;->v()I

    move-result v2

    if-lez v2, :cond_2

    .line 16057
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v2

    invoke-direct {p0}, Lcom/b/a/by;->x()V

    iget-object v3, p0, Lcom/b/a/by;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/by;->af_()V

    goto :goto_3

    .line 16059
    :cond_2
    invoke-virtual {p1, v1}, Lcom/b/a/m;->d(I)V

    goto/16 :goto_0

    .line 16020
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
    .end sparse-switch
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 15885
    invoke-direct {p0}, Lcom/b/a/by;->s()Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 15885
    invoke-direct {p0}, Lcom/b/a/by;->r()Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 15885
    invoke-direct {p0}, Lcom/b/a/by;->s()Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 15885
    invoke-direct {p0}, Lcom/b/a/by;->r()Lcom/b/a/by;

    move-result-object v0

    return-object v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 16081
    iget-object v0, p0, Lcom/b/a/by;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .prologue
    .line 16123
    iget-object v0, p0, Lcom/b/a/by;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 16126
    iget-object v0, p0, Lcom/b/a/by;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final l()Lcom/b/a/bx;
    .locals 2

    .prologue
    .line 15938
    invoke-virtual {p0}, Lcom/b/a/by;->m()Lcom/b/a/bx;

    move-result-object v0

    .line 15939
    invoke-virtual {v0}, Lcom/b/a/bx;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15940
    invoke-static {v0}, Lcom/b/a/by;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 15942
    :cond_0
    return-object v0
.end method

.method public final m()Lcom/b/a/bx;
    .locals 3

    .prologue
    .line 15956
    new-instance v0, Lcom/b/a/bx;

    invoke-direct {v0, p0}, Lcom/b/a/bx;-><init>(Lcom/b/a/by;)V

    .line 15957
    iget v1, p0, Lcom/b/a/by;->a:I

    .line 15958
    iget v1, p0, Lcom/b/a/by;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 15959
    iget-object v1, p0, Lcom/b/a/by;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/by;->b:Ljava/util/List;

    .line 15960
    iget v1, p0, Lcom/b/a/by;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/b/a/by;->a:I

    .line 15962
    :cond_0
    iget-object v1, p0, Lcom/b/a/by;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/bx;->a(Lcom/b/a/bx;Ljava/util/List;)Ljava/util/List;

    .line 15963
    iget v1, p0, Lcom/b/a/by;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 15964
    iget-object v1, p0, Lcom/b/a/by;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/by;->c:Ljava/util/List;

    .line 15965
    iget v1, p0, Lcom/b/a/by;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/b/a/by;->a:I

    .line 15967
    :cond_1
    iget-object v1, p0, Lcom/b/a/by;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/bx;->b(Lcom/b/a/bx;Ljava/util/List;)Ljava/util/List;

    .line 15968
    invoke-virtual {p0}, Lcom/b/a/by;->ab_()V

    .line 15969
    return-object v0
.end method
