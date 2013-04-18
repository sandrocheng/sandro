.class public final Lcom/keniu/security/sync/d/d/a/hj;
.super Lcom/b/a/dk;
.source "Fudsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/hl;


# static fields
.field public static final a:I = 0x1

.field private static final b:Lcom/keniu/security/sync/d/d/a/hj;

.field private static final g:J


# instance fields
.field private c:I

.field private d:Lcom/keniu/security/sync/d/d/a/gn;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 444
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hj;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hj;-><init>()V

    .line 445
    sput-object v0, Lcom/keniu/security/sync/d/d/a/hj;->b:Lcom/keniu/security/sync/d/d/a/hj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/hj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 446
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 26
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 64
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hj;->e:B

    .line 90
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hj;->f:I

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/hk;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/hj;-><init>(Lcom/keniu/security/sync/d/d/a/hk;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/hk;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 24
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 64
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hj;->e:B

    .line 90
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hj;->f:I

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hj;->c:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hj;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/hj;
    .locals 1
    .parameter

    .prologue
    .line 115
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hk;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hk;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/hk;)Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hk;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hk;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/hk;)Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/hj;
    .locals 1
    .parameter

    .prologue
    .line 169
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hk;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hk;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/hk;)Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hk;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hk;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/hk;)Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hj;
    .locals 1
    .parameter

    .prologue
    .line 137
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hk;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hk;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/hk;)Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hk;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hk;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hk;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/hk;)Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/hj;
    .locals 1
    .parameter

    .prologue
    .line 126
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hk;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hk;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hk;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/hk;)Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hk;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hk;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hk;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/hk;)Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/hj;)Lcom/keniu/security/sync/d/d/a/hk;
    .locals 1
    .parameter

    .prologue
    .line 182
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hk;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/hj;)Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hj;
    .locals 2
    .parameter

    .prologue
    .line 148
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hk;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hk;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/hk;)Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hj;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hk;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    .line 160
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/hk;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/hk;)Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/hk;
    .locals 1
    .parameter

    .prologue
    .line 189
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hk;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/hk;-><init>(Lcom/b/a/dp;)V

    .line 190
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/hj;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hj;->b:Lcom/keniu/security/sync/d/d/a/hj;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->b()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static m()Lcom/keniu/security/sync/d/d/a/hk;
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hk;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/hj;->j:Z

    return v0
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/hj;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hj;->b:Lcom/keniu/security/sync/d/d/a/hj;

    return-object v0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 63
    return-void
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/hk;
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hk;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/hk;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hk;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/hj;)Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hj;->r()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hk;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hj;->r()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hk;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hj;->b:Lcom/keniu/security/sync/d/d/a/hj;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/keniu/security/sync/d/d/a/hj;->b:Lcom/keniu/security/sync/d/d/a/hj;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 19
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hk;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/hk;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hj;->b()I

    .line 84
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hj;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hj;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 88
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/hj;->e:B

    .line 67
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 78
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 67
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hj;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/hj;->e:B

    move v0, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/hj;->e:B

    move v0, v2

    .line 75
    goto :goto_0

    .line 77
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/hj;->e:B

    move v0, v3

    .line 78
    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 92
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hj;->f:I

    .line 93
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 102
    :goto_0
    return v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 96
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hj;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 97
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hj;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hj;->f:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->c()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 52
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hj;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method
