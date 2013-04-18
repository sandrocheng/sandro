.class public final Lcom/keniu/security/sync/d/d/a/o;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/q;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field private static final g:Lcom/keniu/security/sync/d/d/a/o;

.field private static final r:J


# instance fields
.field private h:I

.field private i:Ljava/lang/Object;

.field private k:Lcom/keniu/security/sync/d/d/a/gn;

.field private l:Ljava/lang/Object;

.field private m:I

.field private n:J

.field private o:I

.field private p:B

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 15828
    new-instance v0, Lcom/keniu/security/sync/d/d/a/o;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/o;-><init>()V

    .line 15829
    sput-object v0, Lcom/keniu/security/sync/d/d/a/o;->g:Lcom/keniu/security/sync/d/d/a/o;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/o;->i:Ljava/lang/Object;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/o;->k:Lcom/keniu/security/sync/d/d/a/gn;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/o;->l:Ljava/lang/Object;

    iput v3, v0, Lcom/keniu/security/sync/d/d/a/o;->m:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/keniu/security/sync/d/d/a/o;->n:J

    iput v3, v0, Lcom/keniu/security/sync/d/d/a/o;->o:I

    .line 15830
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 15047
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 15184
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/o;->p:B

    .line 15237
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/o;->q:I

    .line 15047
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/p;)V
    .locals 1
    .parameter

    .prologue
    .line 15040
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/o;-><init>(Lcom/keniu/security/sync/d/d/a/p;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/p;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 15045
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 15184
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/o;->p:B

    .line 15237
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/o;->q:I

    .line 15046
    return-void
.end method

.method private A()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 15135
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/o;->l:Ljava/lang/Object;

    .line 15136
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15137
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 15139
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/o;->l:Ljava/lang/Object;

    .line 15142
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private J()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15177
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/o;->i:Ljava/lang/Object;

    .line 15178
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/o;->k:Lcom/keniu/security/sync/d/d/a/gn;

    .line 15179
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/o;->l:Ljava/lang/Object;

    .line 15180
    iput v2, p0, Lcom/keniu/security/sync/d/d/a/o;->m:I

    .line 15181
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/o;->n:J

    .line 15182
    iput v2, p0, Lcom/keniu/security/sync/d/d/a/o;->o:I

    .line 15183
    return-void
.end method

.method private static K()Lcom/keniu/security/sync/d/d/a/p;
    .locals 1

    .prologue
    .line 15347
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/p;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    return-object v0
.end method

.method private L()Lcom/keniu/security/sync/d/d/a/p;
    .locals 1

    .prologue
    .line 15351
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/p;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/p;->a(Lcom/keniu/security/sync/d/d/a/o;)Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/o;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15040
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/o;->m:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/o;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15040
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/o;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/o;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15040
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/o;->k:Lcom/keniu/security/sync/d/d/a/gn;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/o;
    .locals 1
    .parameter

    .prologue
    .line 15282
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/p;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/p;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/p;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/p;->a(Lcom/keniu/security/sync/d/d/a/p;)Lcom/keniu/security/sync/d/d/a/o;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/o;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15288
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/p;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/p;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/p;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/p;->a(Lcom/keniu/security/sync/d/d/a/p;)Lcom/keniu/security/sync/d/d/a/o;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/o;
    .locals 1
    .parameter

    .prologue
    .line 15336
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/p;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/p;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/p;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/p;->a(Lcom/keniu/security/sync/d/d/a/p;)Lcom/keniu/security/sync/d/d/a/o;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/o;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15342
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/p;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/p;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/p;->a(Lcom/keniu/security/sync/d/d/a/p;)Lcom/keniu/security/sync/d/d/a/o;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/o;
    .locals 1
    .parameter

    .prologue
    .line 15304
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/p;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/p;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/p;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/p;->a(Lcom/keniu/security/sync/d/d/a/p;)Lcom/keniu/security/sync/d/d/a/o;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/o;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15310
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/p;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/p;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/p;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/p;->a(Lcom/keniu/security/sync/d/d/a/p;)Lcom/keniu/security/sync/d/d/a/o;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/o;
    .locals 1
    .parameter

    .prologue
    .line 15293
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/p;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/p;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/p;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/p;->a(Lcom/keniu/security/sync/d/d/a/p;)Lcom/keniu/security/sync/d/d/a/o;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/o;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15299
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/p;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/p;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/p;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/p;->a(Lcom/keniu/security/sync/d/d/a/p;)Lcom/keniu/security/sync/d/d/a/o;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/o;)Lcom/keniu/security/sync/d/d/a/p;
    .locals 1
    .parameter

    .prologue
    .line 15349
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/p;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/p;->a(Lcom/keniu/security/sync/d/d/a/o;)Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/o;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15040
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/o;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/o;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15040
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/o;->o:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/o;
    .locals 2
    .parameter

    .prologue
    .line 15315
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/p;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    .line 15316
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/p;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15317
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/p;->a(Lcom/keniu/security/sync/d/d/a/p;)Lcom/keniu/security/sync/d/d/a/o;

    move-result-object v0

    .line 15319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/o;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15326
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/p;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    .line 15327
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/p;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15328
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/p;->a(Lcom/keniu/security/sync/d/d/a/p;)Lcom/keniu/security/sync/d/d/a/o;

    move-result-object v0

    .line 15330
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/p;
    .locals 1
    .parameter

    .prologue
    .line 15356
    new-instance v0, Lcom/keniu/security/sync/d/d/a/p;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/p;-><init>(Lcom/b/a/dp;)V

    .line 15357
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/o;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15040
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/o;->l:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/o;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15040
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

    return p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/o;
    .locals 1

    .prologue
    .line 15051
    sget-object v0, Lcom/keniu/security/sync/d/d/a/o;->g:Lcom/keniu/security/sync/d/d/a/o;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 15060
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->T()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static w()Lcom/keniu/security/sync/d/d/a/p;
    .locals 1

    .prologue
    .line 15346
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/p;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    return-object v0
.end method

