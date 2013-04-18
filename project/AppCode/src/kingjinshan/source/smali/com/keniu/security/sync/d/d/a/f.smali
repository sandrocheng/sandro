.class public final Lcom/keniu/security/sync/d/d/a/f;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/h;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field private static final f:Lcom/keniu/security/sync/d/d/a/f;

.field private static final p:J


# instance fields
.field private g:I

.field private h:Lcom/keniu/security/sync/d/d/a/ge;

.field private i:Lcom/keniu/security/sync/d/d/a/gj;

.field private k:Lcom/keniu/security/sync/d/d/a/gy;

.field private l:Lcom/keniu/security/sync/d/d/a/hc;

.field private m:Ljava/lang/Object;

.field private n:B

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26057
    new-instance v0, Lcom/keniu/security/sync/d/d/a/f;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/f;-><init>()V

    .line 26058
    sput-object v0, Lcom/keniu/security/sync/d/d/a/f;->f:Lcom/keniu/security/sync/d/d/a/f;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/f;->h:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/f;->i:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/f;->k:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/f;->l:Lcom/keniu/security/sync/d/d/a/hc;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/f;->m:Ljava/lang/Object;

    .line 26059
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 25135
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 25248
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/f;->n:B

    .line 25286
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/f;->o:I

    .line 25135
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/g;)V
    .locals 1
    .parameter

    .prologue
    .line 25128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/f;-><init>(Lcom/keniu/security/sync/d/d/a/g;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/g;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 25133
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 25248
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/f;->n:B

    .line 25286
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/f;->o:I

    .line 25134
    return-void
.end method

.method private A()V
    .locals 1

    .prologue
    .line 25242
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->h:Lcom/keniu/security/sync/d/d/a/ge;

    .line 25243
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->i:Lcom/keniu/security/sync/d/d/a/gj;

    .line 25244
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->k:Lcom/keniu/security/sync/d/d/a/gy;

    .line 25245
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->l:Lcom/keniu/security/sync/d/d/a/hc;

    .line 25246
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->m:Ljava/lang/Object;

    .line 25247
    return-void
.end method

.method private static J()Lcom/keniu/security/sync/d/d/a/g;
    .locals 1

    .prologue
    .line 25391
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/g;->i()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    return-object v0
.end method

.method private static K()Lcom/keniu/security/sync/d/d/a/g;
    .locals 1

    .prologue
    .line 25392
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/g;->i()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    return-object v0
.end method

.method private L()Lcom/keniu/security/sync/d/d/a/g;
    .locals 1

    .prologue
    .line 25396
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/g;->i()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/g;->a(Lcom/keniu/security/sync/d/d/a/f;)Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/f;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25128
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/f;->g:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/f;
    .locals 1
    .parameter

    .prologue
    .line 25327
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/g;->i()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/g;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/g;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/g;->a(Lcom/keniu/security/sync/d/d/a/g;)Lcom/keniu/security/sync/d/d/a/f;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/f;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25333
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/g;->i()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/g;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/g;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/g;->a(Lcom/keniu/security/sync/d/d/a/g;)Lcom/keniu/security/sync/d/d/a/f;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/f;
    .locals 1
    .parameter

    .prologue
    .line 25381
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/g;->i()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/g;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/g;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/g;->a(Lcom/keniu/security/sync/d/d/a/g;)Lcom/keniu/security/sync/d/d/a/f;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/f;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25387
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/g;->i()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/g;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/g;->a(Lcom/keniu/security/sync/d/d/a/g;)Lcom/keniu/security/sync/d/d/a/f;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/f;
    .locals 1
    .parameter

    .prologue
    .line 25349
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/g;->i()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/g;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/g;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/g;->a(Lcom/keniu/security/sync/d/d/a/g;)Lcom/keniu/security/sync/d/d/a/f;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/f;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25355
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/g;->i()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/g;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/g;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/g;->a(Lcom/keniu/security/sync/d/d/a/g;)Lcom/keniu/security/sync/d/d/a/f;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/f;
    .locals 1
    .parameter

    .prologue
    .line 25338
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/g;->i()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/g;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/g;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/g;->a(Lcom/keniu/security/sync/d/d/a/g;)Lcom/keniu/security/sync/d/d/a/f;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/f;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25344
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/g;->i()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/g;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/g;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/g;->a(Lcom/keniu/security/sync/d/d/a/g;)Lcom/keniu/security/sync/d/d/a/f;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/f;)Lcom/keniu/security/sync/d/d/a/g;
    .locals 1
    .parameter

    .prologue
    .line 25394
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/g;->i()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/g;->a(Lcom/keniu/security/sync/d/d/a/f;)Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/f;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25128
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/f;->h:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/f;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25128
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/f;->i:Lcom/keniu/security/sync/d/d/a/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/f;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25128
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/f;->k:Lcom/keniu/security/sync/d/d/a/gy;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/f;Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25128
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/f;->l:Lcom/keniu/security/sync/d/d/a/hc;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25128
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/f;->m:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/f;
    .locals 2
    .parameter

    .prologue
    .line 25360
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/g;->i()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    .line 25361
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/g;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25362
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/g;->a(Lcom/keniu/security/sync/d/d/a/g;)Lcom/keniu/security/sync/d/d/a/f;

    move-result-object v0

    .line 25364
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/f;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25371
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/g;->i()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    .line 25372
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/g;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25373
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/g;->a(Lcom/keniu/security/sync/d/d/a/g;)Lcom/keniu/security/sync/d/d/a/f;

    move-result-object v0

    .line 25375
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/g;
    .locals 1
    .parameter

    .prologue
    .line 25401
    new-instance v0, Lcom/keniu/security/sync/d/d/a/g;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/g;-><init>(Lcom/b/a/dp;)V

    .line 25402
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/f;
    .locals 1

    .prologue
    .line 25139
    sget-object v0, Lcom/keniu/security/sync/d/d/a/f;->f:Lcom/keniu/security/sync/d/d/a/f;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 25148
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ax()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic x()Z
    .locals 1

    .prologue
    .line 25128
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/f;->j:Z

    return v0
