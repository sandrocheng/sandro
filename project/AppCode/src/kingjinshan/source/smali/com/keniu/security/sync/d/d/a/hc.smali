.class public final Lcom/keniu/security/sync/d/d/a/hc;
.super Lcom/b/a/dk;
.source "Common.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/hg;


# static fields
.field private static final B:J = 0x0L

.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x7

.field public static final h:I = 0x8

.field public static final i:I = 0x9

.field public static final k:I = 0xa

.field public static final l:I = 0xb

.field private static final m:Lcom/keniu/security/sync/d/d/a/hc;


# instance fields
.field private A:I

.field private n:I

.field private o:Lcom/keniu/security/sync/d/d/a/gj;

.field private p:Ljava/lang/Object;

.field private q:Ljava/lang/Object;

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:J

.field private w:Ljava/lang/Object;

.field private x:Ljava/lang/Object;

.field private y:I

.field private z:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5093
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hc;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hc;-><init>()V

    .line 5094
    sput-object v0, Lcom/keniu/security/sync/d/d/a/hc;->m:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/hc;->o:Lcom/keniu/security/sync/d/d/a/gj;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/hc;->p:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/hc;->q:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/keniu/security/sync/d/d/a/hc;->r:Z

    iput v3, v0, Lcom/keniu/security/sync/d/d/a/hc;->s:I

    iput v3, v0, Lcom/keniu/security/sync/d/d/a/hc;->t:I

    iput v3, v0, Lcom/keniu/security/sync/d/d/a/hc;->u:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/keniu/security/sync/d/d/a/hc;->v:J

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/hc;->w:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/hc;->x:Ljava/lang/Object;

    iput v3, v0, Lcom/keniu/security/sync/d/d/a/hc;->y:I

    .line 5095
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3938
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 4249
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->z:B

    .line 4297
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->A:I

    .line 3938
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/hd;)V
    .locals 1
    .parameter

    .prologue
    .line 3931
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/hc;-><init>(Lcom/keniu/security/sync/d/d/a/hd;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/hd;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3936
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 4249
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->z:B

    .line 4297
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->A:I

    .line 3937
    return-void
.end method

.method public static O()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1

    .prologue
    .line 4426
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hd;->E()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic P()Z
    .locals 1

    .prologue
    .line 3931
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/hc;->j:Z

    return v0
.end method

.method private static Q()Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1

    .prologue
    .line 3946
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hc;->m:Lcom/keniu/security/sync/d/d/a/hc;

    return-object v0
.end method

.method private R()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 4069
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->p:Ljava/lang/Object;

    .line 4070
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4071
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 4073
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->p:Ljava/lang/Object;

    .line 4076
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private S()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 4101
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->q:Ljava/lang/Object;

    .line 4102
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4103
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 4105
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->q:Ljava/lang/Object;

    .line 4108
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private T()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 4183
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->w:Ljava/lang/Object;

    .line 4184
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4185
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 4187
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->w:Ljava/lang/Object;

    .line 4190
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private U()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 4215
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->x:Ljava/lang/Object;

    .line 4216
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4217
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 4219
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->x:Ljava/lang/Object;

    .line 4222
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private V()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4237
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->o:Lcom/keniu/security/sync/d/d/a/gj;

    .line 4238
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->p:Ljava/lang/Object;

    .line 4239
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->q:Ljava/lang/Object;

    .line 4240
    iput-boolean v2, p0, Lcom/keniu/security/sync/d/d/a/hc;->r:Z

    .line 4241
    iput v2, p0, Lcom/keniu/security/sync/d/d/a/hc;->s:I

    .line 4242
    iput v2, p0, Lcom/keniu/security/sync/d/d/a/hc;->t:I

    .line 4243
    iput v2, p0, Lcom/keniu/security/sync/d/d/a/hc;->u:I

    .line 4244
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->v:J

    .line 4245
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->w:Ljava/lang/Object;

    .line 4246
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->x:Ljava/lang/Object;

    .line 4247
    iput v2, p0, Lcom/keniu/security/sync/d/d/a/hc;->y:I

    .line 4248
    return-void
.end method

.method private static W()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1

    .prologue
    .line 4427
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hd;->E()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method private X()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1

    .prologue
    .line 4431
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hd;->E()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hc;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3931
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hc;->s:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hc;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3931
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/hc;->v:J

    return-wide p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hc;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3931
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hc;->o:Lcom/keniu/security/sync/d/d/a/gj;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1
    .parameter

    .prologue
    .line 4362
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hd;->E()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hd;)Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4368
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hd;->E()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hd;)Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1
    .parameter

    .prologue
    .line 4416
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hd;->E()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hd;)Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4422
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hd;->E()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hd;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hd;)Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1
    .parameter

    .prologue
    .line 4384
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hd;->E()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hd;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hd;)Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4390
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hd;->E()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hd;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hd;)Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1
    .parameter

    .prologue
    .line 4373
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hd;->E()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hd;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hd;)Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4379
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hd;->E()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hd;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hd;)Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1
    .parameter

    .prologue
    .line 4429
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hd;->E()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hc;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3931
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hc;->p:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hc;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3931
    iput-boolean p1, p0, Lcom/keniu/security/sync/d/d/a/hc;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/hc;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3931
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hc;->t:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 2
    .parameter

    .prologue
    .line 4395
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hd;->E()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    .line 4396
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hd;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4397
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hd;)Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    .line 4399
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4406
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hd;->E()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    .line 4407
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hd;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4408
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hd;)Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    .line 4410
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1
    .parameter

    .prologue
    .line 4436
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hd;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/hd;-><init>(Lcom/b/a/dp;)V

    .line 4437
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/hc;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3931
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hc;->q:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/hc;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3931
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hc;->u:I

    return p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/hc;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3931
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hc;->w:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/keniu/security/sync/d/d/a/hc;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3931
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hc;->y:I

    return p1