.method static synthetic x()Z
    .locals 1

    .prologue
    .line 15040
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/o;->j:Z

    return v0
.end method

.method private static y()Lcom/keniu/security/sync/d/d/a/o;
    .locals 1

    .prologue
    .line 15055
    sget-object v0, Lcom/keniu/security/sync/d/d/a/o;->g:Lcom/keniu/security/sync/d/d/a/o;

    return-object v0
.end method

.method private z()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 15090
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/o;->i:Ljava/lang/Object;

    .line 15091
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15092
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 15094
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/o;->i:Ljava/lang/Object;

    .line 15097
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
    .line 15276
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 15040
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/o;->L()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 15040
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/p;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 15040
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/o;->L()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 15040
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/p;->w()Lcom/keniu/security/sync/d/d/a/p;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 15040
    sget-object v0, Lcom/keniu/security/sync/d/d/a/o;->g:Lcom/keniu/security/sync/d/d/a/o;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 15040
    sget-object v0, Lcom/keniu/security/sync/d/d/a/o;->g:Lcom/keniu/security/sync/d/d/a/o;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 15040
    new-instance v0, Lcom/keniu/security/sync/d/d/a/p;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/p;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 15215
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/o;->b()I

    .line 15216
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 15217
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/o;->z()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 15219
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 15220
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/o;->k:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 15222
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 15223
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/o;->A()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 15225
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 15226
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/o;->m:I

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(II)V

    .line 15228
    :cond_3
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 15229
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/o;->n:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/n;->b(IJ)V

    .line 15231
    :cond_4
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 15232
    const/4 v0, 0x6

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/o;->o:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 15234
    :cond_5
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/o;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 15235
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15186
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/o;->p:B

    .line 15187
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 15210
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 15187
    goto :goto_0

    .line 15189
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/o;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15190
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/o;->p:B

    move v0, v2

    .line 15191
    goto :goto_0

    .line 15193
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/o;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 15194
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/o;->p:B

    move v0, v2

    .line 15195
    goto :goto_0

    .line 15197
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/o;->o()Z

    move-result v0

    if-nez v0, :cond_4

    .line 15198
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/o;->p:B

    move v0, v2

    .line 15199
    goto :goto_0

    .line 15201
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/o;->q()Z

    move-result v0

    if-nez v0, :cond_5

    .line 15202
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/o;->p:B

    move v0, v2

    .line 15203
    goto :goto_0

    .line 15205
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/o;->k:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15206
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/o;->p:B

    move v0, v2

    .line 15207
    goto :goto_0

    .line 15209
    :cond_6
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/o;->p:B

    move v0, v3

    .line 15210
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 15239
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/o;->q:I

    .line 15240
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 15269
    :goto_0
    return v0

    .line 15242
    :cond_0
    const/4 v0, 0x0

    .line 15243
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 15244
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/o;->z()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 15247
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 15248
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/o;->k:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15251
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 15252
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/o;->A()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15255
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 15256
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/o;->m:I

    invoke-static {v4, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15259
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 15260
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/o;->n:J

    invoke-static {v1, v2, v3}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 15263
    :cond_5
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 15264
    const/4 v1, 0x6

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/o;->o:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15267
    :cond_6
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/o;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 15268
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/o;->q:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 15065
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->U()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 15073
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

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
    .line 15076
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/o;->i:Ljava/lang/Object;

    .line 15077
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15078
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 15086
    :goto_0
    return-object v1

    .line 15080
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 15082
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 15083
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15084
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/o;->i:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15086
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 15105
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

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

.method public final m()Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1

    .prologue
    .line 15108
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/o;->k:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final n()Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1

    .prologue
    .line 15111
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/o;->k:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 15118
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

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
    .line 15121
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/o;->l:Ljava/lang/Object;

    .line 15122
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15123
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 15131
    :goto_0
    return-object v1

    .line 15125
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 15127
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 15128
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15129
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/o;->l:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15131
    goto :goto_0
.end method

.method public final q()Z
    .locals 2

    .prologue
    .line 15150
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

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

.method public final r()I
    .locals 1

    .prologue
    .line 15153
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/o;->m:I

    return v0
.end method

.method public final s()Z
    .locals 2

    .prologue
    .line 15160
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

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

.method public final t()J
    .locals 2

    .prologue
    .line 15163
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/o;->n:J

    return-wide v0
.end method

.method public final u()Z
    .locals 2

    .prologue
    .line 15170
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/o;->h:I

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
    .line 15173
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/o;->o:I

    return v0
.end method
