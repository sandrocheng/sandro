.class public final Lcom/b/a/bq;
.super Lcom/b/a/dn;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/br;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/List;

.field private d:Lcom/b/a/fc;

.field private e:Lcom/b/a/bs;

.field private f:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7804
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 8015
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bq;->b:Ljava/lang/Object;

    .line 8051
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    .line 8237
    invoke-static {}, Lcom/b/a/bs;->e()Lcom/b/a/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    .line 7805
    invoke-direct {p0}, Lcom/b/a/bq;->t()V

    .line 7806
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 7790
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/bq;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7809
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 8015
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bq;->b:Ljava/lang/Object;

    .line 8051
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    .line 8237
    invoke-static {}, Lcom/b/a/bs;->e()Lcom/b/a/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    .line 7810
    invoke-direct {p0}, Lcom/b/a/bq;->t()V

    .line 7811
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 8054
    iget v0, p0, Lcom/b/a/bq;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 8055
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    .line 8056
    iget v0, p0, Lcom/b/a/bq;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/bq;->a:I

    .line 8058
    :cond_0
    return-void
.end method

.method private D()Lcom/b/a/bq;
    .locals 1

    .prologue
    .line 8170
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8171
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    .line 8172
    iget v0, p0, Lcom/b/a/bq;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/bq;->a:I

    .line 8173
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8177
    :goto_0
    return-object p0

    .line 8175
    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private E()Lcom/b/a/bk;
    .locals 2

    .prologue
    .line 8209
    invoke-direct {p0}, Lcom/b/a/bq;->U()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/bj;->e()Lcom/b/a/bj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/bk;

    return-object p0
.end method

.method private N()Ljava/util/List;
    .locals 1

    .prologue
    .line 8219
    invoke-direct {p0}, Lcom/b/a/bq;->U()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private U()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 8224
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8225
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    iget v2, p0, Lcom/b/a/bq;->a:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/bq;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/bq;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    .line 8231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    .line 8233
    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    return-object v0

    .line 8225
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private V()Lcom/b/a/bq;
    .locals 1

    .prologue
    .line 8291
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 8292
    invoke-static {}, Lcom/b/a/bs;->e()Lcom/b/a/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    .line 8293
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8297
    :goto_0
    iget v0, p0, Lcom/b/a/bq;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/bq;->a:I

    .line 8298
    return-object p0

    .line 8295
    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private W()Lcom/b/a/bt;
    .locals 1

    .prologue
    .line 8301
    iget v0, p0, Lcom/b/a/bq;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/bq;->a:I

    .line 8302
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8303
    invoke-direct {p0}, Lcom/b/a/bq;->X()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/bt;

    return-object p0
.end method

.method private X()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 8315
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 8316
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    invoke-virtual {p0}, Lcom/b/a/bq;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/b/a/bq;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    .line 8321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    .line 8323
    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/bq;)Lcom/b/a/bp;
    .locals 2
    .parameter

    .prologue
    .line 7790
    invoke-virtual {p0}, Lcom/b/a/bq;->q()Lcom/b/a/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bp;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/bq;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/b/a/bj;)Lcom/b/a/bq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8086
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 8087
    if-nez p2, :cond_0

    .line 8088
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8090
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bq;->A()V

    .line 8091
    iget-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8092
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8096
    :goto_0
    return-object p0

    .line 8094
    :cond_1
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/bk;)Lcom/b/a/bq;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 8100
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8101
    invoke-direct {p0}, Lcom/b/a/bq;->A()V

    .line 8102
    iget-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/bk;->q()Lcom/b/a/bj;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8103
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8107
    :goto_0
    return-object p0

    .line 8105
    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/bk;->q()Lcom/b/a/bj;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/bj;)Lcom/b/a/bq;
    .locals 1
    .parameter

    .prologue
    .line 8110
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 8111
    if-nez p1, :cond_0

    .line 8112
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8114
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bq;->A()V

    .line 8115
    iget-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8116
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8120
    :goto_0
    return-object p0

    .line 8118
    :cond_1
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/bk;)Lcom/b/a/bq;
    .locals 2
    .parameter

    .prologue
    .line 8138
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8139
    invoke-direct {p0}, Lcom/b/a/bq;->A()V

    .line 8140
    iget-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/bk;->q()Lcom/b/a/bj;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8141
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8145
    :goto_0
    return-object p0

    .line 8143
    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/bk;->q()Lcom/b/a/bj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/bs;)Lcom/b/a/bq;
    .locals 1
    .parameter

    .prologue
    .line 8251
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 8252
    if-nez p1, :cond_0

    .line 8253
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8255
    :cond_0
    iput-object p1, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    .line 8256
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8260
    :goto_0
    iget v0, p0, Lcom/b/a/bq;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/bq;->a:I

    .line 8261
    return-object p0

    .line 8258
    :cond_1
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/b/a/bt;)Lcom/b/a/bq;
    .locals 2
    .parameter

    .prologue
    .line 8265
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 8266
    invoke-virtual {p1}, Lcom/b/a/bt;->k()Lcom/b/a/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    .line 8267
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8271
    :goto_0
    iget v0, p0, Lcom/b/a/bq;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/bq;->a:I

    .line 8272
    return-object p0

    .line 8269
    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/b/a/bt;->k()Lcom/b/a/bs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/b/a/bq;
    .locals 1
    .parameter

    .prologue
    .line 8160
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8161
    invoke-direct {p0}, Lcom/b/a/bq;->A()V

    .line 8162
    iget-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8163
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8167
    :goto_0
    return-object p0

    .line 8165
    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/b/a/bq;
    .locals 1
    .parameter

    .prologue
    .line 8030
    if-nez p1, :cond_0

    .line 8031
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8033
    :cond_0
    iget v0, p0, Lcom/b/a/bq;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/bq;->a:I

    .line 8034
    iput-object p1, p0, Lcom/b/a/bq;->b:Ljava/lang/Object;

    .line 8035
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8036
    return-object p0
