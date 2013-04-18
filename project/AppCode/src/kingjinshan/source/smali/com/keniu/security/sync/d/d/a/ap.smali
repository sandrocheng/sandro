.class public final Lcom/keniu/security/sync/d/d/a/ap;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ar;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/ap;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Lcom/keniu/security/sync/d/d/a/ge;

.field private g:Lcom/keniu/security/sync/d/d/a/gy;

.field private h:Lcom/keniu/security/sync/d/d/a/hc;

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29784
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ap;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ap;-><init>()V

    .line 29785
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ap;->d:Lcom/keniu/security/sync/d/d/a/ap;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ap;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ap;->g:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ap;->h:Lcom/keniu/security/sync/d/d/a/hc;

    .line 29786
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 29090
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 29156
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->i:B

    .line 29188
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->k:I

    .line 29090
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/aq;)V
    .locals 1
    .parameter

    .prologue
    .line 29083
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ap;-><init>(Lcom/keniu/security/sync/d/d/a/aq;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/aq;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 29088
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 29156
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->i:B

    .line 29188
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->k:I

    .line 29089
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ap;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29083
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ap;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ap;
    .locals 1
    .parameter

    .prologue
    .line 29221
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aq;->i()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/aq;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/aq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/aq;->a(Lcom/keniu/security/sync/d/d/a/aq;)Lcom/keniu/security/sync/d/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29227
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aq;->i()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/aq;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/aq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/aq;->a(Lcom/keniu/security/sync/d/d/a/aq;)Lcom/keniu/security/sync/d/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ap;
    .locals 1
    .parameter

    .prologue
    .line 29275
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aq;->i()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/aq;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/aq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/aq;->a(Lcom/keniu/security/sync/d/d/a/aq;)Lcom/keniu/security/sync/d/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29281
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aq;->i()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/aq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/aq;->a(Lcom/keniu/security/sync/d/d/a/aq;)Lcom/keniu/security/sync/d/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ap;
    .locals 1
    .parameter

    .prologue
    .line 29243
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aq;->i()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/aq;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/aq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/aq;->a(Lcom/keniu/security/sync/d/d/a/aq;)Lcom/keniu/security/sync/d/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29249
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aq;->i()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/aq;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/aq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/aq;->a(Lcom/keniu/security/sync/d/d/a/aq;)Lcom/keniu/security/sync/d/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/ap;
    .locals 1
    .parameter

    .prologue
    .line 29232
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aq;->i()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/aq;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/aq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/aq;->a(Lcom/keniu/security/sync/d/d/a/aq;)Lcom/keniu/security/sync/d/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29238
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aq;->i()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/aq;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/aq;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/aq;->a(Lcom/keniu/security/sync/d/d/a/aq;)Lcom/keniu/security/sync/d/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/ap;)Lcom/keniu/security/sync/d/d/a/aq;
    .locals 1
    .parameter

    .prologue
    .line 29288
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aq;->i()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/aq;->a(Lcom/keniu/security/sync/d/d/a/ap;)Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ap;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29083
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ap;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ap;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29083
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ap;->g:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ap;Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29083
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ap;->h:Lcom/keniu/security/sync/d/d/a/hc;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ap;
    .locals 2
    .parameter

    .prologue
    .line 29254
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aq;->i()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    .line 29255
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/aq;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29256
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/aq;->a(Lcom/keniu/security/sync/d/d/a/aq;)Lcom/keniu/security/sync/d/d/a/ap;

    move-result-object v0

    .line 29258
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29265
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aq;->i()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    .line 29266
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/aq;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29267
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/aq;->a(Lcom/keniu/security/sync/d/d/a/aq;)Lcom/keniu/security/sync/d/d/a/ap;

    move-result-object v0

    .line 29269
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/aq;
    .locals 1
    .parameter

    .prologue
    .line 29295
    new-instance v0, Lcom/keniu/security/sync/d/d/a/aq;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/aq;-><init>(Lcom/b/a/dp;)V

    .line 29296
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ap;
    .locals 1

    .prologue
    .line 29094
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ap;->d:Lcom/keniu/security/sync/d/d/a/ap;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 29103
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aJ()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 29083
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ap;->j:Z

    return v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/ap;
    .locals 1

    .prologue
    .line 29098
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ap;->d:Lcom/keniu/security/sync/d/d/a/ap;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 29152
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 29153
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->g:Lcom/keniu/security/sync/d/d/a/gy;

    .line 29154
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->h:Lcom/keniu/security/sync/d/d/a/hc;

    .line 29155
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/aq;
    .locals 1

    .prologue
    .line 29285
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aq;->i()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/aq;
    .locals 1

    .prologue
    .line 29286
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aq;->i()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/aq;
    .locals 1

    .prologue
    .line 29290
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aq;->i()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/aq;->a(Lcom/keniu/security/sync/d/d/a/ap;)Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29215
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 29083
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ap;->x()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 29083
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aq;->i()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 29083
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ap;->x()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 29083
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aq;->i()Lcom/keniu/security/sync/d/d/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 29083
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ap;->d:Lcom/keniu/security/sync/d/d/a/ap;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 29083
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ap;->d:Lcom/keniu/security/sync/d/d/a/ap;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 29083
    new-instance v0, Lcom/keniu/security/sync/d/d/a/aq;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/aq;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 29175
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ap;->b()I

    .line 29176
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 29177
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 29179
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 29180
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->g:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 29182
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 29183
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ap;->h:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 29185
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ap;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 29186
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29158
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->i:B

    .line 29159
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 29170
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 29159
    goto :goto_0

    .line 29161
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ap;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 29162
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ap;->i:B

    move v0, v2

    .line 29163
    goto :goto_0

    .line 29165
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 29166
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ap;->i:B

    move v0, v2

    .line 29167
    goto :goto_0

    .line 29169
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ap;->i:B

    move v0, v3

    .line 29170
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 29190
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->k:I

    .line 29191
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 29208
    :goto_0
    return v0

    .line 29193
    :cond_0
    const/4 v0, 0x0

    .line 29194
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ap;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 29195
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 29198
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ap;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 29199
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ap;->g:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29202
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ap;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 29203
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ap;->h:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-static {v1, v2}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29206
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ap;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 29207
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 29108
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aK()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 29116
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->e:I

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
    .line 29119
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 29122
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 29129
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->e:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gy;
    .locals 1

    .prologue
    .line 29132
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->g:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 29135
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->g:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 29142
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->e:I

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

.method public final q()Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1

    .prologue
    .line 29145
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->h:Lcom/keniu/security/sync/d/d/a/hc;

    return-object v0
.end method

.method public final r()Lcom/keniu/security/sync/d/d/a/hg;
    .locals 1

    .prologue
    .line 29148
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ap;->h:Lcom/keniu/security/sync/d/d/a/hc;

    return-object v0
.end method
