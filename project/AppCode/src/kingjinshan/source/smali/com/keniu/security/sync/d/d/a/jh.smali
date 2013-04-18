.class public final Lcom/keniu/security/sync/d/d/a/jh;
.super Lcom/b/a/dk;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/jj;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/jh;

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
    .line 6800
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jh;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/jh;-><init>()V

    .line 6801
    sput-object v0, Lcom/keniu/security/sync/d/d/a/jh;->c:Lcom/keniu/security/sync/d/d/a/jh;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/jh;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/jh;->f:Ljava/util/List;

    .line 6802
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 6107
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 6167
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->g:B

    .line 6202
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->h:I

    .line 6107
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ji;)V
    .locals 1
    .parameter

    .prologue
    .line 6100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/jh;-><init>(Lcom/keniu/security/sync/d/d/a/ji;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ji;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6105
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 6167
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->g:B

    .line 6202
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->h:I

    .line 6106
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jh;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6100
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/jh;->d:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jh;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6100
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jh;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/jh;
    .locals 1
    .parameter

    .prologue
    .line 6231
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ji;->i()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ji;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/keniu/security/sync/d/d/a/ji;)Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6237
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ji;->i()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ji;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/keniu/security/sync/d/d/a/ji;)Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/jh;
    .locals 1
    .parameter

    .prologue
    .line 6285
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ji;->i()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ji;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/keniu/security/sync/d/d/a/ji;)Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6291
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ji;->i()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ji;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/keniu/security/sync/d/d/a/ji;)Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/jh;
    .locals 1
    .parameter

    .prologue
    .line 6253
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ji;->i()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ji;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ji;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/keniu/security/sync/d/d/a/ji;)Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6259
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ji;->i()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ji;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ji;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/keniu/security/sync/d/d/a/ji;)Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/jh;
    .locals 1
    .parameter

    .prologue
    .line 6242
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ji;->i()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ji;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ji;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/keniu/security/sync/d/d/a/ji;)Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6248
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ji;->i()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ji;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ji;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/keniu/security/sync/d/d/a/ji;)Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jh;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 6100
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jh;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6100
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jh;->f:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/jh;
    .locals 2
    .parameter

    .prologue
    .line 6264
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ji;->i()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    .line 6265
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ji;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6266
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/keniu/security/sync/d/d/a/ji;)Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    .line 6268
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jh;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 6275
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ji;->i()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    .line 6276
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ji;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6277
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/keniu/security/sync/d/d/a/ji;)Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    .line 6279
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1
    .parameter

    .prologue
    .line 6305
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ji;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ji;-><init>(Lcom/b/a/dp;)V

    .line 6306
    return-object v0
.end method

.method private static b(Lcom/keniu/security/sync/d/d/a/jh;)Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1
    .parameter

    .prologue
    .line 6298
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ji;->i()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/keniu/security/sync/d/d/a/jh;)Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/jh;
    .locals 1

    .prologue
    .line 6111
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jh;->c:Lcom/keniu/security/sync/d/d/a/jh;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6120
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->v()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 6100
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/jh;->j:Z

    return v0
.end method

.method static synthetic q()Z
    .locals 1

    .prologue
    .line 6100
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/jh;->j:Z

    return v0
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/jh;
    .locals 1

    .prologue
    .line 6115
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jh;->c:Lcom/keniu/security/sync/d/d/a/jh;

    return-object v0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 6164
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->e:Lcom/keniu/security/sync/d/d/a/ge;

    .line 6165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->f:Ljava/util/List;

    .line 6166
    return-void
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1

    .prologue
    .line 6295
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ji;->i()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1

    .prologue
    .line 6296
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ji;->i()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1

    .prologue
    .line 6300
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ji;->i()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/keniu/security/sync/d/d/a/jh;)Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6225
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 6100
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jh;->v()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 6100
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ji;->i()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 6100
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jh;->v()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 6100
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ji;->i()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 6100
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jh;->c:Lcom/keniu/security/sync/d/d/a/jh;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 6100
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jh;->c:Lcom/keniu/security/sync/d/d/a/jh;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 6100
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ji;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ji;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/ip;
    .locals 1
    .parameter

    .prologue
    .line 6156
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ip;

    return-object p0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 6192
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jh;->b()I

    .line 6193
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 6194
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 6196
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6197
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 6196
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6199
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jh;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 6200
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6169
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->g:B

    .line 6170
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 6187
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 6170
    goto :goto_0

    .line 6172
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jh;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6173
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/jh;->g:B

    move v0, v2

    .line 6174
    goto :goto_0

    .line 6176
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6177
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/jh;->g:B

    move v0, v2

    .line 6178
    goto :goto_0

    :cond_3
    move v0, v2

    .line 6180
    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jh;->o()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 6181
    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/jh;->a(I)Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/ip;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6182
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/jh;->g:B

    move v0, v2

    .line 6183
    goto :goto_0

    .line 6180
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6186
    :cond_5
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/jh;->g:B

    move v0, v3

    .line 6187
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6204
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->h:I

    .line 6205
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6218
    :goto_0
    return v0

    .line 6208
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_2

    .line 6209
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    move v1, v2

    move v2, v0

    .line 6212
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6213
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 6212
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 6216
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jh;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gg;->b()I

    move-result v0

    add-int/2addr v0, v2

    .line 6217
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->h:I

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final b(I)Lcom/keniu/security/sync/d/d/a/ir;
    .locals 1
    .parameter

    .prologue
    .line 6160
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ir;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6125
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->w()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6133
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->d:I

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
    .line 6136
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 6139
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .prologue
    .line 6146
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->f:Ljava/util/List;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    .prologue
    .line 6150
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->f:Ljava/util/List;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 6153
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jh;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
