.class public final Lcom/keniu/security/sync/d/d/a/ge;
.super Lcom/b/a/dk;
.source "Common.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/gg;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/ge;

.field private static final i:J


# instance fields
.field private d:I

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 444
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ge;-><init>()V

    .line 445
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ge;->c:Lcom/keniu/security/sync/d/d/a/ge;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/ge;->e:I

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ge;->f:Ljava/lang/Object;

    .line 446
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 97
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->g:B

    .line 122
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->h:I

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/gf;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ge;-><init>(Lcom/keniu/security/sync/d/d/a/gf;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/gf;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 97
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->g:B

    .line 122
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->h:I

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ge;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ge;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1
    .parameter

    .prologue
    .line 151
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gf;->o()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gf;->o()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1
    .parameter

    .prologue
    .line 205
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gf;->o()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gf;->o()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1
    .parameter

    .prologue
    .line 173
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gf;->o()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gf;->o()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1
    .parameter

    .prologue
    .line 162
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gf;->o()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gf;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gf;->o()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1
    .parameter

    .prologue
    .line 218
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gf;->o()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ge;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ge;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/ge;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ge;->d:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 2
    .parameter

    .prologue
    .line 184
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gf;->o()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gf;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gf;->o()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    .line 196
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1
    .parameter

    .prologue
    .line 225
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gf;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/gf;-><init>(Lcom/b/a/dp;)V

    .line 226
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ge;->c:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->b()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static n()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gf;->o()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ge;->j:Z

    return v0
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ge;->c:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method private q()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->f:Ljava/lang/Object;

    .line 83
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 84
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->f:Ljava/lang/Object;

    .line 89
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->e:I

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->f:Ljava/lang/Object;

    .line 96
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gf;->o()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gf;->o()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ge;->t()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gf;->o()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ge;->t()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gf;->o()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ge;->c:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ge;->c:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 22
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gf;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 112
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ge;->b()I

    .line 113
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 114
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->e:I

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(II)V

    .line 116
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ge;->q()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ge;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 120
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 99
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->g:B

    .line 100
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 107
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 100
    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ge;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ge;->g:B

    move v0, v3

    .line 104
    goto :goto_0

    .line 106
    :cond_2
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ge;->g:B

    move v0, v2

    .line 107
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 124
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->h:I

    .line 125
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 138
    :goto_0
    return v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 128
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ge;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 129
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->e:I

    invoke-static {v2, v0}, Lcom/b/a/n;->d(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 132
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ge;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 133
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ge;->q()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ge;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->c()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 55
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->e:I

    return v0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ge;->d:I

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
    .line 68
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ge;->f:Ljava/lang/Object;

    .line 69
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 70
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 78
    :goto_0
    return-object v1

    .line 72
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 74
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/ge;->f:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 78
    goto :goto_0
.end method