.end method

.method static synthetic d(Lcom/keniu/security/sync/d/d/a/hc;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3931
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hc;->x:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/keniu/security/sync/d/d/a/hc;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3931
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    return p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1

    .prologue
    .line 3942
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hc;->m:Lcom/keniu/security/sync/d/d/a/hc;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3951
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->l()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .prologue
    .line 4166
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4356
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3931
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hc;->X()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3931
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hd;->E()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3931
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hc;->X()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3931
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hd;->E()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3931
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hc;->m:Lcom/keniu/security/sync/d/d/a/hc;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3931
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hc;->m:Lcom/keniu/security/sync/d/d/a/hc;

    return-object v0
.end method

.method public final N()I
    .locals 1

    .prologue
    .line 4233
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->y:I

    return v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 3931
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hd;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/hd;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4260
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hc;->b()I

    .line 4261
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4262
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->o:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 4264
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4265
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hc;->R()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 4267
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 4268
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hc;->S()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 4270
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 4271
    iget-boolean v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->r:Z

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(IZ)V

    .line 4273
    :cond_3
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 4274
    const/4 v0, 0x5

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->s:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 4276
    :cond_4
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 4277
    const/4 v0, 0x6

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->t:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 4279
    :cond_5
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 4280
    const/4 v0, 0x7

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->u:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 4282
    :cond_6
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 4283
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->v:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/b/a/n;->b(IJ)V

    .line 4285
    :cond_7
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 4286
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hc;->T()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 4288
    :cond_8
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 4289
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hc;->U()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 4291
    :cond_9
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 4292
    const/16 v0, 0xb

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->y:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 4294
    :cond_a
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hc;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 4295
    return-void
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4251
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->z:B

    .line 4252
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 4255
    :goto_0
    return v0

    .line 4252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4254
    :cond_1
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/hc;->z:B

    move v0, v2

    .line 4255
    goto :goto_0
.end method

.method public final ao_()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4169
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->w:Ljava/lang/Object;

    .line 4170
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4171
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 4179
    :goto_0
    return-object v1

    .line 4173
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 4175
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 4176
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4177
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/hc;->w:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4179
    goto :goto_0
.end method

.method public final ap_()Z
    .locals 2

    .prologue
    .line 4198
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aq_()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4201
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->x:Ljava/lang/Object;

    .line 4202
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4203
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 4211
    :goto_0
    return-object v1

    .line 4205
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 4207
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 4208
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4209
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/hc;->x:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4211
    goto :goto_0
.end method

.method public final ar_()Z
    .locals 2

    .prologue
    .line 4230
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4299
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->A:I

    .line 4300
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4349
    :goto_0
    return v0

    .line 4302
    :cond_0
    const/4 v0, 0x0

    .line 4303
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 4304
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->o:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4307
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 4308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hc;->R()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4311
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 4312
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hc;->S()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4315
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v4, :cond_4

    .line 4316
    iget-boolean v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->r:Z

    invoke-static {}, Lcom/b/a/n;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 4319
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 4320
    const/4 v1, 0x5

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/hc;->s:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4323
    :cond_5
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 4324
    const/4 v1, 0x6

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/hc;->t:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4327
    :cond_6
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 4328
    const/4 v1, 0x7

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/hc;->u:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4331
    :cond_7
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 4332
    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->v:J

    invoke-static {v4, v1, v2}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4335
    :cond_8
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 4336
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hc;->T()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4339
    :cond_9
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 4340
    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hc;->U()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4343
    :cond_a
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 4344
    const/16 v1, 0xb

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/hc;->y:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4347
    :cond_b
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hc;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 4348
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->A:I

    goto/16 :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 3956
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->m()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4039
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1

    .prologue
    .line 4042
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->o:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 4045
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->o:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 4052
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

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

.method public final n()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4055
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->p:Ljava/lang/Object;

    .line 4056
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4057
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 4065
    :goto_0
    return-object v1

    .line 4059
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 4061
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 4062
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4063
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/hc;->p:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4065
    goto :goto_0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 4084
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

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

.method public final p()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4087
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hc;->q:Ljava/lang/Object;

    .line 4088
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4089
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 4097
    :goto_0
    return-object v1

    .line 4091
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 4093
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 4094
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4095
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/hc;->q:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4097
    goto :goto_0
.end method

.method public final q()Z
    .locals 2

    .prologue
    .line 4116
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

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

.method public final r()Z
    .locals 1

    .prologue
    .line 4119
    iget-boolean v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->r:Z

    return v0
.end method

.method public final s()Z
    .locals 2

    .prologue
    .line 4126
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

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

.method public final t()I
    .locals 1

    .prologue
    .line 4129
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->s:I

    return v0
.end method

.method public final u()Z
    .locals 2

    .prologue
    .line 4136
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v()I
    .locals 1

    .prologue
    .line 4139
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->t:I

    return v0
.end method

.method public final w()Z
    .locals 2

    .prologue
    .line 4146
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()I
    .locals 1

    .prologue
    .line 4149
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->u:I

    return v0
.end method

.method public final y()Z
    .locals 2

    .prologue
    .line 4156
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->n:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final z()J
    .locals 2

    .prologue
    .line 4159
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hc;->v:J

    return-wide v0
.end method