.end method

.method private b(ILcom/b/a/bj;)Lcom/b/a/bq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8124
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 8125
    if-nez p2, :cond_0

    .line 8126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8128
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bq;->A()V

    .line 8129
    iget-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8130
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8134
    :goto_0
    return-object p0

    .line 8132
    :cond_1
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/bk;)Lcom/b/a/bq;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 8149
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8150
    invoke-direct {p0}, Lcom/b/a/bq;->A()V

    .line 8151
    iget-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/bk;->q()Lcom/b/a/bj;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8152
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8156
    :goto_0
    return-object p0

    .line 8154
    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/bk;->q()Lcom/b/a/bj;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Lcom/b/a/bs;)Lcom/b/a/bq;
    .locals 2
    .parameter

    .prologue
    .line 8275
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 8276
    iget v0, p0, Lcom/b/a/bq;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    invoke-static {}, Lcom/b/a/bs;->e()Lcom/b/a/bs;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8278
    iget-object v0, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    invoke-static {v0}, Lcom/b/a/bs;->a(Lcom/b/a/bs;)Lcom/b/a/bt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/bt;->a(Lcom/b/a/bs;)Lcom/b/a/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bt;->l()Lcom/b/a/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    .line 8283
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8287
    :goto_1
    iget v0, p0, Lcom/b/a/bq;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/bq;->a:I

    .line 8288
    return-object p0

    .line 8281
    :cond_0
    iput-object p1, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    goto :goto_0

    .line 8285
    :cond_1
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private c(I)Lcom/b/a/bq;
    .locals 1
    .parameter

    .prologue
    .line 8180
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8181
    invoke-direct {p0}, Lcom/b/a/bq;->A()V

    .line 8182
    iget-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8183
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8187
    :goto_0
    return-object p0

    .line 8185
    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(I)Lcom/b/a/bk;
    .locals 1
    .parameter

    .prologue
    .line 8191
    invoke-direct {p0}, Lcom/b/a/bq;->U()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/bk;

    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/bq;
    .locals 1
    .parameter

    .prologue
    .line 7903
    instance-of v0, p1, Lcom/b/a/bp;

    if-eqz v0, :cond_0

    .line 7904
    check-cast p1, Lcom/b/a/bp;

    invoke-virtual {p0, p1}, Lcom/b/a/bq;->a(Lcom/b/a/bp;)Lcom/b/a/bq;

    move-result-object v0

    .line 7907
    :goto_0
    return-object v0

    .line 7906
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 7907
    goto :goto_0
.end method

.method private e(I)Lcom/b/a/bk;
    .locals 2
    .parameter

    .prologue
    .line 8214
    invoke-direct {p0}, Lcom/b/a/bq;->U()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/bj;->e()Lcom/b/a/bj;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/bk;

    return-object p0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 8045
    iget v0, p0, Lcom/b/a/bq;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/bq;->a:I

    .line 8046
    iput-object p1, p0, Lcom/b/a/bq;->b:Ljava/lang/Object;

    .line 8047
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8048
    return-void
.end method

.method static synthetic r()Lcom/b/a/bq;
    .locals 1

    .prologue
    .line 7790
    new-instance v0, Lcom/b/a/bq;

    invoke-direct {v0}, Lcom/b/a/bq;-><init>()V

    return-object v0
