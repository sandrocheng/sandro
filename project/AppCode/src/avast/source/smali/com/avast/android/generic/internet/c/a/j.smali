.class public final Lcom/avast/android/generic/internet/c/a/j;
.super Lcom/google/a/n;
.source "MyAvastPairing.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/k;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2012
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 2108
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/j;->b:Ljava/lang/Object;

    .line 2013
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/j;->f()V

    .line 2014
    return-void
.end method

.method static synthetic e()Lcom/avast/android/generic/internet/c/a/j;
    .locals 1

    .prologue
    .line 2007
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/j;->k()Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 2017
    return-void
.end method

.method private static k()Lcom/avast/android/generic/internet/c/a/j;
    .locals 1

    .prologue
    .line 2019
    new-instance v0, Lcom/avast/android/generic/internet/c/a/j;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/j;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/internet/c/a/j;
    .locals 2

    .prologue
    .line 2030
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/j;->k()Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/j;->d()Lcom/avast/android/generic/internet/c/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/j;->a(Lcom/avast/android/generic/internet/c/a/i;)Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/i;)Lcom/avast/android/generic/internet/c/a/j;
    .locals 1
    .parameter

    .prologue
    .line 2068
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/i;->a()Lcom/avast/android/generic/internet/c/a/i;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2072
    :cond_0
    :goto_0
    return-object p0

    .line 2069
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2070
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/j;->a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/j;

    goto :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/j;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2084
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 2085
    sparse-switch v0, :sswitch_data_0

    .line 2090
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/internet/c/a/j;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2092
    :sswitch_0
    return-object p0

    .line 2097
    :sswitch_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/j;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/j;->a:I

    .line 2098
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/j;->b:Ljava/lang/Object;

    goto :goto_0

    .line 2085
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/j;
    .locals 1
    .parameter

    .prologue
    .line 2123
    if-nez p1, :cond_0

    .line 2124
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2126
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/j;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/j;->a:I

    .line 2127
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/j;->b:Ljava/lang/Object;

    .line 2129
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 2007
    check-cast p1, Lcom/avast/android/generic/internet/c/a/i;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/internet/c/a/j;->a(Lcom/avast/android/generic/internet/c/a/i;)Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/generic/internet/c/a/i;
    .locals 1

    .prologue
    .line 2034
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/i;->a()Lcom/avast/android/generic/internet/c/a/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2007
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/j;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/i;
    .locals 2

    .prologue
    .line 2038
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/j;->d()Lcom/avast/android/generic/internet/c/a/i;

    move-result-object v0

    .line 2039
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/i;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2040
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/j;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 2042
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2007
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/j;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2007
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/j;->a()Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/generic/internet/c/a/i;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2056
    new-instance v2, Lcom/avast/android/generic/internet/c/a/i;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/generic/internet/c/a/i;-><init>(Lcom/avast/android/generic/internet/c/a/j;Lcom/avast/android/generic/internet/c/a/b;)V

    .line 2057
    iget v3, p0, Lcom/avast/android/generic/internet/c/a/j;->a:I

    .line 2058
    const/4 v1, 0x0

    .line 2059
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    .line 2062
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/j;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/i;->a(Lcom/avast/android/generic/internet/c/a/i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2063
    invoke-static {v2, v0}, Lcom/avast/android/generic/internet/c/a/i;->a(Lcom/avast/android/generic/internet/c/a/i;I)I

    .line 2064
    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 2007
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/j;->b()Lcom/avast/android/generic/internet/c/a/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 2007
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/j;->a()Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 2007
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/j;->a()Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 2007
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/j;->c()Lcom/avast/android/generic/internet/c/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 2076
    const/4 v0, 0x1

    return v0
.end method
