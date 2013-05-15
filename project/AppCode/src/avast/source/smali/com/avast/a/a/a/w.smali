.class public final Lcom/avast/a/a/a/w;
.super Lcom/google/a/n;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/avast/a/a/a/x;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12928
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 13085
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/w;->c:Ljava/lang/Object;

    .line 13121
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/w;->d:Ljava/lang/Object;

    .line 12929
    invoke-direct {p0}, Lcom/avast/a/a/a/w;->m()V

    .line 12930
    return-void
.end method

.method static synthetic l()Lcom/avast/a/a/a/w;
    .locals 1

    .prologue
    .line 12923
    invoke-static {}, Lcom/avast/a/a/a/w;->n()Lcom/avast/a/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 0

    .prologue
    .line 12933
    return-void
.end method

.method private static n()Lcom/avast/a/a/a/w;
    .locals 1

    .prologue
    .line 12935
    new-instance v0, Lcom/avast/a/a/a/w;

    invoke-direct {v0}, Lcom/avast/a/a/a/w;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/a/a/a/w;
    .locals 2

    .prologue
    .line 12950
    invoke-static {}, Lcom/avast/a/a/a/w;->n()Lcom/avast/a/a/a/w;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/a/a/a/w;->d()Lcom/avast/a/a/a/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/w;->a(Lcom/avast/a/a/a/v;)Lcom/avast/a/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/a/a/a/w;
    .locals 1
    .parameter

    .prologue
    .line 13072
    iget v0, p0, Lcom/avast/a/a/a/w;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/w;->a:I

    .line 13073
    iput p1, p0, Lcom/avast/a/a/a/w;->b:I

    .line 13075
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/v;)Lcom/avast/a/a/a/w;
    .locals 1
    .parameter

    .prologue
    .line 12996
    invoke-static {}, Lcom/avast/a/a/a/v;->a()Lcom/avast/a/a/a/v;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 13006
    :cond_0
    :goto_0
    return-object p0

    .line 12997
    :cond_1
    invoke-virtual {p1}, Lcom/avast/a/a/a/v;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12998
    invoke-virtual {p1}, Lcom/avast/a/a/a/v;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/w;->a(I)Lcom/avast/a/a/a/w;

    .line 13000
    :cond_2
    invoke-virtual {p1}, Lcom/avast/a/a/a/v;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13001
    invoke-virtual {p1}, Lcom/avast/a/a/a/v;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/w;->a(Ljava/lang/String;)Lcom/avast/a/a/a/w;

    .line 13003
    :cond_3
    invoke-virtual {p1}, Lcom/avast/a/a/a/v;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13004
    invoke-virtual {p1}, Lcom/avast/a/a/a/v;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/w;->b(Ljava/lang/String;)Lcom/avast/a/a/a/w;

    goto :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/w;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13030
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 13031
    sparse-switch v0, :sswitch_data_0

    .line 13036
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/a/a/a/w;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13038
    :sswitch_0
    return-object p0

    .line 13043
    :sswitch_1
    iget v0, p0, Lcom/avast/a/a/a/w;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/w;->a:I

    .line 13044
    invoke-virtual {p1}, Lcom/google/a/d;->g()I

    move-result v0

    iput v0, p0, Lcom/avast/a/a/a/w;->b:I

    goto :goto_0

    .line 13048
    :sswitch_2
    iget v0, p0, Lcom/avast/a/a/a/w;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/w;->a:I

    .line 13049
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/w;->c:Ljava/lang/Object;

    goto :goto_0

    .line 13053
    :sswitch_3
    iget v0, p0, Lcom/avast/a/a/a/w;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/w;->a:I

    .line 13054
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/w;->d:Ljava/lang/Object;

    goto :goto_0

    .line 13031
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/a/a/a/w;
    .locals 1
    .parameter

    .prologue
    .line 13100
    if-nez p1, :cond_0

    .line 13101
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13103
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/w;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/w;->a:I

    .line 13104
    iput-object p1, p0, Lcom/avast/a/a/a/w;->c:Ljava/lang/Object;

    .line 13106
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 12923
    check-cast p1, Lcom/avast/a/a/a/v;

    invoke-virtual {p0, p1}, Lcom/avast/a/a/a/w;->a(Lcom/avast/a/a/a/v;)Lcom/avast/a/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/a/a/a/v;
    .locals 1

    .prologue
    .line 12954
    invoke-static {}, Lcom/avast/a/a/a/v;->a()Lcom/avast/a/a/a/v;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/avast/a/a/a/w;
    .locals 1
    .parameter

    .prologue
    .line 13136
    if-nez p1, :cond_0

    .line 13137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13139
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/w;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/w;->a:I

    .line 13140
    iput-object p1, p0, Lcom/avast/a/a/a/w;->d:Ljava/lang/Object;

    .line 13142
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12923
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/w;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/a/a/a/v;
    .locals 2

    .prologue
    .line 12958
    invoke-virtual {p0}, Lcom/avast/a/a/a/w;->d()Lcom/avast/a/a/a/v;

    move-result-object v0

    .line 12959
    invoke-virtual {v0}, Lcom/avast/a/a/a/v;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12960
    invoke-static {v0}, Lcom/avast/a/a/a/w;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 12962
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12923
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/w;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12923
    invoke-virtual {p0}, Lcom/avast/a/a/a/w;->a()Lcom/avast/a/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/a/a/a/v;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 12976
    new-instance v2, Lcom/avast/a/a/a/v;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/a/a/a/v;-><init>(Lcom/avast/a/a/a/w;Lcom/avast/a/a/a/l;)V

    .line 12977
    iget v3, p0, Lcom/avast/a/a/a/w;->a:I

    .line 12978
    const/4 v1, 0x0

    .line 12979
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 12982
    :goto_0
    iget v1, p0, Lcom/avast/a/a/a/w;->b:I

    invoke-static {v2, v1}, Lcom/avast/a/a/a/v;->a(Lcom/avast/a/a/a/v;I)I

    .line 12983
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 12984
    or-int/lit8 v0, v0, 0x2

    .line 12986
    :cond_0
    iget-object v1, p0, Lcom/avast/a/a/a/w;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/v;->a(Lcom/avast/a/a/a/v;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12987
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 12988
    or-int/lit8 v0, v0, 0x4

    .line 12990
    :cond_1
    iget-object v1, p0, Lcom/avast/a/a/a/w;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/v;->b(Lcom/avast/a/a/a/v;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12991
    invoke-static {v2, v0}, Lcom/avast/a/a/a/v;->b(Lcom/avast/a/a/a/v;I)I

    .line 12992
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 13066
    iget v1, p0, Lcom/avast/a/a/a/w;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 13087
    iget v0, p0, Lcom/avast/a/a/a/w;->a:I

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

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 12923
    invoke-virtual {p0}, Lcom/avast/a/a/a/w;->b()Lcom/avast/a/a/a/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 12923
    invoke-virtual {p0}, Lcom/avast/a/a/a/w;->a()Lcom/avast/a/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 12923
    invoke-virtual {p0}, Lcom/avast/a/a/a/w;->a()Lcom/avast/a/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 12923
    invoke-virtual {p0}, Lcom/avast/a/a/a/w;->c()Lcom/avast/a/a/a/v;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 13123
    iget v0, p0, Lcom/avast/a/a/a/w;->a:I

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

.method public final v()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 13010
    invoke-virtual {p0}, Lcom/avast/a/a/a/w;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 13022
    :cond_0
    :goto_0
    return v0

    .line 13014
    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/a/a/w;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13018
    invoke-virtual {p0}, Lcom/avast/a/a/a/w;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13022
    const/4 v0, 0x1

    goto :goto_0
.end method
