.class public abstract Lcom/b/a/a;
.super Lcom/b/a/d;
.source "AbstractMessage.java"

# interfaces
.implements Lcom/b/a/ev;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/b/a/d;-><init>()V

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/a;->a:I

    .line 238
    return-void
.end method

.method private static a(ILjava/util/Map;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/cq;

    .line 181
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 182
    mul-int/lit8 v2, v2, 0x25

    invoke-virtual {v0}, Lcom/b/a/cq;->e()I

    move-result v3

    add-int/2addr v2, v3

    .line 183
    invoke-virtual {v0}, Lcom/b/a/cq;->h()Lcom/b/a/cs;

    move-result-object v3

    sget-object v4, Lcom/b/a/cs;->n:Lcom/b/a/cs;

    if-eq v3, v4, :cond_0

    .line 184
    mul-int/lit8 v0, v2, 0x35

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v0}, Lcom/b/a/cq;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    check-cast p0, Ljava/util/List;

    .line 187
    mul-int/lit8 v0, v2, 0x35

    const/4 v2, 0x1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/eq;

    mul-int/lit8 v2, v2, 0x1f

    invoke-interface {p0}, Lcom/b/a/eq;->H_()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    move v2, v0

    .line 188
    goto :goto_0

    .line 189
    :cond_2
    mul-int/lit8 v0, v2, 0x35

    check-cast p0, Lcom/b/a/eq;

    invoke-interface {p0}, Lcom/b/a/eq;->H_()I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    .line 191
    goto :goto_0

    .line 192
    :cond_3
    return v2
.end method

.method private static a(J)I
    .locals 2
    .parameter

    .prologue
    .line 200
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static a(Lcom/b/a/eq;)I
    .locals 1
    .parameter

    .prologue
    .line 219
    invoke-interface {p0}, Lcom/b/a/eq;->H_()I

    move-result v0

    return v0
.end method

.method private static a(Ljava/util/List;)I
    .locals 3
    .parameter

    .prologue
    .line 224
    const/4 v0, 0x1

    .line 225
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/eq;

    .line 226
    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lcom/b/a/eq;->H_()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 228
    :cond_0
    return v0
.end method