.end method

.method private static y()Lcom/keniu/security/sync/d/d/a/f;
    .locals 1

    .prologue
    .line 25143
    sget-object v0, Lcom/keniu/security/sync/d/d/a/f;->f:Lcom/keniu/security/sync/d/d/a/f;

    return-object v0
.end method

.method private z()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 25230
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->m:Ljava/lang/Object;

    .line 25231
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25232
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 25234
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->m:Ljava/lang/Object;

    .line 25237
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25321
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 25128
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/f;->L()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 25128
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/g;->i()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 25128
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/f;->L()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 25128
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/g;->i()Lcom/keniu/security/sync/d/d/a/g;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 25128
    sget-object v0, Lcom/keniu/security/sync/d/d/a/f;->f:Lcom/keniu/security/sync/d/d/a/f;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 25128
    sget-object v0, Lcom/keniu/security/sync/d/d/a/f;->f:Lcom/keniu/security/sync/d/d/a/f;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 25128
    new-instance v0, Lcom/keniu/security/sync/d/d/a/g;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/g;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 25267
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/f;->b()I

    .line 25268
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/f;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 25269
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->h:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 25271
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/f;->g:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 25272
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->i:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 25274
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/f;->g:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 25275
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/f;->k:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 25277
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/f;->g:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 25278
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->l:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 25280
    :cond_3
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/f;->g:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 25281
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/f;->z()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 25283
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/f;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 25284
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25250
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/f;->n:B

    .line 25251
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 25262
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 25251
    goto :goto_0

    .line 25253
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/f;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 25254
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/f;->n:B

    move v0, v2

    .line 25255
    goto :goto_0

    .line 25257
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->h:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 25258
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/f;->n:B

    move v0, v2

    .line 25259
    goto :goto_0

    .line 25261
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/f;->n:B

    move v0, v3

    .line 25262
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 25288
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/f;->o:I

    .line 25289
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 25314
    :goto_0
    return v0

    .line 25291
    :cond_0
    const/4 v0, 0x0

    .line 25292
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/f;->g:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 25293
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->h:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 25296
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/f;->g:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 25297
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/f;->i:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25300
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/f;->g:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 25301
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/f;->k:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v2}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25304
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/f;->g:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 25305
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/f;->l:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-static {v4, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25308
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/f;->g:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 25309
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/f;->z()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25312
    :cond_5
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/f;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 25313
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/f;->o:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 25153
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ay()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 25161
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/f;->g:I

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
    .line 25164
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->h:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 25167
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->h:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 25174
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/f;->g:I

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
    .line 25177
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->i:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 25180
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->i:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 25187
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/f;->g:I

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
    .line 25190
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->k:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final r()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 25193
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->k:Lcom/keniu/security/sync/d/d/a/gy;

    return-object v0
.end method

.method public final s()Z
    .locals 2

    .prologue
    .line 25200
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/f;->g:I

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

.method public final t()Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1

    .prologue
    .line 25203
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->l:Lcom/keniu/security/sync/d/d/a/hc;

    return-object v0
.end method

.method public final u()Lcom/keniu/security/sync/d/d/a/hg;
    .locals 1

    .prologue
    .line 25206
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/f;->l:Lcom/keniu/security/sync/d/d/a/hc;

    return-object v0
.end method

.method public final v()Z
    .locals 2

    .prologue
    .line 25213
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/f;->g:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Ljava/lang/String;
    .locals 3

    .prologue
    .line 25216
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/f;->m:Ljava/lang/Object;

    .line 25217
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 25218
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 25226
    :goto_0
    return-object v1

    .line 25220
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 25222
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 25223
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25224
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/f;->m:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 25226
    goto :goto_0
.end method
