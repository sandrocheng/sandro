.class public final Lcom/keniu/security/sync/d/d/a/dl;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/dn;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/dl;

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
    .line 20789
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dl;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/dl;-><init>()V

    .line 20790
    sput-object v0, Lcom/keniu/security/sync/d/d/a/dl;->c:Lcom/keniu/security/sync/d/d/a/dl;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/dl;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/dl;->f:Ljava/util/List;

    .line 20791
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 20096
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 20156
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->g:B

    .line 20191
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->h:I

    .line 20096
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/dm;)V
    .locals 1
    .parameter

    .prologue
    .line 20089
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/dl;-><init>(Lcom/keniu/security/sync/d/d/a/dm;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/dm;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 20094
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 20156
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->g:B

    .line 20191
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->h:I

    .line 20095
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/dl;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20089
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/dl;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/dl;
    .locals 1
    .parameter

    .prologue
    .line 20220
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dm;->i()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dm;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/keniu/security/sync/d/d/a/dm;)Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20226
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dm;->i()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dm;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/keniu/security/sync/d/d/a/dm;)Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/dl;
    .locals 1
    .parameter

    .prologue
    .line 20274
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dm;->i()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dm;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/keniu/security/sync/d/d/a/dm;)Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20280
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dm;->i()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dm;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/keniu/security/sync/d/d/a/dm;)Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/dl;
    .locals 1
    .parameter

    .prologue
    .line 20242
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dm;->i()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dm;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dm;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/keniu/security/sync/d/d/a/dm;)Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20248
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dm;->i()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dm;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dm;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/keniu/security/sync/d/d/a/dm;)Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/dl;
    .locals 1
    .parameter

    .prologue
    .line 20231
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dm;->i()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dm;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dm;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/keniu/security/sync/d/d/a/dm;)Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20237
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dm;->i()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dm;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dm;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/keniu/security/sync/d/d/a/dm;)Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/dl;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20089
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/dl;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/dl;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 20089
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/dl;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20089
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/dl;->f:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/dl;
    .locals 2
    .parameter

    .prologue
    .line 20253
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dm;->i()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    .line 20254
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dm;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20255
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/keniu/security/sync/d/d/a/dm;)Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    .line 20257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dl;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20264
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dm;->i()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    .line 20265
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dm;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20266
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/keniu/security/sync/d/d/a/dm;)Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    .line 20268
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1
    .parameter

    .prologue
    .line 20294
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dm;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/dm;-><init>(Lcom/b/a/dp;)V

    .line 20295
    return-object v0
.end method

.method private static b(Lcom/keniu/security/sync/d/d/a/dl;)Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1
    .parameter

    .prologue
    .line 20287
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dm;->i()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/keniu/security/sync/d/d/a/dl;)Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/dl;
    .locals 1

    .prologue
    .line 20100
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dl;->c:Lcom/keniu/security/sync/d/d/a/dl;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 20109
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ah()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 20089
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/dl;->j:Z

    return v0
.end method

.method static synthetic q()Z
    .locals 1

    .prologue
    .line 20089
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/dl;->j:Z

    return v0
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/dl;
    .locals 1

    .prologue
    .line 20104
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dl;->c:Lcom/keniu/security/sync/d/d/a/dl;

    return-object v0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 20153
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->e:Lcom/keniu/security/sync/d/d/a/ge;

    .line 20154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->f:Ljava/util/List;

    .line 20155
    return-void
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1

    .prologue
    .line 20284
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dm;->i()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1

    .prologue
    .line 20285
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dm;->i()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1

    .prologue
    .line 20289
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dm;->i()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/keniu/security/sync/d/d/a/dl;)Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20214
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 20089
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dl;->v()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 20089
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dm;->i()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 20089
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dl;->v()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 20089
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dm;->i()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 20089
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dl;->c:Lcom/keniu/security/sync/d/d/a/dl;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 20089
    sget-object v0, Lcom/keniu/security/sync/d/d/a/dl;->c:Lcom/keniu/security/sync/d/d/a/dl;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 20089
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dm;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/dm;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/gq;
    .locals 1
    .parameter

    .prologue
    .line 20145
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gq;

    return-object p0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 20181
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dl;->b()I

    .line 20182
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 20183
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 20185
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 20186
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 20185
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 20188
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dl;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 20189
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20158
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->g:B

    .line 20159
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 20176
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 20159
    goto :goto_0

    .line 20161
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dl;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 20162
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/dl;->g:B

    move v0, v2

    .line 20163
    goto :goto_0

    .line 20165
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 20166
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/dl;->g:B

    move v0, v2

    .line 20167
    goto :goto_0

    :cond_3
    move v0, v2

    .line 20169
    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dl;->o()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 20170
    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dl;->a(I)Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gq;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 20171
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/dl;->g:B

    move v0, v2

    .line 20172
    goto :goto_0

    .line 20169
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 20175
    :cond_5
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/dl;->g:B

    move v0, v3

    .line 20176
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20193
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->h:I

    .line 20194
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 20207
    :goto_0
    return v0

    .line 20197
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_2

    .line 20198
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    move v1, v2

    move v2, v0

    .line 20201
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 20202
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 20201
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 20205
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dl;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gg;->b()I

    move-result v0

    add-int/2addr v0, v2

    .line 20206
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->h:I

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final b(I)Lcom/keniu/security/sync/d/d/a/gs;
    .locals 1
    .parameter

    .prologue
    .line 20149
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gs;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 20114
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ai()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 20122
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->d:I

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
    .line 20125
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 20128
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .prologue
    .line 20135
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->f:Ljava/util/List;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    .prologue
    .line 20139
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->f:Ljava/util/List;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 20142
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dl;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
