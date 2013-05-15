.class public final Lcom/avast/a/a/a/z;
.super Lcom/google/a/n;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/avast/a/a/a/ac;


# instance fields
.field private a:I

.field private b:Lcom/avast/a/a/a/aa;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10849
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 10953
    sget-object v0, Lcom/avast/a/a/a/aa;->a:Lcom/avast/a/a/a/aa;

    iput-object v0, p0, Lcom/avast/a/a/a/z;->b:Lcom/avast/a/a/a/aa;

    .line 10850
    invoke-direct {p0}, Lcom/avast/a/a/a/z;->k()V

    .line 10851
    return-void
.end method

.method static synthetic f()Lcom/avast/a/a/a/z;
    .locals 1

    .prologue
    .line 10844
    invoke-static {}, Lcom/avast/a/a/a/z;->l()Lcom/avast/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 0

    .prologue
    .line 10854
    return-void
.end method

.method private static l()Lcom/avast/a/a/a/z;
    .locals 1

    .prologue
    .line 10856
    new-instance v0, Lcom/avast/a/a/a/z;

    invoke-direct {v0}, Lcom/avast/a/a/a/z;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/a/a/a/z;
    .locals 2

    .prologue
    .line 10867
    invoke-static {}, Lcom/avast/a/a/a/z;->l()Lcom/avast/a/a/a/z;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/a/a/a/z;->d()Lcom/avast/a/a/a/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/z;->a(Lcom/avast/a/a/a/y;)Lcom/avast/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/a/a/a/aa;)Lcom/avast/a/a/a/z;
    .locals 1
    .parameter

    .prologue
    .line 10961
    if-nez p1, :cond_0

    .line 10962
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10964
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/z;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/z;->a:I

    .line 10965
    iput-object p1, p0, Lcom/avast/a/a/a/z;->b:Lcom/avast/a/a/a/aa;

    .line 10967
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/y;)Lcom/avast/a/a/a/z;
    .locals 1
    .parameter

    .prologue
    .line 10905
    invoke-static {}, Lcom/avast/a/a/a/y;->a()Lcom/avast/a/a/a/y;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 10909
    :cond_0
    :goto_0
    return-object p0

    .line 10906
    :cond_1
    invoke-virtual {p1}, Lcom/avast/a/a/a/y;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10907
    invoke-virtual {p1}, Lcom/avast/a/a/a/y;->c()Lcom/avast/a/a/a/aa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/z;->a(Lcom/avast/a/a/a/aa;)Lcom/avast/a/a/a/z;

    goto :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/z;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 10925
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 10926
    sparse-switch v0, :sswitch_data_0

    .line 10931
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/a/a/a/z;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10933
    :sswitch_0
    return-object p0

    .line 10938
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 10939
    invoke-static {v0}, Lcom/avast/a/a/a/aa;->a(I)Lcom/avast/a/a/a/aa;

    move-result-object v0

    .line 10940
    if-eqz v0, :cond_0

    .line 10941
    iget v1, p0, Lcom/avast/a/a/a/z;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/avast/a/a/a/z;->a:I

    .line 10942
    iput-object v0, p0, Lcom/avast/a/a/a/z;->b:Lcom/avast/a/a/a/aa;

    goto :goto_0

    .line 10926
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
    .line 10844
    check-cast p1, Lcom/avast/a/a/a/y;

    invoke-virtual {p0, p1}, Lcom/avast/a/a/a/z;->a(Lcom/avast/a/a/a/y;)Lcom/avast/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/a/a/a/y;
    .locals 1

    .prologue
    .line 10871
    invoke-static {}, Lcom/avast/a/a/a/y;->a()Lcom/avast/a/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10844
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/z;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/a/a/a/y;
    .locals 2

    .prologue
    .line 10875
    invoke-virtual {p0}, Lcom/avast/a/a/a/z;->d()Lcom/avast/a/a/a/y;

    move-result-object v0

    .line 10876
    invoke-virtual {v0}, Lcom/avast/a/a/a/y;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10877
    invoke-static {v0}, Lcom/avast/a/a/a/z;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 10879
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10844
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/z;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10844
    invoke-virtual {p0}, Lcom/avast/a/a/a/z;->a()Lcom/avast/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/a/a/a/y;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 10893
    new-instance v2, Lcom/avast/a/a/a/y;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/a/a/a/y;-><init>(Lcom/avast/a/a/a/z;Lcom/avast/a/a/a/l;)V

    .line 10894
    iget v3, p0, Lcom/avast/a/a/a/z;->a:I

    .line 10895
    const/4 v1, 0x0

    .line 10896
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    .line 10899
    :goto_0
    iget-object v1, p0, Lcom/avast/a/a/a/z;->b:Lcom/avast/a/a/a/aa;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/y;->a(Lcom/avast/a/a/a/y;Lcom/avast/a/a/a/aa;)Lcom/avast/a/a/a/aa;

    .line 10900
    invoke-static {v2, v0}, Lcom/avast/a/a/a/y;->a(Lcom/avast/a/a/a/y;I)I

    .line 10901
    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10955
    iget v1, p0, Lcom/avast/a/a/a/z;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 10844
    invoke-virtual {p0}, Lcom/avast/a/a/a/z;->b()Lcom/avast/a/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 10844
    invoke-virtual {p0}, Lcom/avast/a/a/a/z;->a()Lcom/avast/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 10844
    invoke-virtual {p0}, Lcom/avast/a/a/a/z;->a()Lcom/avast/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 10844
    invoke-virtual {p0}, Lcom/avast/a/a/a/z;->c()Lcom/avast/a/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 10913
    invoke-virtual {p0}, Lcom/avast/a/a/a/z;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10915
    const/4 v0, 0x0

    .line 10917
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
