.class public final Lcom/b/a/cy;
.super Lcom/b/a/a;
.source "DynamicMessage.java"


# instance fields
.field private final a:Lcom/b/a/cj;

.field private final b:Lcom/b/a/dh;

.field private final c:Lcom/b/a/gg;

.field private d:I


# direct methods
.method synthetic constructor <init>(Lcom/b/a/cj;Lcom/b/a/dh;Lcom/b/a/gg;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/b/a/cy;-><init>(Lcom/b/a/cj;Lcom/b/a/dh;Lcom/b/a/gg;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/cj;Lcom/b/a/dh;Lcom/b/a/gg;B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/b/a/a;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/cy;->d:I

    .line 57
    iput-object p1, p0, Lcom/b/a/cy;->a:Lcom/b/a/cj;

    .line 58
    iput-object p2, p0, Lcom/b/a/cy;->b:Lcom/b/a/dh;

    .line 59
    iput-object p3, p0, Lcom/b/a/cy;->c:Lcom/b/a/gg;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/b/a/cy;)Lcom/b/a/cj;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/b/a/cy;->a:Lcom/b/a/cj;

    return-object v0
.end method

.method public static a(Lcom/b/a/cj;)Lcom/b/a/cy;
    .locals 4
    .parameter

    .prologue
    .line 67
    new-instance v0, Lcom/b/a/cy;

    invoke-static {}, Lcom/b/a/dh;->b()Lcom/b/a/dh;

    move-result-object v1

    invoke-static {}, Lcom/b/a/gg;->f()Lcom/b/a/gg;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/b/a/cy;-><init>(Lcom/b/a/cj;Lcom/b/a/dh;Lcom/b/a/gg;B)V

    return-object v0
.end method

.method private static a(Lcom/b/a/cj;Lcom/b/a/i;)Lcom/b/a/cy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-static {p0}, Lcom/b/a/cy;->b(Lcom/b/a/cj;)Lcom/b/a/da;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/da;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/da;

    invoke-static {p0}, Lcom/b/a/da;->a(Lcom/b/a/da;)Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/cj;Lcom/b/a/i;Lcom/b/a/db;)Lcom/b/a/cy;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-static {p0}, Lcom/b/a/cy;->b(Lcom/b/a/cj;)Lcom/b/a/da;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/b/a/da;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/da;

    invoke-static {p0}, Lcom/b/a/da;->a(Lcom/b/a/da;)Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/cj;Lcom/b/a/m;)Lcom/b/a/cy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-static {p0}, Lcom/b/a/cy;->b(Lcom/b/a/cj;)Lcom/b/a/da;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/da;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/da;

    invoke-static {p0}, Lcom/b/a/da;->a(Lcom/b/a/da;)Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/cj;Lcom/b/a/m;Lcom/b/a/db;)Lcom/b/a/cy;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-static {p0}, Lcom/b/a/cy;->b(Lcom/b/a/cj;)Lcom/b/a/da;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/b/a/da;->a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/da;

    invoke-static {p0}, Lcom/b/a/da;->a(Lcom/b/a/da;)Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/cj;Ljava/io/InputStream;)Lcom/b/a/cy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-static {p0}, Lcom/b/a/cy;->b(Lcom/b/a/cj;)Lcom/b/a/da;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/da;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/da;

    invoke-static {p0}, Lcom/b/a/da;->a(Lcom/b/a/da;)Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/cj;Ljava/io/InputStream;Lcom/b/a/db;)Lcom/b/a/cy;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-static {p0}, Lcom/b/a/cy;->b(Lcom/b/a/cj;)Lcom/b/a/da;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/b/a/da;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/da;

    invoke-static {p0}, Lcom/b/a/da;->a(Lcom/b/a/da;)Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/cj;[B)Lcom/b/a/cy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-static {p0}, Lcom/b/a/cy;->b(Lcom/b/a/cj;)Lcom/b/a/da;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/da;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/da;

    invoke-static {p0}, Lcom/b/a/da;->a(Lcom/b/a/da;)Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/cj;[BLcom/b/a/db;)Lcom/b/a/cy;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-static {p0}, Lcom/b/a/cy;->b(Lcom/b/a/cj;)Lcom/b/a/da;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/b/a/da;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/da;

    invoke-static {p0}, Lcom/b/a/da;->a(Lcom/b/a/da;)Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/ev;)Lcom/b/a/da;
    .locals 2
    .parameter

    .prologue
    .line 136
    new-instance v0, Lcom/b/a/da;

    invoke-interface {p0}, Lcom/b/a/ev;->C()Lcom/b/a/cj;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/da;-><init>(Lcom/b/a/cj;)V

    invoke-virtual {v0, p0}, Lcom/b/a/da;->d(Lcom/b/a/ev;)Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/cj;Lcom/b/a/dh;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/b/a/cy;->b(Lcom/b/a/cj;Lcom/b/a/dh;)Z

    move-result v0

    return v0
.end method

.method private static b(Lcom/b/a/cj;)Lcom/b/a/da;
    .locals 1
    .parameter

    .prologue
    .line 128
    new-instance v0, Lcom/b/a/da;

    invoke-direct {v0, p0}, Lcom/b/a/da;-><init>(Lcom/b/a/cj;)V

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/cy;)Lcom/b/a/dh;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/b/a/cy;->b:Lcom/b/a/dh;

    return-object v0
