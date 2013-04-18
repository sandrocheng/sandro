.class public final Lcom/keniu/security/sync/d/d/a/fi;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/fj;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:Lcom/keniu/security/sync/d/d/a/gj;

.field private e:Lcom/b/a/fp;

.field private f:Lcom/keniu/security/sync/d/d/a/gy;

.field private g:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9858
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 10057
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 10147
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 10237
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    .line 9859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->t()V

    .line 9860
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 9844
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/fi;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9863
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 10057
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 10147
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 10237
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    .line 9864
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->t()V

    .line 9865
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/fh;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 9932
    new-instance v1, Lcom/keniu/security/sync/d/d/a/fh;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/fh;-><init>(Lcom/keniu/security/sync/d/d/a/fi;)V

    .line 9933
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 9934
    const/4 v0, 0x0

    .line 9935
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_5

    move v3, v4

    .line 9938
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 9939
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/fh;->a(Lcom/keniu/security/sync/d/d/a/fh;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 9943
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 9944
    or-int/lit8 v0, v3, 0x2

    move v3, v0

    .line 9946
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    if-nez v0, :cond_2

    .line 9947
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/fh;->a(Lcom/keniu/security/sync/d/d/a/fh;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;

    .line 9951
    :goto_2
    and-int/lit8 v0, v2, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 9952
    or-int/lit8 v0, v3, 0x4

    move v2, v0

    .line 9954
    :goto_3
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    if-nez v0, :cond_3

    .line 9955
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/fh;->a(Lcom/keniu/security/sync/d/d/a/fh;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;

    .line 9959
    :goto_4
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/fh;->a(Lcom/keniu/security/sync/d/d/a/fh;I)I

    .line 9960
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->ab_()V

    .line 9961
    return-object v1

    .line 9941
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/fh;->a(Lcom/keniu/security/sync/d/d/a/fh;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    .line 9949
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/fh;->a(Lcom/keniu/security/sync/d/d/a/fh;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;

    goto :goto_2

    .line 9957
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/fh;->a(Lcom/keniu/security/sync/d/d/a/fh;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_4

    :cond_4
    move v2, v3

    goto :goto_3

    :cond_5
    move v3, v0

    goto :goto_0
.end method

.method private D()Lcom/keniu/security/sync/d/d/a/fi;
    .locals 1

    .prologue
    .line 10111
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 10112
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 10113
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    .line 10117
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 10118
    return-object p0

    .line 10115
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 10121
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 10122
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    .line 10123
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->N()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method

.method private N()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 10135
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 10136
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    .line 10141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 10143
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private U()Lcom/keniu/security/sync/d/d/a/fi;
    .locals 1

    .prologue
    .line 10201
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 10202
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 10203
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    .line 10207
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 10208
    return-object p0

    .line 10205
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private V()Lcom/keniu/security/sync/d/d/a/gk;
    .locals 1

    .prologue
    .line 10211
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 10212
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    .line 10213
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->W()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gk;

    return-object p0
.end method

.method private W()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 10225
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 10226
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    .line 10231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 10233
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    return-object v0
.end method

.method private X()Lcom/keniu/security/sync/d/d/a/fi;
    .locals 1

    .prologue
    .line 10291
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 10292
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    .line 10293
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    .line 10297
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 10298
    return-object p0

    .line 10295
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private Y()Lcom/keniu/security/sync/d/d/a/gz;
    .locals 1

    .prologue
    .line 10301
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 10302
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    .line 10303
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->Z()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gz;

    return-object p0
.end method

.method private Z()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 10315
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 10316
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    .line 10321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    .line 10323
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fi;)Lcom/keniu/security/sync/d/d/a/fh;
    .locals 2
    .parameter

    .prologue
    .line 9844
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->A()Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fh;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fi;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/fi;
    .locals 1
    .parameter

    .prologue
    .line 10071
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 10072
    if-nez p1, :cond_0

    .line 10073
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10075
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 10076
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    .line 10080
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 10081
    return-object p0

    .line 10078
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/fi;
    .locals 2
    .parameter

    .prologue
    .line 10085
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 10086
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 10087
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    .line 10091
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 10092
    return-object p0

    .line 10089
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/fi;
    .locals 1
    .parameter

    .prologue
    .line 10161
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 10162
    if-nez p1, :cond_0

    .line 10163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10165
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 10166
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    .line 10170
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 10171
    return-object p0

    .line 10168
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gk;)Lcom/keniu/security/sync/d/d/a/fi;
    .locals 2
    .parameter

    .prologue
    .line 10175
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 10176
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gk;->i()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 10177
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    .line 10181
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 10182
    return-object p0

    .line 10179
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gk;->i()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/fi;
    .locals 1
    .parameter

    .prologue
    .line 10251
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 10252
    if-nez p1, :cond_0

    .line 10253
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10255
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    .line 10256
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    .line 10260
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 10261
    return-object p0

    .line 10258
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gz;)Lcom/keniu/security/sync/d/d/a/fi;
    .locals 2
    .parameter

    .prologue
    .line 10265
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 10266
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gz;->i()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    .line 10267
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    .line 10271
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 10272
    return-object p0

    .line 10269
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gz;->i()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/fi;
    .locals 2
    .parameter

    .prologue
    .line 10095
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 10096
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10098
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 10103
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    .line 10107
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 10108
    return-object p0

    .line 10101
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 10105
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/fi;
    .locals 2
    .parameter

    .prologue
    .line 10185
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 10186
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10188
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gj;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gk;->D()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 10193
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    .line 10197
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 10198
    return-object p0

    .line 10191
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    goto :goto_0

    .line 10195
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/fi;
    .locals 2
    .parameter

    .prologue
    .line 10275
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 10276
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10278
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gy;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    .line 10283
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    .line 10287
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 10288
    return-object p0

    .line 10281
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_0

    .line 10285
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fi;
    .locals 1
    .parameter

    .prologue
    .line 9965
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/fh;

    if-eqz v0, :cond_0

    .line 9966
    check-cast p1, Lcom/keniu/security/sync/d/d/a/fh;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/keniu/security/sync/d/d/a/fh;)Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    .line 9969
    :goto_0
    return-object v0

    .line 9968
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 9969
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/fi;
    .locals 1

    .prologue
    .line 9844
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fi;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fi;-><init>()V

    return-object v0
.end method

.method private static s()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 9849
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->F()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 9867
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fh;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9868
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->N()Lcom/b/a/fp;

    .line 9869
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->W()Lcom/b/a/fp;

    .line 9870
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->Z()Lcom/b/a/fp;

    .line 9872
    :cond_0
    return-void
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/fi;
    .locals 1

    .prologue
    .line 9874
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fi;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fi;-><init>()V

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/fi;
    .locals 1

    .prologue
    .line 9878
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 9879
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 9880
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 9884
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 9885
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 9886
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 9890
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 9891
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    if-nez v0, :cond_2

    .line 9892
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    .line 9896
    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 9897
    return-object p0

    .line 9882
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0

    .line 9888
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_1

    .line 9894
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_2
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/fi;
    .locals 2

    .prologue
    .line 9901
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fi;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fi;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->A()Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/keniu/security/sync/d/d/a/fh;)Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method private static x()Lcom/keniu/security/sync/d/d/a/fh;
    .locals 1

    .prologue
    .line 9910
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fh;->h()Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    return-object v0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/fh;
    .locals 2

    .prologue
    .line 9914
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->A()Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    .line 9915
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fh;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9916
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fi;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 9918
    :cond_0
    return-object v0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/fh;
    .locals 2

    .prologue
    .line 9923
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->A()Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    .line 9924
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fh;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9925
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fi;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 9928
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 9854
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->G()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 9906
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fh;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 9844
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->v()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 9844
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->w()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9844
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fh;->h()Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9844
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fh;->h()Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9844
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->A()Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9844
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->y()Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9844
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->A()Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9844
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->y()Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 9844
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/fi;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9844
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fi;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/fh;)Lcom/keniu/security/sync/d/d/a/fi;
    .locals 3
    .parameter

    .prologue
    .line 9974
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fh;->h()Lcom/keniu/security/sync/d/d/a/fh;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 9985
    :goto_0
    return-object v0

    .line 9975
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fh;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9976
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fh;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    if-nez v1, :cond_5

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 9978
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fh;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9979
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fh;->n()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    if-nez v1, :cond_7

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v2

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gj;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gk;->D()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    :goto_4
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 9981
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fh;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9982
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fh;->q()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    if-nez v1, :cond_9

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v2

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gy;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    :goto_5
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    :goto_6
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    .line 9984
    :cond_3
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fh;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fi;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 9985
    goto/16 :goto_0

    .line 9976
    :cond_4
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto/16 :goto_2

    .line 9979
    :cond_6
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_4

    .line 9982
    :cond_8
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_6
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9989
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 9997
    :goto_0
    return v0

    .line 9993
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 9995
    goto :goto_0

    .line 9997
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 9844
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->w()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9844
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fi;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 9844
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->v()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 9844
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/fi;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9844
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fi;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9844
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->w()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 9844
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->w()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9844
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fi;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9844
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->w()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fi;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 10004
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 10008
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 10009
    sparse-switch v1, :sswitch_data_0

    .line 10015
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/fi;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10017
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fi;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 10018
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    move-object v0, p0

    .line 10019
    :goto_1
    return-object v0

    .line 10011
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fi;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 10012
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    move-object v0, p0

    .line 10013
    goto :goto_1

    .line 10024
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 10025
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10026
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 10028
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 10029
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 10033
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->P()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v1

    .line 10034
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10035
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->n()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    .line 10037
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 10038
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gk;->D()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    if-nez v2, :cond_6

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    :goto_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_3

    .line 10042
    :sswitch_3
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->N()Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v1

    .line 10043
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->p()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 10044
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->q()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    .line 10046
    :cond_7
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 10047
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    if-nez v2, :cond_9

    if-nez v1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fi;->af_()V

    :goto_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_4

    .line 10009
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9844
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->v()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9844
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->w()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9844
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fi;->v()Lcom/keniu/security/sync/d/d/a/fi;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10061
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

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
    .line 10064
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 10065
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 10067
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 10126
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 10127
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 10129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 10151
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1

    .prologue
    .line 10154
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 10155
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 10157
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gj;

    move-object v0, p0

    goto :goto_0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 10216
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 10217
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gl;

    move-object v0, p0

    .line 10219
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->d:Lcom/keniu/security/sync/d/d/a/gj;

    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 10241
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->a:I

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

.method public final q()Lcom/keniu/security/sync/d/d/a/gy;
    .locals 1

    .prologue
    .line 10244
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 10245
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    .line 10247
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gy;

    move-object v0, p0

    goto :goto_0
.end method

.method public final r()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 10306
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 10307
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->g:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ha;

    move-object v0, p0

    .line 10309
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fi;->f:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_0
.end method
