.class public final Lcom/avast/android/generic/internet/c/a/at;
.super Lcom/google/a/n;
.source "MyAvastStatus.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/au;


# instance fields
.field private a:I

.field private b:Lcom/google/a/c;

.field private c:J

.field private d:Lcom/google/a/c;

.field private e:Lcom/google/a/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7133
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 7271
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/at;->b:Lcom/google/a/c;

    .line 7316
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/at;->d:Lcom/google/a/c;

    .line 7340
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/at;->e:Lcom/google/a/c;

    .line 7134
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/at;->f()V

    .line 7135
    return-void
.end method

.method static synthetic e()Lcom/avast/android/generic/internet/c/a/at;
    .locals 1

    .prologue
    .line 7128
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/at;->k()Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 7138
    return-void
.end method

.method private static k()Lcom/avast/android/generic/internet/c/a/at;
    .locals 1

    .prologue
    .line 7140
    new-instance v0, Lcom/avast/android/generic/internet/c/a/at;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/at;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/internet/c/a/at;
    .locals 2

    .prologue
    .line 7157
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/at;->k()Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/at;->d()Lcom/avast/android/generic/internet/c/a/as;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/at;->a(Lcom/avast/android/generic/internet/c/a/as;)Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/avast/android/generic/internet/c/a/at;
    .locals 1
    .parameter

    .prologue
    .line 7303
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    .line 7304
    iput-wide p1, p0, Lcom/avast/android/generic/internet/c/a/at;->c:J

    .line 7306
    return-object p0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/as;)Lcom/avast/android/generic/internet/c/a/at;
    .locals 2
    .parameter

    .prologue
    .line 7207
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/as;->a()Lcom/avast/android/generic/internet/c/a/as;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 7220
    :cond_0
    :goto_0
    return-object p0

    .line 7208
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/as;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7209
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/as;->c()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/at;->a(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/at;

    .line 7211
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/as;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7212
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/as;->e()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/internet/c/a/at;->a(J)Lcom/avast/android/generic/internet/c/a/at;

    .line 7214
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/as;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7215
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/as;->g()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/at;->b(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/at;

    .line 7217
    :cond_4
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/as;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7218
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/as;->i()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/at;->c(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/at;

    goto :goto_0
.end method

.method public a(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/at;
    .locals 1
    .parameter

    .prologue
    .line 7279
    if-nez p1, :cond_0

    .line 7280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7282
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    .line 7283
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/at;->b:Lcom/google/a/c;

    .line 7285
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/at;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7232
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 7233
    sparse-switch v0, :sswitch_data_0

    .line 7238
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/internet/c/a/at;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7240
    :sswitch_0
    return-object p0

    .line 7245
    :sswitch_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    .line 7246
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/at;->b:Lcom/google/a/c;

    goto :goto_0

    .line 7250
    :sswitch_2
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    .line 7251
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/generic/internet/c/a/at;->c:J

    goto :goto_0

    .line 7255
    :sswitch_3
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    .line 7256
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/at;->d:Lcom/google/a/c;

    goto :goto_0

    .line 7260
    :sswitch_4
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    .line 7261
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/at;->e:Lcom/google/a/c;

    goto :goto_0

    .line 7233
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 7128
    check-cast p1, Lcom/avast/android/generic/internet/c/a/as;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/internet/c/a/at;->a(Lcom/avast/android/generic/internet/c/a/as;)Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/generic/internet/c/a/as;
    .locals 1

    .prologue
    .line 7161
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/as;->a()Lcom/avast/android/generic/internet/c/a/as;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/at;
    .locals 1
    .parameter

    .prologue
    .line 7324
    if-nez p1, :cond_0

    .line 7325
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7327
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    .line 7328
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/at;->d:Lcom/google/a/c;

    .line 7330
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7128
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/at;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/as;
    .locals 2

    .prologue
    .line 7165
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/at;->d()Lcom/avast/android/generic/internet/c/a/as;

    move-result-object v0

    .line 7166
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/as;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7167
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/at;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 7169
    :cond_0
    return-object v0
.end method

.method public c(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/at;
    .locals 1
    .parameter

    .prologue
    .line 7348
    if-nez p1, :cond_0

    .line 7349
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7351
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    .line 7352
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/at;->e:Lcom/google/a/c;

    .line 7354
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7128
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/at;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7128
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/at;->a()Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/generic/internet/c/a/as;
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 7183
    new-instance v2, Lcom/avast/android/generic/internet/c/a/as;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/generic/internet/c/a/as;-><init>(Lcom/avast/android/generic/internet/c/a/at;Lcom/avast/android/generic/internet/c/a/ac;)V

    .line 7184
    iget v3, p0, Lcom/avast/android/generic/internet/c/a/at;->a:I

    .line 7185
    const/4 v1, 0x0

    .line 7186
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    .line 7189
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/at;->b:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/as;->a(Lcom/avast/android/generic/internet/c/a/as;Lcom/google/a/c;)Lcom/google/a/c;

    .line 7190
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 7191
    or-int/lit8 v0, v0, 0x2

    .line 7193
    :cond_0
    iget-wide v4, p0, Lcom/avast/android/generic/internet/c/a/at;->c:J

    invoke-static {v2, v4, v5}, Lcom/avast/android/generic/internet/c/a/as;->a(Lcom/avast/android/generic/internet/c/a/as;J)J

    .line 7194
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 7195
    or-int/lit8 v0, v0, 0x4

    .line 7197
    :cond_1
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/at;->d:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/as;->b(Lcom/avast/android/generic/internet/c/a/as;Lcom/google/a/c;)Lcom/google/a/c;

    .line 7198
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 7199
    or-int/lit8 v0, v0, 0x8

    .line 7201
    :cond_2
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/at;->e:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/as;->c(Lcom/avast/android/generic/internet/c/a/as;Lcom/google/a/c;)Lcom/google/a/c;

    .line 7202
    invoke-static {v2, v0}, Lcom/avast/android/generic/internet/c/a/as;->a(Lcom/avast/android/generic/internet/c/a/as;I)I

    .line 7203
    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 7128
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/at;->b()Lcom/avast/android/generic/internet/c/a/as;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 7128
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/at;->a()Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 7128
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/at;->a()Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 7128
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/at;->c()Lcom/avast/android/generic/internet/c/a/as;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 7224
    const/4 v0, 0x1

    return v0
.end method
