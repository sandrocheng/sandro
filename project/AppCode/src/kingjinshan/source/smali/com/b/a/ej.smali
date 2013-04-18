.class public abstract Lcom/b/a/ej;
.super Lcom/b/a/ef;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/b/a/el;


# instance fields
.field private final a:Lcom/b/a/dh;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/ef;-><init>(B)V

    .line 133
    invoke-static {}, Lcom/b/a/dh;->a()Lcom/b/a/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ej;->a:Lcom/b/a/dh;

    .line 134
    return-void
.end method

.method private constructor <init>(Lcom/b/a/ei;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/ef;-><init>(B)V

    .line 137
    invoke-static {p1}, Lcom/b/a/ei;->a(Lcom/b/a/ei;)Lcom/b/a/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ej;->a:Lcom/b/a/dh;

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/b/a/ej;)Lcom/b/a/dh;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/b/a/ej;->a:Lcom/b/a/dh;

    return-object v0
.end method

.method private d(Lcom/b/a/en;)V
    .locals 2
    .parameter

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/b/a/en;->a()Lcom/b/a/ex;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/ej;->H()Lcom/b/a/ex;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/b/a/ej;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->i()Z

    move-result v0

    return v0
.end method

.method private f()Lcom/b/a/ek;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lcom/b/a/ek;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/b/a/ek;-><init>(Lcom/b/a/ej;Z)V

    return-object v0
.end method

.method private g()Lcom/b/a/ek;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Lcom/b/a/ek;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/b/a/ek;-><init>(Lcom/b/a/ej;Z)V

    return-object v0
.end method

.method private h()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/b/a/ej;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->j()I

    move-result v0

    return v0
.end method

.method private i()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/b/a/ej;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->k()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/b/a/en;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/b/a/ej;->d(Lcom/b/a/en;)V

    .line 188
    iget-object v0, p0, Lcom/b/a/ej;->a:Lcom/b/a/dh;

    invoke-static {p1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/b/a/dh;->a(Lcom/b/a/dj;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/en;)Z
    .locals 2
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/b/a/ej;->d(Lcom/b/a/en;)V

    .line 156
    iget-object v0, p0, Lcom/b/a/ej;->a:Lcom/b/a/dh;

    invoke-static {p1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/dh;->a(Lcom/b/a/dj;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/b/a/en;)I
    .locals 2
    .parameter

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/b/a/ej;->d(Lcom/b/a/en;)V

    .line 164
    iget-object v0, p0, Lcom/b/a/ej;->a:Lcom/b/a/dh;

    invoke-static {p1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/dh;->d(Lcom/b/a/dj;)I

    move-result v0

    return v0
.end method

.method public final c(Lcom/b/a/en;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/b/a/ej;->d(Lcom/b/a/en;)V

    .line 173
    iget-object v0, p0, Lcom/b/a/ej;->a:Lcom/b/a/dh;

    invoke-static {p1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/dh;->b(Lcom/b/a/dj;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    if-nez v0, :cond_0

    .line 175
    invoke-static {p1}, Lcom/b/a/en;->b(Lcom/b/a/en;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    :cond_0
    return-object v0
.end method
