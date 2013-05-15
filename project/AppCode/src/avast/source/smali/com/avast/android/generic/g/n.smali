.class public final Lcom/avast/android/generic/g/n;
.super Lcom/google/a/l;
.source "FeedbackProto.java"

# interfaces
.implements Lcom/avast/android/generic/g/p;


# static fields
.field private static final a:Lcom/avast/android/generic/g/n;


# instance fields
.field private b:I

.field private c:Lcom/google/a/c;

.field private d:Lcom/avast/android/generic/g/q;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Lcom/avast/android/generic/g/c;

.field private i:Lcom/google/a/c;

.field private j:Lcom/google/a/c;

.field private k:B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 886
    new-instance v0, Lcom/avast/android/generic/g/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/g/n;-><init>(Z)V

    sput-object v0, Lcom/avast/android/generic/g/n;->a:Lcom/avast/android/generic/g/n;

    .line 887
    sget-object v0, Lcom/avast/android/generic/g/n;->a:Lcom/avast/android/generic/g/n;

    invoke-direct {v0}, Lcom/avast/android/generic/g/n;->z()V

    .line 888
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/generic/g/o;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 98
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 268
    iput-byte v0, p0, Lcom/avast/android/generic/g/n;->k:B

    .line 306
    iput v0, p0, Lcom/avast/android/generic/g/n;->l:I

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/g/o;Lcom/avast/android/generic/g/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/avast/android/generic/g/n;-><init>(Lcom/avast/android/generic/g/o;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 100
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 268
    iput-byte v0, p0, Lcom/avast/android/generic/g/n;->k:B

    .line 306
    iput v0, p0, Lcom/avast/android/generic/g/n;->l:I

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/g/n;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput p1, p0, Lcom/avast/android/generic/g/n;->b:I

    return p1
.end method

.method static synthetic a(Lcom/avast/android/generic/g/n;Lcom/avast/android/generic/g/c;)Lcom/avast/android/generic/g/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/avast/android/generic/g/n;->h:Lcom/avast/android/generic/g/c;

    return-object p1
.end method

.method public static a()Lcom/avast/android/generic/g/n;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/avast/android/generic/g/n;->a:Lcom/avast/android/generic/g/n;

    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/g/n;)Lcom/avast/android/generic/g/o;
    .locals 1
    .parameter

    .prologue
    .line 425
    invoke-static {}, Lcom/avast/android/generic/g/n;->r()Lcom/avast/android/generic/g/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/g/o;->a(Lcom/avast/android/generic/g/n;)Lcom/avast/android/generic/g/o;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/g/n;Lcom/avast/android/generic/g/q;)Lcom/avast/android/generic/g/q;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/avast/android/generic/g/n;->d:Lcom/avast/android/generic/g/q;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/g/n;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/avast/android/generic/g/n;->c:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/g/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/avast/android/generic/g/n;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/generic/g/n;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/avast/android/generic/g/n;->i:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/generic/g/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/avast/android/generic/g/n;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/android/generic/g/n;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/avast/android/generic/g/n;->j:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/android/generic/g/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/avast/android/generic/g/n;->g:Ljava/lang/Object;

    return-object p1
.end method

.method public static r()Lcom/avast/android/generic/g/o;
    .locals 1

    .prologue
    .line 422
    invoke-static {}, Lcom/avast/android/generic/g/o;->k()Lcom/avast/android/generic/g/o;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/avast/android/generic/g/n;->e:Ljava/lang/Object;

    .line 154
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 155
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 157
    iput-object v0, p0, Lcom/avast/android/generic/g/n;->e:Ljava/lang/Object;

    .line 160
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private x()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/avast/android/generic/g/n;->f:Ljava/lang/Object;

    .line 186
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 187
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 189
    iput-object v0, p0, Lcom/avast/android/generic/g/n;->f:Ljava/lang/Object;

    .line 192
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private y()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/avast/android/generic/g/n;->g:Ljava/lang/Object;

    .line 218
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 219
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 221
    iput-object v0, p0, Lcom/avast/android/generic/g/n;->g:Ljava/lang/Object;

    .line 224
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private z()V
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/n;->c:Lcom/google/a/c;

    .line 260
    sget-object v0, Lcom/avast/android/generic/g/q;->a:Lcom/avast/android/generic/g/q;

    iput-object v0, p0, Lcom/avast/android/generic/g/n;->d:Lcom/avast/android/generic/g/q;

    .line 261
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/g/n;->e:Ljava/lang/Object;

    .line 262
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/g/n;->f:Ljava/lang/Object;

    .line 263
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/g/n;->g:Ljava/lang/Object;

    .line 264
    invoke-static {}, Lcom/avast/android/generic/g/c;->a()Lcom/avast/android/generic/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/g/n;->h:Lcom/avast/android/generic/g/c;

    .line 265
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/n;->i:Lcom/google/a/c;

    .line 266
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/n;->j:Lcom/google/a/c;

    .line 267
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/avast/android/generic/g/n;->t()Lcom/avast/android/generic/g/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/avast/android/generic/g/n;->s()Lcom/avast/android/generic/g/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 279
    invoke-virtual {p0}, Lcom/avast/android/generic/g/n;->w()I

    .line 280
    iget v0, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/avast/android/generic/g/n;->c:Lcom/google/a/c;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 283
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 284
    iget-object v0, p0, Lcom/avast/android/generic/g/n;->d:Lcom/avast/android/generic/g/q;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/q;->a()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->c(II)V

    .line 286
    :cond_1
    iget v0, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 287
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/avast/android/generic/g/n;->u()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 289
    :cond_2
    iget v0, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 290
    invoke-direct {p0}, Lcom/avast/android/generic/g/n;->x()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 292
    :cond_3
    iget v0, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 293
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/avast/android/generic/g/n;->y()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 295
    :cond_4
    iget v0, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 296
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/avast/android/generic/g/n;->h:Lcom/avast/android/generic/g/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 298
    :cond_5
    iget v0, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 299
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/avast/android/generic/g/n;->i:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 301
    :cond_6
    iget v0, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 302
    iget-object v0, p0, Lcom/avast/android/generic/g/n;->j:Lcom/google/a/c;

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 304
    :cond_7
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 116
    iget v1, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/avast/android/generic/g/n;->c:Lcom/google/a/c;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/avast/android/generic/g/n;->b:I

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