.method private static a(Z)I
    .locals 1
    .parameter

    .prologue
    .line 208
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/b/a/n;)V
    .locals 6
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/b/a/a;->C()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->d()Lcom/b/a/bg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bg;->i()Z

    move-result v2

    .line 94
    invoke-virtual {p0}, Lcom/b/a/a;->a_()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/cq;

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 97
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/b/a/cq;->q()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/b/a/cq;->h()Lcom/b/a/cs;

    move-result-object v4

    sget-object v5, Lcom/b/a/cs;->k:Lcom/b/a/cs;

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/b/a/cq;->m()Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    invoke-virtual {v1}, Lcom/b/a/cq;->e()I

    move-result v1

    check-cast v0, Lcom/b/a/ev;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->c(ILcom/b/a/ex;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {v1, v0, p1}, Lcom/b/a/dh;->a(Lcom/b/a/dj;Ljava/lang/Object;Lcom/b/a/n;)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/a;->b_()Lcom/b/a/gg;

    move-result-object v0

    .line 107
    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {v0, p1}, Lcom/b/a/gg;->b(Lcom/b/a/n;)V

    .line 112
    :goto_1
    return-void

    .line 110
    :cond_2
    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    goto :goto_1
.end method

.method public a()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/b/a/a;->C()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cj;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/cq;

    .line 55
    invoke-virtual {v0}, Lcom/b/a/cq;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p0, v0}, Lcom/b/a/a;->a(Lcom/b/a/cq;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 81
    :goto_0
    return v0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/a;->a_()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/cq;

    .line 66
    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v2

    sget-object v3, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v2, v3, :cond_2

    .line 67
    invoke-virtual {v0}, Lcom/b/a/cq;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/ev;

    .line 69
    invoke-interface {p0}, Lcom/b/a/ev;->a()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v4

    .line 70
    goto :goto_0

    .line 74
    :cond_4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/ev;

    invoke-interface {p0}, Lcom/b/a/ev;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    .line 75
    goto :goto_0

    .line 81
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 7

    .prologue
    .line 117
    iget v0, p0, Lcom/b/a/a;->a:I

    .line 118
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 148
    :goto_0
    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/b/a/a;->C()Lcom/b/a/cj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cj;->d()Lcom/b/a/bg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/bg;->i()Z

    move-result v2

    .line 127
    invoke-virtual {p0}, Lcom/b/a/a;->a_()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/cq;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 130
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/b/a/cq;->q()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/b/a/cq;->h()Lcom/b/a/cs;

    move-result-object v5

    sget-object v6, Lcom/b/a/cs;->k:Lcom/b/a/cs;

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/b/a/cq;->m()Z

    move-result v5

    if-nez v5, :cond_1

    .line 133
    invoke-virtual {v1}, Lcom/b/a/cq;->e()I

    move-result v1

    check-cast v0, Lcom/b/a/ev;

    invoke-static {v1, v0}, Lcom/b/a/n;->f(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_1

    .line 136
    :cond_1
    invoke-static {v1, v0}, Lcom/b/a/dh;->c(Lcom/b/a/dj;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v4

    move v4, v0

    .line 138
    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/b/a/a;->b_()Lcom/b/a/gg;

    move-result-object v0

    .line 141
    if-eqz v2, :cond_3

    .line 142
    invoke-virtual {v0}, Lcom/b/a/gg;->h()I

    move-result v0

    add-int/2addr v0, v4

    .line 147
    :goto_2
    iput v0, p0, Lcom/b/a/a;->a:I

    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {v0}, Lcom/b/a/gg;->b()I

    move-result v0

    add-int/2addr v0, v4

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 163
    :goto_0
    return v0

    .line 156
    :cond_0
    instance-of v0, p1, Lcom/b/a/ev;

    if-nez v0, :cond_1

    move v0, v2

    .line 157
    goto :goto_0

    .line 159
    :cond_1
    check-cast p1, Lcom/b/a/ev;

    .line 160
    invoke-virtual {p0}, Lcom/b/a/a;->C()Lcom/b/a/cj;

    move-result-object v0

    invoke-interface {p1}, Lcom/b/a/ev;->C()Lcom/b/a/cj;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 161
    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/b/a/a;->a_()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/b/a/ev;->a_()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/b/a/a;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-interface {p1}, Lcom/b/a/ev;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/gg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/b/a/a;->C()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 171
    invoke-virtual {p0}, Lcom/b/a/a;->a_()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/cq;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 v3, v3, 0x25

    invoke-virtual {v1}, Lcom/b/a/cq;->e()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/b/a/cq;->h()Lcom/b/a/cs;

    move-result-object v4

    sget-object v5, Lcom/b/a/cs;->n:Lcom/b/a/cs;

    if-eq v4, v5, :cond_0

    mul-int/lit8 v1, v3, 0x35

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/b/a/cq;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/List;

    mul-int/lit8 v1, v3, 0x35

    const/4 v3, 0x1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/eq;

    mul-int/lit8 v3, v3, 0x1f

    invoke-interface {v0}, Lcom/b/a/eq;->H_()I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    goto :goto_1

    :cond_1
    add-int v0, v1, v3

    move v3, v0

    goto :goto_0

    :cond_2
    mul-int/lit8 v1, v3, 0x35

    check-cast v0, Lcom/b/a/eq;

    invoke-interface {v0}, Lcom/b/a/eq;->H_()I

    move-result v0

    add-int/2addr v0, v1

    move v3, v0

    goto :goto_0

    .line 172
    :cond_3
    mul-int/lit8 v0, v3, 0x1d

    invoke-virtual {p0}, Lcom/b/a/a;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-static {p0}, Lcom/b/a/fy;->a(Lcom/b/a/ev;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
