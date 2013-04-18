.class public final Lcom/keniu/security/sync/d/d/a/ay;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ba;


# static fields
.field public static final a:I = 0x1

.field private static final b:Lcom/keniu/security/sync/d/d/a/ay;

.field private static final g:J


# instance fields
.field private c:I

.field private d:Ljava/lang/Object;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 387
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ay;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ay;-><init>()V

    .line 388
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ay;->b:Lcom/keniu/security/sync/d/d/a/ay;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ay;->d:Ljava/lang/Object;

    .line 389
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 82
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ay;->e:B

    .line 104
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ay;->f:I

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/az;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ay;-><init>(Lcom/keniu/security/sync/d/d/a/az;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/az;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 82
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ay;->e:B

    .line 104
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ay;->f:I

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ay;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ay;->c:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ay;
    .locals 1
    .parameter

    .prologue
    .line 129
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/az;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/az;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/az;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/az;->a(Lcom/keniu/security/sync/d/d/a/az;)Lcom/keniu/security/sync/d/d/a/ay;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ay;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/az;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/az;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/az;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/az;->a(Lcom/keniu/security/sync/d/d/a/az;)Lcom/keniu/security/sync/d/d/a/ay;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ay;
    .locals 1
    .parameter

    .prologue
    .line 183
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/az;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/az;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/az;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/az;->a(Lcom/keniu/security/sync/d/d/a/az;)Lcom/keniu/security/sync/d/d/a/ay;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ay;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/az;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/az;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/az;->a(Lcom/keniu/security/sync/d/d/a/az;)Lcom/keniu/security/sync/d/d/a/ay;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ay;
    .locals 1
    .parameter

    .prologue
    .line 151
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/az;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/az;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/az;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/az;->a(Lcom/keniu/security/sync/d/d/a/az;)Lcom/keniu/security/sync/d/d/a/ay;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ay;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/az;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/az;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/az;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/az;->a(Lcom/keniu/security/sync/d/d/a/az;)Lcom/keniu/security/sync/d/d/a/ay;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/ay;
    .locals 1
    .parameter

    .prologue
    .line 140
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/az;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/az;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/az;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/az;->a(Lcom/keniu/security/sync/d/d/a/az;)Lcom/keniu/security/sync/d/d/a/ay;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ay;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/az;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/az;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/az;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/az;->a(Lcom/keniu/security/sync/d/d/a/az;)Lcom/keniu/security/sync/d/d/a/ay;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/ay;)Lcom/keniu/security/sync/d/d/a/az;
    .locals 1
    .parameter

    .prologue
    .line 196
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/az;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/az;->a(Lcom/keniu/security/sync/d/d/a/ay;)Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ay;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ay;->d:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ay;
    .locals 2
    .parameter

    .prologue
    .line 162
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/az;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/az;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/az;->a(Lcom/keniu/security/sync/d/d/a/az;)Lcom/keniu/security/sync/d/d/a/ay;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ay;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/az;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/az;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/az;->a(Lcom/keniu/security/sync/d/d/a/az;)Lcom/keniu/security/sync/d/d/a/ay;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/az;
    .locals 1
    .parameter

    .prologue
    .line 203
    new-instance v0, Lcom/keniu/security/sync/d/d/a/az;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/az;-><init>(Lcom/b/a/dp;)V

    .line 204
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ay;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ay;->b:Lcom/keniu/security/sync/d/d/a/ay;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->b()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static l()Lcom/keniu/security/sync/d/d/a/az;
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/az;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ay;->j:Z

    return v0
.end method

.method private static n()Lcom/keniu/security/sync/d/d/a/ay;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ay;->b:Lcom/keniu/security/sync/d/d/a/ay;

    return-object v0
.end method

.method private o()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ay;->d:Ljava/lang/Object;

    .line 69
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 70
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ay;->d:Ljava/lang/Object;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ay;->d:Ljava/lang/Object;

    .line 81
    return-void
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/az;
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/az;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/az;
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/az;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/az;->a(Lcom/keniu/security/sync/d/d/a/ay;)Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ay;->r()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/az;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ay;->r()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/az;->l()Lcom/keniu/security/sync/d/d/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ay;->b:Lcom/keniu/security/sync/d/d/a/ay;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ay;->b:Lcom/keniu/security/sync/d/d/a/ay;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 18
    new-instance v0, Lcom/keniu/security/sync/d/d/a/az;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/az;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ay;->b()I

    .line 98
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ay;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ay;->o()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ay;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 102
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 84
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ay;->e:B

    .line 85
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 92
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 85
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ay;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ay;->e:B

    move v0, v3

    .line 89
    goto :goto_0

    .line 91
    :cond_2
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ay;->e:B

    move v0, v2

    .line 92
    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ay;->f:I

    .line 107
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 116
    :goto_0
    return v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 110
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ay;->c:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ay;->o()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ay;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ay;->f:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->c()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 51
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ay;->c:I

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
    .line 54
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ay;->d:Ljava/lang/Object;

    .line 55
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 56
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 64
    :goto_0
    return-object v1

    .line 58
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 60
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ay;->d:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 64
    goto :goto_0
.end method