.end method

.method private static s()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 7795
    invoke-static {}, Lcom/b/a/p;->p()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 7813
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_0

    .line 7814
    invoke-direct {p0}, Lcom/b/a/bq;->U()Lcom/b/a/fc;

    .line 7815
    invoke-direct {p0}, Lcom/b/a/bq;->X()Lcom/b/a/fp;

    .line 7817
    :cond_0
    return-void
.end method

.method private static u()Lcom/b/a/bq;
    .locals 1

    .prologue
    .line 7819
    new-instance v0, Lcom/b/a/bq;

    invoke-direct {v0}, Lcom/b/a/bq;-><init>()V

    return-object v0
.end method

.method private v()Lcom/b/a/bq;
    .locals 1

    .prologue
    .line 7823
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 7824
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bq;->b:Ljava/lang/Object;

    .line 7825
    iget v0, p0, Lcom/b/a/bq;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bq;->a:I

    .line 7826
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 7827
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    .line 7828
    iget v0, p0, Lcom/b/a/bq;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/bq;->a:I

    .line 7832
    :goto_0
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 7833
    invoke-static {}, Lcom/b/a/bs;->e()Lcom/b/a/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    .line 7837
    :goto_1
    iget v0, p0, Lcom/b/a/bq;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/bq;->a:I

    .line 7838
    return-object p0

    .line 7830
    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0

    .line 7835
    :cond_1
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_1
.end method

.method private w()Lcom/b/a/bq;
    .locals 2

    .prologue
    .line 7842
    new-instance v0, Lcom/b/a/bq;

    invoke-direct {v0}, Lcom/b/a/bq;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/bq;->q()Lcom/b/a/bp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/bq;->a(Lcom/b/a/bp;)Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method private static x()Lcom/b/a/bp;
    .locals 1

    .prologue
    .line 7851
    invoke-static {}, Lcom/b/a/bp;->e()Lcom/b/a/bp;

    move-result-object v0

    return-object v0
.end method

.method private y()Lcom/b/a/bp;
    .locals 2

    .prologue
    .line 7864
    invoke-virtual {p0}, Lcom/b/a/bq;->q()Lcom/b/a/bp;

    move-result-object v0

    .line 7865
    invoke-virtual {v0}, Lcom/b/a/bp;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7866
    invoke-static {v0}, Lcom/b/a/bq;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 7869
    :cond_0
    return-object v0
.end method

.method private z()Lcom/b/a/bq;
    .locals 1

    .prologue
    .line 8039
    iget v0, p0, Lcom/b/a/bq;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bq;->a:I

    .line 8040
    invoke-static {}, Lcom/b/a/bp;->e()Lcom/b/a/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bp;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bq;->b:Ljava/lang/Object;

    .line 8041
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 8042
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 7800
    invoke-static {}, Lcom/b/a/p;->q()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final B_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8017
    iget v0, p0, Lcom/b/a/bq;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 7847
    invoke-static {}, Lcom/b/a/bp;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 7790
    invoke-direct {p0}, Lcom/b/a/bq;->v()Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 7790
    invoke-direct {p0}, Lcom/b/a/bq;->w()Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 7790
    invoke-static {}, Lcom/b/a/bp;->e()Lcom/b/a/bp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 7790
    invoke-static {}, Lcom/b/a/bp;->e()Lcom/b/a/bp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 7790
    invoke-virtual {p0}, Lcom/b/a/bq;->q()Lcom/b/a/bp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 7790
    invoke-virtual {p0}, Lcom/b/a/bq;->p()Lcom/b/a/bp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 7790
    invoke-virtual {p0}, Lcom/b/a/bq;->q()Lcom/b/a/bp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 7790
    invoke-virtual {p0}, Lcom/b/a/bq;->p()Lcom/b/a/bp;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/b/a/bj;
    .locals 1
    .parameter

    .prologue
    .line 8078
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8079
    iget-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/bj;

    move-object v0, p0

    .line 8081
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/bj;

    move-object v0, p0

    goto :goto_0
.end method