.method public e()Lcom/avast/android/generic/g/q;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/avast/android/generic/g/n;->d:Lcom/avast/android/generic/g/q;

    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/avast/android/generic/g/n;->b:I

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
    .line 139
    iget-object v0, p0, Lcom/avast/android/generic/g/n;->e:Ljava/lang/Object;

    .line 140
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 141
    check-cast v0, Ljava/lang/String;

    .line 149
    :goto_0
    return-object v0

    .line 143
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 145
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iput-object v1, p0, Lcom/avast/android/generic/g/n;->e:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 149
    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lcom/avast/android/generic/g/n;->b:I

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

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/avast/android/generic/g/n;->f:Ljava/lang/Object;

    .line 172
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 173
    check-cast v0, Ljava/lang/String;

    .line 181
    :goto_0
    return-object v0

    .line 175
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 177
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iput-object v1, p0, Lcom/avast/android/generic/g/n;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 181
    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/avast/android/generic/g/n;->b:I

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

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/avast/android/generic/g/n;->g:Ljava/lang/Object;

    .line 204
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 205
    check-cast v0, Ljava/lang/String;

    .line 213
    :goto_0
    return-object v0

    .line 207
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 209
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iput-object v1, p0, Lcom/avast/android/generic/g/n;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 213
    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 232
    iget v0, p0, Lcom/avast/android/generic/g/n;->b:I

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

.method public m()Lcom/avast/android/generic/g/c;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/avast/android/generic/g/n;->h:Lcom/avast/android/generic/g/c;

    return-object v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Lcom/avast/android/generic/g/n;->b:I

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

.method public o()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/avast/android/generic/g/n;->i:Lcom/google/a/c;

    return-object v0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 252
    iget v0, p0, Lcom/avast/android/generic/g/n;->b:I

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

.method public q()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/avast/android/generic/g/n;->j:Lcom/google/a/c;

    return-object v0
.end method

.method public s()Lcom/avast/android/generic/g/o;
    .locals 1

    .prologue
    .line 423
    invoke-static {}, Lcom/avast/android/generic/g/n;->r()Lcom/avast/android/generic/g/o;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/avast/android/generic/g/o;
    .locals 1

    .prologue
    .line 427
    invoke-static {p0}, Lcom/avast/android/generic/g/n;->a(Lcom/avast/android/generic/g/n;)Lcom/avast/android/generic/g/o;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 270
    iget-byte v1, p0, Lcom/avast/android/generic/g/n;->k:B

    .line 271
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 274
    :goto_0
    return v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/generic/g/n;->k:B

    goto :goto_0
.end method

.method public w()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 308
    iget v0, p0, Lcom/avast/android/generic/g/n;->l:I

    .line 309
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 345
    :goto_0
    return v0

    .line 311
    :cond_0
    const/4 v0, 0x0

    .line 312
    iget v1, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 313
    iget-object v1, p0, Lcom/avast/android/generic/g/n;->c:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 316
    :cond_1
    iget v1, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 317
    iget-object v1, p0, Lcom/avast/android/generic/g/n;->d:Lcom/avast/android/generic/g/q;

    invoke-virtual {v1}, Lcom/avast/android/generic/g/q;->a()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    :cond_2
    iget v1, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 321
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/avast/android/generic/g/n;->u()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 324
    :cond_3
    iget v1, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 325
    invoke-direct {p0}, Lcom/avast/android/generic/g/n;->x()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    :cond_4
    iget v1, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 329
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/avast/android/generic/g/n;->y()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    :cond_5
    iget v1, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 333
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/avast/android/generic/g/n;->h:Lcom/avast/android/generic/g/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    :cond_6
    iget v1, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 337
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/avast/android/generic/g/n;->i:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    :cond_7
    iget v1, p0, Lcom/avast/android/generic/g/n;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 341
    iget-object v1, p0, Lcom/avast/android/generic/g/n;->j:Lcom/google/a/c;

    invoke-static {v5, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 344
    :cond_8
    iput v0, p0, Lcom/avast/android/generic/g/n;->l:I

    goto/16 :goto_0
.end method
