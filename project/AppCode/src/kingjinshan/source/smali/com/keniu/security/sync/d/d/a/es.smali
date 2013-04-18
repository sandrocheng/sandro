.class public final Lcom/keniu/security/sync/d/d/a/es;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/eu;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field private static final f:Lcom/keniu/security/sync/d/d/a/es;

.field private static final p:J


# instance fields
.field private g:I

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:I

.field private m:J

.field private n:B

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3843
    new-instance v0, Lcom/keniu/security/sync/d/d/a/es;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/es;-><init>()V

    .line 3844
    sput-object v0, Lcom/keniu/security/sync/d/d/a/es;->f:Lcom/keniu/security/sync/d/d/a/es;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/es;->h:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/es;->i:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/es;->k:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/es;->l:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/keniu/security/sync/d/d/a/es;->m:J

    .line 3845
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3171
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 3316
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/es;->n:B

    .line 3362
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/es;->o:I

    .line 3171
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/et;)V
    .locals 1
    .parameter

    .prologue
    .line 3164
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/es;-><init>(Lcom/keniu/security/sync/d/d/a/et;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/et;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3169
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 3316
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/es;->n:B

    .line 3362
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/es;->o:I

    .line 3170
    return-void
.end method

.method private static A()Lcom/keniu/security/sync/d/d/a/et;
    .locals 1

    .prologue
    .line 3468
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/et;->i()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    return-object v0
.end method

.method private J()Lcom/keniu/security/sync/d/d/a/et;
    .locals 1

    .prologue
    .line 3472
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/et;->i()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/et;->a(Lcom/keniu/security/sync/d/d/a/es;)Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/es;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3164
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/es;->l:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/es;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3164
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/es;->m:J

    return-wide p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/es;
    .locals 1
    .parameter

    .prologue
    .line 3403
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/et;->i()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/et;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/et;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/et;->a(Lcom/keniu/security/sync/d/d/a/et;)Lcom/keniu/security/sync/d/d/a/es;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/es;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3409
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/et;->i()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/et;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/et;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/et;->a(Lcom/keniu/security/sync/d/d/a/et;)Lcom/keniu/security/sync/d/d/a/es;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/es;
    .locals 1
    .parameter

    .prologue
    .line 3457
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/et;->i()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/et;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/et;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/et;->a(Lcom/keniu/security/sync/d/d/a/et;)Lcom/keniu/security/sync/d/d/a/es;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/es;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3463
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/et;->i()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/et;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/et;->a(Lcom/keniu/security/sync/d/d/a/et;)Lcom/keniu/security/sync/d/d/a/es;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/es;
    .locals 1
    .parameter

    .prologue
    .line 3425
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/et;->i()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/et;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/et;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/et;->a(Lcom/keniu/security/sync/d/d/a/et;)Lcom/keniu/security/sync/d/d/a/es;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/es;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3431
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/et;->i()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/et;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/et;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/et;->a(Lcom/keniu/security/sync/d/d/a/et;)Lcom/keniu/security/sync/d/d/a/es;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/es;
    .locals 1
    .parameter

    .prologue
    .line 3414
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/et;->i()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/et;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/et;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/et;->a(Lcom/keniu/security/sync/d/d/a/et;)Lcom/keniu/security/sync/d/d/a/es;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/es;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3420
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/et;->i()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/et;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/et;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/et;->a(Lcom/keniu/security/sync/d/d/a/et;)Lcom/keniu/security/sync/d/d/a/es;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/es;)Lcom/keniu/security/sync/d/d/a/et;
    .locals 1
    .parameter

    .prologue
    .line 3470
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/et;->i()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/et;->a(Lcom/keniu/security/sync/d/d/a/es;)Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/es;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3164
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/es;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/es;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3164
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/es;->g:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/es;
    .locals 2
    .parameter

    .prologue
    .line 3436
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/et;->i()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    .line 3437
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/et;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3438
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/et;->a(Lcom/keniu/security/sync/d/d/a/et;)Lcom/keniu/security/sync/d/d/a/es;

    move-result-object v0

    .line 3440
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/es;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3447
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/et;->i()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    .line 3448
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/et;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3449
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/et;->a(Lcom/keniu/security/sync/d/d/a/et;)Lcom/keniu/security/sync/d/d/a/es;

    move-result-object v0

    .line 3451
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/et;
    .locals 1
    .parameter

    .prologue
    .line 3477
    new-instance v0, Lcom/keniu/security/sync/d/d/a/et;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/et;-><init>(Lcom/b/a/dp;)V

    .line 3478
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/es;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3164
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/es;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/es;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3164
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/es;->k:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/es;
    .locals 1

    .prologue
    .line 3175
    sget-object v0, Lcom/keniu/security/sync/d/d/a/es;->f:Lcom/keniu/security/sync/d/d/a/es;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3184
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->n()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic t()Z
    .locals 1

    .prologue
    .line 3164
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/es;->j:Z

    return v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/es;
    .locals 1

    .prologue
    .line 3179
    sget-object v0, Lcom/keniu/security/sync/d/d/a/es;->f:Lcom/keniu/security/sync/d/d/a/es;

    return-object v0
