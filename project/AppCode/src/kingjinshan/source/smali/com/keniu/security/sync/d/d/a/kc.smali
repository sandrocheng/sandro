.class public final Lcom/keniu/security/sync/d/d/a/kc;
.super Lcom/b/a/dk;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ke;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/kc;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8699
    new-instance v0, Lcom/keniu/security/sync/d/d/a/kc;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/kc;-><init>()V

    .line 8700
    sput-object v0, Lcom/keniu/security/sync/d/d/a/kc;->d:Lcom/keniu/security/sync/d/d/a/kc;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/kc;->f:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/kc;->g:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/kc;->h:Ljava/lang/Object;

    .line 8701
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 8141
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 8264
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->i:B

    .line 8300
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->k:I

    .line 8141
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/kd;)V
    .locals 1
    .parameter

    .prologue
    .line 8134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/kc;-><init>(Lcom/keniu/security/sync/d/d/a/kd;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/kd;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 8139
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 8264
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->i:B

    .line 8300
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->k:I

    .line 8140
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/kc;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8134
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/kc;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/kc;
    .locals 1
    .parameter

    .prologue
    .line 8333
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kd;->i()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/kd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/keniu/security/sync/d/d/a/kd;)Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8339
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kd;->i()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/kd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/keniu/security/sync/d/d/a/kd;)Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/kc;
    .locals 1
    .parameter

    .prologue
    .line 8387
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kd;->i()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/kd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/keniu/security/sync/d/d/a/kd;)Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8393
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kd;->i()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/kd;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/keniu/security/sync/d/d/a/kd;)Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/kc;
    .locals 1
    .parameter

    .prologue
    .line 8355
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kd;->i()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/kd;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/kd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/keniu/security/sync/d/d/a/kd;)Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8361
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kd;->i()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/kd;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/kd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/keniu/security/sync/d/d/a/kd;)Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/kc;
    .locals 1
    .parameter

    .prologue
    .line 8344
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kd;->i()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/kd;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/kd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/keniu/security/sync/d/d/a/kd;)Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8350
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kd;->i()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/kd;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/kd;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/keniu/security/sync/d/d/a/kd;)Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/kc;)Lcom/keniu/security/sync/d/d/a/kd;
    .locals 1
    .parameter

    .prologue
    .line 8400
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kd;->i()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/keniu/security/sync/d/d/a/kc;)Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/kc;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8134
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/kc;->f:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/kc;
    .locals 2
    .parameter

    .prologue
    .line 8366
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kd;->i()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    .line 8367
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/kd;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8368
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/keniu/security/sync/d/d/a/kd;)Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    .line 8370
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kc;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 8377
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kd;->i()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    .line 8378
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/kd;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8379
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/keniu/security/sync/d/d/a/kd;)Lcom/keniu/security/sync/d/d/a/kc;

    move-result-object v0

    .line 8381
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/kd;
    .locals 1
    .parameter

    .prologue
    .line 8407
    new-instance v0, Lcom/keniu/security/sync/d/d/a/kd;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/kd;-><init>(Lcom/b/a/dp;)V

    .line 8408
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/kc;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8134
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/kc;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/kc;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8134
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/kc;->h:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/kc;
    .locals 1

    .prologue
    .line 8145
    sget-object v0, Lcom/keniu/security/sync/d/d/a/kc;->d:Lcom/keniu/security/sync/d/d/a/kc;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 8154
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->B()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 8134
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/kc;->j:Z

    return v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/kc;
    .locals 1

    .prologue
    .line 8149
    sget-object v0, Lcom/keniu/security/sync/d/d/a/kc;->d:Lcom/keniu/security/sync/d/d/a/kc;

    return-object v0
.end method

.method private r()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 8184
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->f:Ljava/lang/Object;

    .line 8185
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8186
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 8188
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->f:Ljava/lang/Object;

    .line 8191
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private s()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 8216
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->g:Ljava/lang/Object;

    .line 8217
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8218
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 8220
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->g:Ljava/lang/Object;

    .line 8223
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private t()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 8248
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->h:Ljava/lang/Object;

    .line 8249
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8250
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 8252
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->h:Ljava/lang/Object;

    .line 8255
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 8260
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->f:Ljava/lang/Object;

    .line 8261
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->g:Ljava/lang/Object;

    .line 8262
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->h:Ljava/lang/Object;

    .line 8263
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/kd;
    .locals 1

    .prologue
    .line 8397
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kd;->i()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/kd;
    .locals 1

    .prologue
    .line 8398
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kd;->i()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/kd;
    .locals 1

    .prologue
    .line 8402
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kd;->i()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/kd;->a(Lcom/keniu/security/sync/d/d/a/kc;)Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8327
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 8134
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kc;->x()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 8134
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kd;->i()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 8134
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kc;->x()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 8134
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kd;->i()Lcom/keniu/security/sync/d/d/a/kd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 8134
    sget-object v0, Lcom/keniu/security/sync/d/d/a/kc;->d:Lcom/keniu/security/sync/d/d/a/kc;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 8134
    sget-object v0, Lcom/keniu/security/sync/d/d/a/kc;->d:Lcom/keniu/security/sync/d/d/a/kc;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 8134
    new-instance v0, Lcom/keniu/security/sync/d/d/a/kd;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/kd;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 8287
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kc;->b()I

    .line 8288
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8289
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kc;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 8291
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 8292
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kc;->s()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 8294
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 8295
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kc;->t()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 8297
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kc;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 8298
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8266
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->i:B

    .line 8267
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 8282
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 8267
    goto :goto_0

    .line 8269
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kc;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8270
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/kc;->i:B

    move v0, v2

    .line 8271
    goto :goto_0

    .line 8273
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kc;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8274
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/kc;->i:B

    move v0, v2

    .line 8275
    goto :goto_0

    .line 8277
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kc;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8278
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/kc;->i:B

    move v0, v2

    .line 8279
    goto :goto_0

    .line 8281
    :cond_4
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/kc;->i:B

    move v0, v3

    .line 8282
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 8302
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->k:I

    .line 8303
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8320
    :goto_0
    return v0

    .line 8305
    :cond_0
    const/4 v0, 0x0

    .line 8306
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/kc;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 8307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kc;->r()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 8310
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/kc;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 8311
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kc;->s()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8314
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/kc;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 8315
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kc;->t()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8318
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kc;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 8319
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 8159
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->C()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8167
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->e:I

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
    .line 8170
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/kc;->f:Ljava/lang/Object;

    .line 8171
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8172
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 8180
    :goto_0
    return-object v1

    .line 8174
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 8176
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 8177
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8178
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/kc;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8180
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 8199
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->e:I

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
    .line 8202
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/kc;->g:Ljava/lang/Object;

    .line 8203
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8204
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 8212
    :goto_0
    return-object v1

    .line 8206
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 8208
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 8209
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8210
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/kc;->g:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8212
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 8231
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kc;->e:I

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
    .line 8234
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/kc;->h:Ljava/lang/Object;

    .line 8235
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8236
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 8244
    :goto_0
    return-object v1

    .line 8238
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 8240
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 8241
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8242
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/kc;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8244
    goto :goto_0
.end method
