.class public final Lcom/keniu/security/sync/d/d/a/bk;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/bm;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field private static final e:Lcom/keniu/security/sync/d/d/a/bk;

.field private static final n:J


# instance fields
.field private f:I

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:I

.field private k:J

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12608
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bk;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bk;-><init>()V

    .line 12609
    sput-object v0, Lcom/keniu/security/sync/d/d/a/bk;->e:Lcom/keniu/security/sync/d/d/a/bk;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bk;->g:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/bk;->h:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/bk;->i:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/keniu/security/sync/d/d/a/bk;->k:J

    .line 12610
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 12034
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 12146
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->l:B

    .line 12185
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->m:I

    .line 12034
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/bl;)V
    .locals 1
    .parameter

    .prologue
    .line 12027
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/bk;-><init>(Lcom/keniu/security/sync/d/d/a/bl;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/bl;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 12032
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 12146
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->l:B

    .line 12185
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->m:I

    .line 12033
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bk;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12027
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/bk;->i:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bk;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12027
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/bk;->k:J

    return-wide p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/bk;
    .locals 1
    .parameter

    .prologue
    .line 12222
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bl;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bl;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/keniu/security/sync/d/d/a/bl;)Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bk;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12228
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bl;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bl;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/keniu/security/sync/d/d/a/bl;)Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/bk;
    .locals 1
    .parameter

    .prologue
    .line 12276
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bl;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bl;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/keniu/security/sync/d/d/a/bl;)Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bk;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12282
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bl;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bl;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/keniu/security/sync/d/d/a/bl;)Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bk;
    .locals 1
    .parameter

    .prologue
    .line 12244
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bl;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bl;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/keniu/security/sync/d/d/a/bl;)Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bk;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12250
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bl;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bl;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bl;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/keniu/security/sync/d/d/a/bl;)Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/bk;
    .locals 1
    .parameter

    .prologue
    .line 12233
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bl;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bl;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bl;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/keniu/security/sync/d/d/a/bl;)Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bk;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12239
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bl;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bl;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/bl;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/keniu/security/sync/d/d/a/bl;)Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/bk;)Lcom/keniu/security/sync/d/d/a/bl;
    .locals 1
    .parameter

    .prologue
    .line 12289
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bl;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/keniu/security/sync/d/d/a/bk;)Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12027
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bk;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/bk;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12027
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/bk;->f:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/bk;
    .locals 2
    .parameter

    .prologue
    .line 12255
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bl;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    .line 12256
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bl;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12257
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/keniu/security/sync/d/d/a/bl;)Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    .line 12259
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bk;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 12266
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bl;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    .line 12267
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/bl;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12268
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/keniu/security/sync/d/d/a/bl;)Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    .line 12270
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/bl;
    .locals 1
    .parameter

    .prologue
    .line 12296
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bl;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/bl;-><init>(Lcom/b/a/dp;)V

    .line 12297
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/bk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12027
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bk;->h:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/bk;
    .locals 1

    .prologue
    .line 12038
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bk;->e:Lcom/keniu/security/sync/d/d/a/bk;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 12047
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->L()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static r()Lcom/keniu/security/sync/d/d/a/bl;
    .locals 1

    .prologue
    .line 12286
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bl;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 12027
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/bk;->j:Z

    return v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/bk;
    .locals 1

    .prologue
    .line 12042
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bk;->e:Lcom/keniu/security/sync/d/d/a/bk;

    return-object v0
.end method

.method private u()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 12077
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->g:Ljava/lang/Object;

    .line 12078
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12079
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 12081
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->g:Ljava/lang/Object;

    .line 12084
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private v()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 12109
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->h:Ljava/lang/Object;

    .line 12110
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12111
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 12113
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->h:Ljava/lang/Object;

    .line 12116
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 12141
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->g:Ljava/lang/Object;

    .line 12142
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->h:Ljava/lang/Object;

    .line 12143
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->i:I

    .line 12144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->k:J

    .line 12145
    return-void
.end method

.method private static x()Lcom/keniu/security/sync/d/d/a/bl;
    .locals 1

    .prologue
    .line 12287
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bl;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/bl;
    .locals 1

    .prologue
    .line 12291
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bl;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/keniu/security/sync/d/d/a/bk;)Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12216
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 12027
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bk;->y()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 12027
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bl;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 12027
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bk;->y()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 12027
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bl;->r()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 12027
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bk;->e:Lcom/keniu/security/sync/d/d/a/bk;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 12027
    sget-object v0, Lcom/keniu/security/sync/d/d/a/bk;->e:Lcom/keniu/security/sync/d/d/a/bk;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 12027
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bl;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/bl;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 12169
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bk;->b()I

    .line 12170
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 12171
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bk;->u()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 12173
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 12174
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bk;->v()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 12176
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->f:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 12177
    const/4 v0, 0x3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bk;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 12179
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->f:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 12180
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->k:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/b/a/n;->b(IJ)V

    .line 12182
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bk;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 12183
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12148
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->l:B

    .line 12149
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 12164
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 12149
    goto :goto_0

    .line 12151
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bk;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12152
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/bk;->l:B

    move v0, v2

    .line 12153
    goto :goto_0

    .line 12155
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bk;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12156
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/bk;->l:B

    move v0, v2

    .line 12157
    goto :goto_0

    .line 12159
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bk;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 12160
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/bk;->l:B

    move v0, v2

    .line 12161
    goto :goto_0

    .line 12163
    :cond_4
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/bk;->l:B

    move v0, v3

    .line 12164
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 12187
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->m:I

    .line 12188
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 12209
    :goto_0
    return v0

    .line 12190
    :cond_0
    const/4 v0, 0x0

    .line 12191
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bk;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 12192
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bk;->u()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 12195
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bk;->f:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 12196
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bk;->v()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12199
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bk;->f:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 12200
    const/4 v1, 0x3

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/bk;->i:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12203
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bk;->f:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 12204
    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/bk;->k:J

    invoke-static {v4, v1, v2}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12207
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bk;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 12208
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->m:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 12052
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->M()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12060
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 12063
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bk;->g:Ljava/lang/Object;

    .line 12064
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 12065
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 12073
    :goto_0
    return-object v1

    .line 12067
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 12069
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 12070
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12071
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/bk;->g:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 12073
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 12092
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->f:I

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

.method public final m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 12095
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bk;->h:Ljava/lang/Object;

    .line 12096
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 12097
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 12105
    :goto_0
    return-object v1

    .line 12099
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 12101
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 12102
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12103
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/bk;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 12105
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 12124
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->f:I

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

.method public final o()I
    .locals 1

    .prologue
    .line 12127
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->i:I

    return v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 12134
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->f:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()J
    .locals 2

    .prologue
    .line 12137
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/bk;->k:J

    return-wide v0
.end method
