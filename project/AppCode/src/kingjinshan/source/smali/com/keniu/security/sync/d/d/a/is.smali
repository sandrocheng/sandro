.class public final Lcom/keniu/security/sync/d/d/a/is;
.super Lcom/b/a/dk;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/iu;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/is;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9624
    new-instance v0, Lcom/keniu/security/sync/d/d/a/is;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/is;-><init>()V

    .line 9625
    sput-object v0, Lcom/keniu/security/sync/d/d/a/is;->c:Lcom/keniu/security/sync/d/d/a/is;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/is;->e:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/is;->f:Ljava/lang/Object;

    .line 9626
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 9164
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 9254
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/is;->g:B

    .line 9283
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/is;->h:I

    .line 9164
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/it;)V
    .locals 1
    .parameter

    .prologue
    .line 9157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/is;-><init>(Lcom/keniu/security/sync/d/d/a/it;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/it;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 9162
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 9254
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/is;->g:B

    .line 9283
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/is;->h:I

    .line 9163
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/is;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9157
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/is;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/is;
    .locals 1
    .parameter

    .prologue
    .line 9312
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/it;->i()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/it;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/keniu/security/sync/d/d/a/it;)Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/is;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9318
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/it;->i()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/it;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/keniu/security/sync/d/d/a/it;)Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/is;
    .locals 1
    .parameter

    .prologue
    .line 9366
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/it;->i()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/it;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/keniu/security/sync/d/d/a/it;)Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/is;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9372
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/it;->i()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/it;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/keniu/security/sync/d/d/a/it;)Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/is;
    .locals 1
    .parameter

    .prologue
    .line 9334
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/it;->i()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/it;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/it;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/keniu/security/sync/d/d/a/it;)Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/is;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9340
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/it;->i()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/it;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/it;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/keniu/security/sync/d/d/a/it;)Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/is;
    .locals 1
    .parameter

    .prologue
    .line 9323
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/it;->i()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/it;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/it;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/keniu/security/sync/d/d/a/it;)Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/is;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9329
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/it;->i()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/it;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/it;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/keniu/security/sync/d/d/a/it;)Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/is;)Lcom/keniu/security/sync/d/d/a/it;
    .locals 1
    .parameter

    .prologue
    .line 9379
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/it;->i()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/keniu/security/sync/d/d/a/is;)Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/is;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9157
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/is;->e:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/is;
    .locals 2
    .parameter

    .prologue
    .line 9345
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/it;->i()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    .line 9346
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/it;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9347
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/keniu/security/sync/d/d/a/it;)Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    .line 9349
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/is;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 9356
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/it;->i()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    .line 9357
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/it;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9358
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/keniu/security/sync/d/d/a/it;)Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    .line 9360
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/it;
    .locals 1
    .parameter

    .prologue
    .line 9386
    new-instance v0, Lcom/keniu/security/sync/d/d/a/it;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/it;-><init>(Lcom/b/a/dp;)V

    .line 9387
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/is;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9157
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/is;->f:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/is;
    .locals 1

    .prologue
    .line 9168
    sget-object v0, Lcom/keniu/security/sync/d/d/a/is;->c:Lcom/keniu/security/sync/d/d/a/is;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 9177
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->F()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n()Z
    .locals 1

    .prologue
    .line 9157
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/is;->j:Z

    return v0
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/is;
    .locals 1

    .prologue
    .line 9172
    sget-object v0, Lcom/keniu/security/sync/d/d/a/is;->c:Lcom/keniu/security/sync/d/d/a/is;

    return-object v0
.end method

.method private p()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 9207
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/is;->e:Ljava/lang/Object;

    .line 9208
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9209
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 9211
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/is;->e:Ljava/lang/Object;

    .line 9214
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private q()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 9239
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/is;->f:Ljava/lang/Object;

    .line 9240
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9241
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 9243
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/is;->f:Ljava/lang/Object;

    .line 9246
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 9251
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/is;->e:Ljava/lang/Object;

    .line 9252
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/is;->f:Ljava/lang/Object;

    .line 9253
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/it;
    .locals 1

    .prologue
    .line 9376
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/it;->i()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/it;
    .locals 1

    .prologue
    .line 9377
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/it;->i()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/it;
    .locals 1

    .prologue
    .line 9381
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/it;->i()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/keniu/security/sync/d/d/a/is;)Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9306
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9157
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/is;->u()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9157
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/it;->i()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9157
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/is;->u()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9157
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/it;->i()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9157
    sget-object v0, Lcom/keniu/security/sync/d/d/a/is;->c:Lcom/keniu/security/sync/d/d/a/is;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9157
    sget-object v0, Lcom/keniu/security/sync/d/d/a/is;->c:Lcom/keniu/security/sync/d/d/a/is;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 9157
    new-instance v0, Lcom/keniu/security/sync/d/d/a/it;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/it;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 9273
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/is;->b()I

    .line 9274
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/is;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 9275
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/is;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 9277
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/is;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 9278
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/is;->q()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 9280
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/is;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 9281
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9256
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/is;->g:B

    .line 9257
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 9268
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 9257
    goto :goto_0

    .line 9259
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/is;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9260
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/is;->g:B

    move v0, v2

    .line 9261
    goto :goto_0

    .line 9263
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/is;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9264
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/is;->g:B

    move v0, v2

    .line 9265
    goto :goto_0

    .line 9267
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/is;->g:B

    move v0, v3

    .line 9268
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 9285
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/is;->h:I

    .line 9286
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9299
    :goto_0
    return v0

    .line 9288
    :cond_0
    const/4 v0, 0x0

    .line 9289
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/is;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 9290
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/is;->p()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 9293
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/is;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 9294
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/is;->q()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9297
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/is;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 9298
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/is;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 9182
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->G()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9190
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/is;->d:I

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
    .line 9193
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/is;->e:Ljava/lang/Object;

    .line 9194
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9195
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 9203
    :goto_0
    return-object v1

    .line 9197
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 9199
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 9200
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9201
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/is;->e:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 9203
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 9222
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/is;->d:I

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
    .line 9225
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/is;->f:Ljava/lang/Object;

    .line 9226
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9227
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 9235
    :goto_0
    return-object v1

    .line 9229
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 9231
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 9232
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9233
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/is;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 9235
    goto :goto_0
.end method