.method public final a(Lcom/b/a/bp;)Lcom/b/a/bq;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 7912
    invoke-static {}, Lcom/b/a/bp;->e()Lcom/b/a/bp;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 7946
    :goto_0
    return-object v0

    .line 7913
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/bp;->B_()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7914
    invoke-virtual {p1}, Lcom/b/a/bp;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/b/a/bq;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/bq;->a:I

    iput-object v0, p0, Lcom/b/a/bq;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 7916
    :cond_2
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v0, :cond_6

    .line 7917
    invoke-static {p1}, Lcom/b/a/bp;->a(Lcom/b/a/bp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7918
    iget-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7919
    invoke-static {p1}, Lcom/b/a/bp;->a(Lcom/b/a/bp;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    .line 7920
    iget v0, p0, Lcom/b/a/bq;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/bq;->a:I

    .line 7925
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    .line 7942
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/b/a/bp;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7943
    invoke-virtual {p1}, Lcom/b/a/bp;->n()Lcom/b/a/bs;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    if-nez v1, :cond_a

    iget v1, p0, Lcom/b/a/bq;->a:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    invoke-static {}, Lcom/b/a/bs;->e()Lcom/b/a/bs;

    move-result-object v2

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    invoke-static {v1}, Lcom/b/a/bs;->a(Lcom/b/a/bs;)Lcom/b/a/bt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/bt;->a(Lcom/b/a/bs;)Lcom/b/a/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bt;->l()Lcom/b/a/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    :goto_3
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    :goto_4
    iget v0, p0, Lcom/b/a/bq;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/bq;->a:I

    .line 7945
    :cond_4
    invoke-virtual {p1}, Lcom/b/a/bp;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bq;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 7946
    goto/16 :goto_0

    .line 7922
    :cond_5
    invoke-direct {p0}, Lcom/b/a/bq;->A()V

    .line 7923
    iget-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/bp;->a(Lcom/b/a/bp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 7928
    :cond_6
    invoke-static {p1}, Lcom/b/a/bp;->a(Lcom/b/a/bp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7929
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7930
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 7931
    iput-object v2, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    .line 7932
    invoke-static {p1}, Lcom/b/a/bp;->a(Lcom/b/a/bp;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    .line 7933
    iget v0, p0, Lcom/b/a/bq;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/bq;->a:I

    .line 7934
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/b/a/bq;->U()Lcom/b/a/fc;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    goto :goto_2

    :cond_7
    move-object v0, v2

    goto :goto_5

    .line 7938
    :cond_8
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/bp;->a(Lcom/b/a/bp;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto/16 :goto_2

    .line 7943
    :cond_9
    iput-object v0, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_4
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 7790
    invoke-direct {p0, p1}, Lcom/b/a/bq;->d(Lcom/b/a/ev;)Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7790
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7950
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/bq;->l()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7951
    invoke-virtual {p0, v0}, Lcom/b/a/bq;->a(I)Lcom/b/a/bj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/bj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 7962
    :goto_1
    return v0

    .line 7950
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7956
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/bq;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7957
    invoke-virtual {p0}, Lcom/b/a/bq;->n()Lcom/b/a/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bs;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 7959
    goto :goto_1

    .line 7962
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final b(I)Lcom/b/a/bl;
    .locals 1
    .parameter

    .prologue
    .line 8195
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8196
    iget-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/bl;

    move-object v0, p0

    .line 8197
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/bl;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 7790
    invoke-direct {p0}, Lcom/b/a/bq;->w()Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7790
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 7790
    invoke-direct {p0}, Lcom/b/a/bq;->v()Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 7790
    invoke-direct {p0, p1}, Lcom/b/a/bq;->d(Lcom/b/a/ev;)Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7790
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7790
    invoke-direct {p0}, Lcom/b/a/bq;->w()Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 7790
    invoke-direct {p0}, Lcom/b/a/bq;->w()Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7790
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bq;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 7969
    invoke-virtual {p0}, Lcom/b/a/bq;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 7973
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 7974
    sparse-switch v1, :sswitch_data_0

    .line 7980
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/bq;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7982
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bq;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 7983
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    move-object v0, p0

    .line 7984
    :goto_1
    return-object v0

    .line 7976
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bq;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 7977
    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    move-object v0, p0

    .line 7978
    goto :goto_1

    .line 7989
    :sswitch_1
    iget v1, p0, Lcom/b/a/bq;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/bq;->a:I

    .line 7990
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/bq;->b:Ljava/lang/Object;

    goto :goto_0

    .line 7994
    :sswitch_2
    invoke-static {}, Lcom/b/a/bj;->q()Lcom/b/a/bk;

    move-result-object v1

    .line 7995
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 7996
    invoke-virtual {v1}, Lcom/b/a/bk;->r()Lcom/b/a/bj;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/b/a/bq;->A()V

    iget-object v2, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0

    .line 8000
    :sswitch_3
    invoke-static {}, Lcom/b/a/bs;->k()Lcom/b/a/bt;

    move-result-object v1

    .line 8001
    invoke-virtual {p0}, Lcom/b/a/bq;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8002
    invoke-virtual {p0}, Lcom/b/a/bq;->n()Lcom/b/a/bs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/bt;->a(Lcom/b/a/bs;)Lcom/b/a/bt;

    .line 8004
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 8005
    invoke-virtual {v1}, Lcom/b/a/bt;->l()Lcom/b/a/bs;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    if-nez v2, :cond_5

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    iput-object v1, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    invoke-virtual {p0}, Lcom/b/a/bq;->af_()V

    :goto_2
    iget v1, p0, Lcom/b/a/bq;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/b/a/bq;->a:I

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 7974
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 7790
    invoke-direct {p0}, Lcom/b/a/bq;->w()Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 7790
    invoke-direct {p0}, Lcom/b/a/bq;->v()Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 7790
    invoke-direct {p0}, Lcom/b/a/bq;->w()Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 7790
    invoke-direct {p0}, Lcom/b/a/bq;->v()Lcom/b/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8020
    iget-object v0, p0, Lcom/b/a/bq;->b:Ljava/lang/Object;

    .line 8021
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8022
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 8023
    iput-object v0, p0, Lcom/b/a/bq;->b:Ljava/lang/Object;

    .line 8026
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .prologue
    .line 8064
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8065
    iget-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 8067
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final k()Ljava/util/List;
    .locals 1

    .prologue
    .line 8202
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 8203
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 8205
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 8071
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8072
    iget-object v0, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 8074
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 8241
    iget v0, p0, Lcom/b/a/bq;->a:I

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

.method public final n()Lcom/b/a/bs;
    .locals 1

    .prologue
    .line 8244
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 8245
    iget-object v0, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    .line 8247
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/bs;

    move-object v0, p0

    goto :goto_0
.end method

.method public final o()Lcom/b/a/bu;
    .locals 1

    .prologue
    .line 8306
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 8307
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/bu;

    move-object v0, p0

    .line 8309
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    goto :goto_0
.end method

.method public final p()Lcom/b/a/bp;
    .locals 2

    .prologue
    .line 7855
    invoke-virtual {p0}, Lcom/b/a/bq;->q()Lcom/b/a/bp;

    move-result-object v0

    .line 7856
    invoke-virtual {v0}, Lcom/b/a/bp;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7857
    invoke-static {v0}, Lcom/b/a/bq;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 7859
    :cond_0
    return-object v0
.end method

.method public final q()Lcom/b/a/bp;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 7873
    new-instance v1, Lcom/b/a/bp;

    invoke-direct {v1, p0}, Lcom/b/a/bp;-><init>(Lcom/b/a/bq;)V

    .line 7874
    iget v0, p0, Lcom/b/a/bq;->a:I

    .line 7875
    const/4 v2, 0x0

    .line 7876
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 7879
    :cond_0
    iget-object v3, p0, Lcom/b/a/bq;->b:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/b/a/bp;->a(Lcom/b/a/bp;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7880
    iget-object v3, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    if-nez v3, :cond_3

    .line 7881
    iget v3, p0, Lcom/b/a/bq;->a:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 7882
    iget-object v3, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    .line 7883
    iget v3, p0, Lcom/b/a/bq;->a:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/b/a/bq;->a:I

    .line 7885
    :cond_1
    iget-object v3, p0, Lcom/b/a/bq;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/b/a/bp;->a(Lcom/b/a/bp;Ljava/util/List;)Ljava/util/List;

    .line 7889
    :goto_0
    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 7890
    or-int/lit8 v0, v2, 0x2

    move v2, v0

    .line 7892
    :cond_2
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    if-nez v0, :cond_4

    .line 7893
    iget-object v0, p0, Lcom/b/a/bq;->e:Lcom/b/a/bs;

    invoke-static {v1, v0}, Lcom/b/a/bp;->a(Lcom/b/a/bp;Lcom/b/a/bs;)Lcom/b/a/bs;

    .line 7897
    :goto_1
    invoke-static {v1, v2}, Lcom/b/a/bp;->a(Lcom/b/a/bp;I)I

    .line 7898
    invoke-virtual {p0}, Lcom/b/a/bq;->ab_()V

    .line 7899
    return-object v1

    .line 7887
    :cond_3
    iget-object v3, p0, Lcom/b/a/bq;->d:Lcom/b/a/fc;

    invoke-virtual {v3}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/b/a/bp;->a(Lcom/b/a/bp;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 7895
    :cond_4
    iget-object v0, p0, Lcom/b/a/bq;->f:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/b/a/bs;

    invoke-static {v1, v0}, Lcom/b/a/bp;->a(Lcom/b/a/bp;Lcom/b/a/bs;)Lcom/b/a/bs;

    goto :goto_1
.end method