.end method

.method private static b(Lcom/b/a/cj;Lcom/b/a/dh;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/b/a/cj;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cq;

    .line 190
    invoke-virtual {p0}, Lcom/b/a/cq;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {p1, p0}, Lcom/b/a/dh;->a(Lcom/b/a/dj;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/b/a/dh;->i()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/b/a/cy;)Lcom/b/a/gg;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/b/a/cy;->c:Lcom/b/a/gg;

    return-object v0
.end method

.method private d(Lcom/b/a/cq;)V
    .locals 2
    .parameter

    .prologue
    .line 241
    invoke-virtual {p1}, Lcom/b/a/cq;->r()Lcom/b/a/cj;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/cy;->a:Lcom/b/a/cj;

    if-eq v0, v1, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    return-void
.end method

.method private g()Lcom/b/a/cy;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/b/a/cy;->a:Lcom/b/a/cj;

    invoke-static {v0}, Lcom/b/a/cy;->a(Lcom/b/a/cj;)Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method private h()Lcom/b/a/da;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lcom/b/a/da;

    iget-object v1, p0, Lcom/b/a/cy;->a:Lcom/b/a/cj;

    invoke-direct {v0, v1}, Lcom/b/a/da;-><init>(Lcom/b/a/cj;)V

    return-object v0
.end method

.method private i()Lcom/b/a/da;
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/b/a/cy;->h()Lcom/b/a/da;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/da;->d(Lcom/b/a/ev;)Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/b/a/cy;->a:Lcom/b/a/cj;

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/b/a/cy;->i()Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/b/a/cy;->h()Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/b/a/cy;->i()Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/b/a/cy;->h()Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/b/a/cy;->a:Lcom/b/a/cj;

    invoke-static {v0}, Lcom/b/a/cy;->a(Lcom/b/a/cj;)Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/b/a/cy;->a:Lcom/b/a/cj;

    invoke-static {v0}, Lcom/b/a/cy;->a(Lcom/b/a/cj;)Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/cq;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/b/a/cy;->d(Lcom/b/a/cq;)V

    .line 179
    iget-object v0, p0, Lcom/b/a/cy;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/dh;->a(Lcom/b/a/dj;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/b/a/cy;->a:Lcom/b/a/cj;

    invoke-virtual {v0}, Lcom/b/a/cj;->d()Lcom/b/a/bg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bg;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/b/a/cy;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->b(Lcom/b/a/n;)V

    .line 208
    iget-object v0, p0, Lcom/b/a/cy;->c:Lcom/b/a/gg;

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->b(Lcom/b/a/n;)V

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/b/a/cy;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->a(Lcom/b/a/n;)V

    .line 211
    iget-object v0, p0, Lcom/b/a/cy;->c:Lcom/b/a/gg;

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/b/a/cy;->a:Lcom/b/a/cj;

    iget-object v1, p0, Lcom/b/a/cy;->b:Lcom/b/a/dh;

    invoke-static {v0, v1}, Lcom/b/a/cy;->b(Lcom/b/a/cj;Lcom/b/a/dh;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/b/a/cq;)Z
    .locals 1
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/b/a/cy;->d(Lcom/b/a/cq;)V

    .line 156
    iget-object v0, p0, Lcom/b/a/cy;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->a(Lcom/b/a/dj;)Z

    move-result v0

    return v0
.end method

.method public final a_()Ljava/util/Map;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/b/a/cy;->b:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Lcom/b/a/cy;->d:I

    .line 217
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 228
    :goto_0
    return v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/b/a/cy;->a:Lcom/b/a/cj;

    invoke-virtual {v0}, Lcom/b/a/cj;->d()Lcom/b/a/bg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bg;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/b/a/cy;->b:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->k()I

    move-result v0

    .line 221
    iget-object v1, p0, Lcom/b/a/cy;->c:Lcom/b/a/gg;

    invoke-virtual {v1}, Lcom/b/a/gg;->h()I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    :goto_1
    iput v0, p0, Lcom/b/a/cy;->d:I

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/b/a/cy;->b:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->j()I

    move-result v0

    .line 224
    iget-object v1, p0, Lcom/b/a/cy;->c:Lcom/b/a/gg;

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public final b(Lcom/b/a/cq;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/b/a/cy;->d(Lcom/b/a/cq;)V

    .line 161
    iget-object v0, p0, Lcom/b/a/cy;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->b(Lcom/b/a/dj;)Ljava/lang/Object;

    move-result-object v0

    .line 162
    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v0, v1, :cond_1

    .line 164
    invoke-virtual {p1}, Lcom/b/a/cq;->t()Lcom/b/a/cj;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/cy;->a(Lcom/b/a/cj;)Lcom/b/a/cy;

    move-result-object v0

    .line 169
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/cq;->p()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final b_()Lcom/b/a/gg;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/b/a/cy;->c:Lcom/b/a/gg;

    return-object v0
.end method

.method public final c(Lcom/b/a/cq;)I
    .locals 1
    .parameter

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/b/a/cy;->d(Lcom/b/a/cq;)V

    .line 174
    iget-object v0, p0, Lcom/b/a/cy;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->d(Lcom/b/a/dj;)I

    move-result v0

    return v0
.end method
