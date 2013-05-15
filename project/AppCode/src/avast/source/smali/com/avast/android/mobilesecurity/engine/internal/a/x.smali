.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/x;
.super Lcom/google/a/n;
.source "WebShieldProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/y;


# instance fields
.field private a:I

.field private b:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4153
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 4154
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->f()V

    .line 4155
    return-void
.end method

.method static synthetic e()Lcom/avast/android/mobilesecurity/engine/internal/a/x;
    .locals 1

    .prologue
    .line 4148
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 4158
    return-void
.end method

.method private static k()Lcom/avast/android/mobilesecurity/engine/internal/a/x;
    .locals 1

    .prologue
    .line 4160
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/mobilesecurity/engine/internal/a/x;
    .locals 2

    .prologue
    .line 4171
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/w;)Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/avast/android/mobilesecurity/engine/internal/a/x;
    .locals 1
    .parameter

    .prologue
    .line 4257
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a:I

    .line 4258
    iput-wide p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->b:J

    .line 4260
    return-object p0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/w;)Lcom/avast/android/mobilesecurity/engine/internal/a/x;
    .locals 2
    .parameter

    .prologue
    .line 4209
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4213
    :cond_0
    :goto_0
    return-object p0

    .line 4210
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4211
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a(J)Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    goto :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/x;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4225
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 4226
    sparse-switch v0, :sswitch_data_0

    .line 4231
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4233
    :sswitch_0
    return-object p0

    .line 4238
    :sswitch_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a:I

    .line 4239
    invoke-virtual {p1}, Lcom/google/a/d;->r()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->b:J

    goto :goto_0

    .line 4226
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 4148
    check-cast p1, Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/w;)Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/mobilesecurity/engine/internal/a/w;
    .locals 1

    .prologue
    .line 4175
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4148
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/mobilesecurity/engine/internal/a/w;
    .locals 2

    .prologue
    .line 4179
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    move-result-object v0

    .line 4180
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4181
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 4183
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4148
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4148
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/mobilesecurity/engine/internal/a/w;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 4197
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/x;Lcom/avast/android/mobilesecurity/engine/internal/a/v;)V

    .line 4198
    iget v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a:I

    .line 4199
    const/4 v1, 0x0

    .line 4200
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    .line 4203
    :goto_0
    iget-wide v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->b:J

    invoke-static {v2, v3, v4}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/w;J)J

    .line 4204
    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/w;I)I

    .line 4205
    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 4148
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->b()Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 4148
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 4148
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 4148
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 4217
    const/4 v0, 0x1

    return v0
.end method