.end method

.method private v()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/es;->h:Ljava/lang/Object;

    .line 3215
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3216
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 3218
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/es;->h:Ljava/lang/Object;

    .line 3221
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private w()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 3246
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/es;->i:Ljava/lang/Object;

    .line 3247
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3248
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 3250
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/es;->i:Ljava/lang/Object;

    .line 3253
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private x()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 3278
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/es;->k:Ljava/lang/Object;

    .line 3279
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3280
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 3282
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/es;->k:Ljava/lang/Object;

    .line 3285
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 3310
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/es;->h:Ljava/lang/Object;

    .line 3311
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/es;->i:Ljava/lang/Object;

    .line 3312
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/es;->k:Ljava/lang/Object;

    .line 3313
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/es;->l:I

    .line 3314
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/es;->m:J

    .line 3315
    return-void
.end method

.method private static z()Lcom/keniu/security/sync/d/d/a/et;
    .locals 1

    .prologue
    .line 3467
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/et;->i()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3397
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3164
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/es;->J()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3164
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/et;->i()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3164
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/es;->J()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3164
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/et;->i()Lcom/keniu/security/sync/d/d/a/et;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3164
    sget-object v0, Lcom/keniu/security/sync/d/d/a/es;->f:Lcom/keniu/security/sync/d/d/a/es;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3164
    sget-object v0, Lcom/keniu/security/sync/d/d/a/es;->f:Lcom/keniu/security/sync/d/d/a/es;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 3164
    new-instance v0, Lcom/keniu/security/sync/d/d/a/et;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/et;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3343
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/es;->b()I

    .line 3344
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/es;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3345
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/es;->v()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 3347
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/es;->g:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3348
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/es;->w()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 3350
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/es;->g:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 3351
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/es;->x()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 3353
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/es;->g:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 3354
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/es;->l:I

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(II)V

    .line 3356
    :cond_3
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/es;->g:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 3357
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/es;->m:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/n;->b(IJ)V

    .line 3359
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/es;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 3360
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3318
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/es;->n:B

    .line 3319
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 3338
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 3319
    goto :goto_0

    .line 3321
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/es;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3322
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/es;->n:B

    move v0, v2

    .line 3323
    goto :goto_0

    .line 3325
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/es;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3326
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/es;->n:B

    move v0, v2

    .line 3327
    goto :goto_0

    .line 3329
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/es;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3330
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/es;->n:B

    move v0, v2

    .line 3331
    goto :goto_0

    .line 3333
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/es;->p()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3334
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/es;->n:B

    move v0, v2

    .line 3335
    goto :goto_0

    .line 3337
    :cond_5
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/es;->n:B

    move v0, v3

    .line 3338
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3364
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/es;->o:I

    .line 3365
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3390
    :goto_0
    return v0

    .line 3367
    :cond_0
    const/4 v0, 0x0

    .line 3368
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/es;->g:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 3369
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/es;->v()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 3372
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/es;->g:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 3373
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/es;->w()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3376
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/es;->g:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 3377
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/es;->x()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3380
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/es;->g:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 3381
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/es;->l:I

    invoke-static {v4, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3384
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/es;->g:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 3385
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/es;->m:J

    invoke-static {v1, v2, v3}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3388
    :cond_5
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/es;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 3389
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/es;->o:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 3189
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->o()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3197
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/es;->g:I

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
    .line 3200
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/es;->h:Ljava/lang/Object;

    .line 3201
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3202
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 3210
    :goto_0
    return-object v1

    .line 3204
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 3206
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 3207
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3208
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/es;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3210
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 3229
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/es;->g:I

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
    .line 3232
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/es;->i:Ljava/lang/Object;

    .line 3233
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3234
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 3242
    :goto_0
    return-object v1

    .line 3236
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 3238
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 3239
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3240
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/es;->i:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3242
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 3261
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/es;->g:I

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

.method public final o()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3264
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/es;->k:Ljava/lang/Object;

    .line 3265
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3266
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 3274
    :goto_0
    return-object v1

    .line 3268
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 3270
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 3271
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3272
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/es;->k:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3274
    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 3293
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/es;->g:I

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

.method public final q()I
    .locals 1

    .prologue
    .line 3296
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/es;->l:I

    return v0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 3303
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/es;->g:I

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

.method public final s()J
    .locals 2

    .prologue
    .line 3306
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/es;->m:J

    return-wide v0
.end method
