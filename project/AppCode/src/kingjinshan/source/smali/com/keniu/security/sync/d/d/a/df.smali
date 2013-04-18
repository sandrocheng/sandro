.class public final Lcom/keniu/security/sync/d/d/a/df;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/dh;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/df;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Lcom/keniu/security/sync/d/d/a/ge;

.field private f:Ljava/util/List;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38754
    new-instance v0, Lcom/keniu/security/sync/d/d/a/df;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/df;-><init>()V

    .line 38755
    sput-object v0, Lcom/keniu/security/sync/d/d/a/df;->c:Lcom/keniu/security/sync/d/d/a/df;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/df;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/df;->f:Ljava/util/List;

    .line 38756
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 38061
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 38121
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/df;->g:B

    .line 38156
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/df;->h:I

    .line 38061
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/dg;)V
    .locals 1
    .parameter

    .prologue
    .line 38054
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/df;-><init>(Lcom/keniu/security/sync/d/d/a/dg;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/dg;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 38059
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 38121
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/df;->g:B

    .line 38156
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/df;->h:I

    .line 38060
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/df;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38054
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/df;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/df;
    .locals 1
    .parameter

    .prologue
    .line 38185
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dg;->i()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/keniu/security/sync/d/d/a/dg;)Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/df;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38191
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dg;->i()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/keniu/security/sync/d/d/a/dg;)Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/df;
    .locals 1
    .parameter

    .prologue
    .line 38239
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dg;->i()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/keniu/security/sync/d/d/a/dg;)Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/df;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38245
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dg;->i()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dg;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/keniu/security/sync/d/d/a/dg;)Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/df;
    .locals 1
    .parameter

    .prologue
    .line 38207
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dg;->i()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dg;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/keniu/security/sync/d/d/a/dg;)Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/df;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38213
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dg;->i()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dg;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/keniu/security/sync/d/d/a/dg;)Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/df;
    .locals 1
    .parameter

    .prologue
    .line 38196
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dg;->i()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dg;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/keniu/security/sync/d/d/a/dg;)Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/df;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38202
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dg;->i()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dg;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dg;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/keniu/security/sync/d/d/a/dg;)Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/df;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38054
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/df;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/df;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 38054
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/df;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38054
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/df;->f:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/df;
    .locals 2
    .parameter

    .prologue
    .line 38218
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dg;->i()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    .line 38219
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dg;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38220
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/keniu/security/sync/d/d/a/dg;)Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    .line 38222
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/df;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38229
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dg;->i()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    .line 38230
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dg;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38231
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/keniu/security/sync/d/d/a/dg;)Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    .line 38233
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1
    .parameter

    .prologue
    .line 38259
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dg;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/dg;-><init>(Lcom/b/a/dp;)V

    .line 38260
    return-object v0
.end method

.method private static b(Lcom/keniu/security/sync/d/d/a/df;)Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1
    .parameter

    .prologue
    .line 38252
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dg;->i()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/keniu/security/sync/d/d/a/df;)Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/df;
    .locals 1

    .prologue
    .line 38065
    sget-object v0, Lcom/keniu/security/sync/d/d/a/df;->c:Lcom/keniu/security/sync/d/d/a/df;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 38074
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bp()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 38054
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/df;->j:Z

    return v0
.end method

.method static synthetic q()Z
    .locals 1

    .prologue
    .line 38054
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/df;->j:Z

    return v0
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/df;
    .locals 1

    .prologue
    .line 38069
    sget-object v0, Lcom/keniu/security/sync/d/d/a/df;->c:Lcom/keniu/security/sync/d/d/a/df;

    return-object v0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 38118
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->e:Lcom/keniu/security/sync/d/d/a/ge;

    .line 38119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->f:Ljava/util/List;

    .line 38120
    return-void
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1

    .prologue
    .line 38249
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dg;->i()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1

    .prologue
    .line 38250
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dg;->i()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1

    .prologue
    .line 38254
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dg;->i()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/keniu/security/sync/d/d/a/df;)Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38179
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 38054
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/df;->v()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 38054
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dg;->i()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 38054
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/df;->v()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 38054
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dg;->i()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 38054
    sget-object v0, Lcom/keniu/security/sync/d/d/a/df;->c:Lcom/keniu/security/sync/d/d/a/df;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 38054
    sget-object v0, Lcom/keniu/security/sync/d/d/a/df;->c:Lcom/keniu/security/sync/d/d/a/df;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 38054
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dg;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/dg;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1
    .parameter

    .prologue
    .line 38110
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gn;

    return-object p0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 38146
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/df;->b()I

    .line 38147
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/df;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 38148
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 38150
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 38151
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 38150
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 38153
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/df;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 38154
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38123
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/df;->g:B

    .line 38124
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 38141
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 38124
    goto :goto_0

    .line 38126
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/df;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38127
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/df;->g:B

    move v0, v2

    .line 38128
    goto :goto_0

    .line 38130
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 38131
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/df;->g:B

    move v0, v2

    .line 38132
    goto :goto_0

    :cond_3
    move v0, v2

    .line 38134
    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/df;->o()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 38135
    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/df;->a(I)Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 38136
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/df;->g:B

    move v0, v2

    .line 38137
    goto :goto_0

    .line 38134
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38140
    :cond_5
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/df;->g:B

    move v0, v3

    .line 38141
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38158
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/df;->h:I

    .line 38159
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 38172
    :goto_0
    return v0

    .line 38162
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/df;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_2

    .line 38163
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    move v1, v2

    move v2, v0

    .line 38166
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 38167
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 38166
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 38170
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/df;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gg;->b()I

    move-result v0

    add-int/2addr v0, v2

    .line 38171
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/df;->h:I

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final b(I)Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1
    .parameter

    .prologue
    .line 38114
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gp;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 38079
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bq()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38087
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/df;->d:I

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
    .line 38090
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 38093
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .prologue
    .line 38100
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->f:Ljava/util/List;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    .prologue
    .line 38104
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->f:Ljava/util/List;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 38107
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/df;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
