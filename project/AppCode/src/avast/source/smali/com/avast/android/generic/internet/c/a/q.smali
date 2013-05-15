.class public final Lcom/avast/android/generic/internet/c/a/q;
.super Lcom/google/a/l;
.source "MyAvastPairing.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/s;


# static fields
.field private static final a:Lcom/avast/android/generic/internet/c/a/q;


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/Object;

.field private j:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 777
    new-instance v0, Lcom/avast/android/generic/internet/c/a/q;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/internet/c/a/q;-><init>(Z)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/q;->a:Lcom/avast/android/generic/internet/c/a/q;

    .line 778
    sget-object v0, Lcom/avast/android/generic/internet/c/a/q;->a:Lcom/avast/android/generic/internet/c/a/q;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/q;->y()V

    .line 779
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/generic/internet/c/a/r;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 47
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 228
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/q;->j:B

    .line 263
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/q;->k:I

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/internet/c/a/r;Lcom/avast/android/generic/internet/c/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/c/a/q;-><init>(Lcom/avast/android/generic/internet/c/a/r;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 49
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 228
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/q;->j:B

    .line 263
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/q;->k:I

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/q;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

    return p1
.end method

.method public static a()Lcom/avast/android/generic/internet/c/a/q;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/avast/android/generic/internet/c/a/q;->a:Lcom/avast/android/generic/internet/c/a/q;

    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/internet/c/a/q;)Lcom/avast/android/generic/internet/c/a/r;
    .locals 1
    .parameter

    .prologue
    .line 378
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/q;->p()Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/internet/c/a/r;->a(Lcom/avast/android/generic/internet/c/a/q;)Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/q;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/q;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/q;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/q;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/q;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/q;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/q;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/q;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/avast/android/generic/internet/c/a/q;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/q;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/android/generic/internet/c/a/q;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/q;->h:Z

    return p1
.end method

.method static synthetic d(Lcom/avast/android/generic/internet/c/a/q;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/q;->i:Ljava/lang/Object;

    return-object p1
.end method

.method public static p()Lcom/avast/android/generic/internet/c/a/r;
    .locals 1

    .prologue
    .line 375
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/r;->e()Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    return-object v0
.end method

.method private s()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/q;->c:Ljava/lang/Object;

    .line 83
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 84
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/q;->c:Ljava/lang/Object;

    .line 89
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private t()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/q;->d:Ljava/lang/Object;

    .line 115
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 116
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/q;->d:Ljava/lang/Object;

    .line 121
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private u()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/q;->e:Ljava/lang/Object;

    .line 147
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 148
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 150
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/q;->e:Ljava/lang/Object;

    .line 153
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private x()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/q;->i:Ljava/lang/Object;

    .line 209
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 210
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 212
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/q;->i:Ljava/lang/Object;

    .line 215
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private y()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/q;->c:Ljava/lang/Object;

    .line 221
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/q;->d:Ljava/lang/Object;

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/q;->e:Ljava/lang/Object;

    .line 223
    iput-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/q;->f:Z

    .line 224
    iput-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/q;->g:Z

    .line 225
    iput-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/q;->h:Z

    .line 226
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/q;->i:Ljava/lang/Object;

    .line 227
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/q;->r()Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/q;->q()Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 239
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/q;->w()I

    .line 240
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/q;->s()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 243
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/q;->t()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 246
    :cond_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 247
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/q;->u()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 249
    :cond_2
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 250
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/q;->f:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(IZ)V

    .line 252
    :cond_3
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 253
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/q;->g:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 255
    :cond_4
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 256
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/q;->h:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 258
    :cond_5
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 259
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/q;->x()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 261
    :cond_6
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 65
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/q;->c:Ljava/lang/Object;

    .line 69
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 70
    check-cast v0, Ljava/lang/String;

    .line 78
    :goto_0
    return-object v0

    .line 72
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 74
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/q;->c:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 78
    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

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

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/q;->d:Ljava/lang/Object;

    .line 101
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Ljava/lang/String;

    .line 110
    :goto_0
    return-object v0

    .line 104
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 106
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/q;->d:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 110
    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

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

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/q;->e:Ljava/lang/Object;

    .line 133
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 134
    check-cast v0, Ljava/lang/String;

    .line 142
    :goto_0
    return-object v0

    .line 136
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 138
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/q;->e:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 142
    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

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

.method public i()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/q;->f:Z

    return v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

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

.method public k()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/q;->g:Z

    return v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

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

.method public m()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/q;->h:Z

    return v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 191
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

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

.method public o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/q;->i:Ljava/lang/Object;

    .line 195
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 196
    check-cast v0, Ljava/lang/String;

    .line 204
    :goto_0
    return-object v0

    .line 198
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 200
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/q;->i:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 204
    goto :goto_0
.end method

.method public q()Lcom/avast/android/generic/internet/c/a/r;
    .locals 1

    .prologue
    .line 376
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/q;->p()Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/avast/android/generic/internet/c/a/r;
    .locals 1

    .prologue
    .line 380
    invoke-static {p0}, Lcom/avast/android/generic/internet/c/a/q;->a(Lcom/avast/android/generic/internet/c/a/q;)Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 230
    iget-byte v1, p0, Lcom/avast/android/generic/internet/c/a/q;->j:B

    .line 231
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 234
    :goto_0
    return v0

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/q;->j:B

    goto :goto_0
.end method

.method public w()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 265
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/q;->k:I

    .line 266
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 298
    :goto_0
    return v0

    .line 268
    :cond_0
    const/4 v0, 0x0

    .line 269
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 270
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/q;->s()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 273
    :cond_1
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 274
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/q;->t()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 277
    :cond_2
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 278
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/q;->u()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 281
    :cond_3
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 282
    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/q;->f:Z

    invoke-static {v4, v1}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 285
    :cond_4
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 286
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/avast/android/generic/internet/c/a/q;->g:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 289
    :cond_5
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 290
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/avast/android/generic/internet/c/a/q;->h:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    :cond_6
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/q;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 294
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/q;->x()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    :cond_7
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/q;->k:I

    goto :goto_0
.end method
