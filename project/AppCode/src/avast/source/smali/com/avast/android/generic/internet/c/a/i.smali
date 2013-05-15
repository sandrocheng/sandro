.class public final Lcom/avast/android/generic/internet/c/a/i;
.super Lcom/google/a/l;
.source "MyAvastPairing.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/k;


# static fields
.field private static final a:Lcom/avast/android/generic/internet/c/a/i;


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2147
    new-instance v0, Lcom/avast/android/generic/internet/c/a/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/internet/c/a/i;-><init>(Z)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/i;->a:Lcom/avast/android/generic/internet/c/a/i;

    .line 2148
    sget-object v0, Lcom/avast/android/generic/internet/c/a/i;->a:Lcom/avast/android/generic/internet/c/a/i;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/i;->h()V

    .line 2149
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/generic/internet/c/a/j;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1846
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 1895
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/i;->d:B

    .line 1912
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/i;->e:I

    .line 1847
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/internet/c/a/j;Lcom/avast/android/generic/internet/c/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1841
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/c/a/i;-><init>(Lcom/avast/android/generic/internet/c/a/j;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1848
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 1895
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/i;->d:B

    .line 1912
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/i;->e:I

    .line 1848
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/i;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1841
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/i;->b:I

    return p1
.end method

.method public static a()Lcom/avast/android/generic/internet/c/a/i;
    .locals 1

    .prologue
    .line 1852
    sget-object v0, Lcom/avast/android/generic/internet/c/a/i;->a:Lcom/avast/android/generic/internet/c/a/i;

    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/internet/c/a/i;)Lcom/avast/android/generic/internet/c/a/j;
    .locals 1
    .parameter

    .prologue
    .line 2003
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/i;->d()Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/internet/c/a/j;->a(Lcom/avast/android/generic/internet/c/a/i;)Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1841
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/i;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public static d()Lcom/avast/android/generic/internet/c/a/j;
    .locals 1

    .prologue
    .line 2000
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/j;->e()Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/i;->c:Ljava/lang/Object;

    .line 1882
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1883
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 1885
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/i;->c:Ljava/lang/Object;

    .line 1888
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 1893
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/i;->c:Ljava/lang/Object;

    .line 1894
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 1841
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/i;->f()Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 1841
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/i;->e()Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1906
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/i;->w()I

    .line 1907
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/i;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1908
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/i;->g()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1910
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1864
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/i;->b:I

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
    .line 1867
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/i;->c:Ljava/lang/Object;

    .line 1868
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1869
    check-cast v0, Ljava/lang/String;

    .line 1877
    :goto_0
    return-object v0

    .line 1871
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 1873
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 1874
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1875
    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/i;->c:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1877
    goto :goto_0
.end method

.method public e()Lcom/avast/android/generic/internet/c/a/j;
    .locals 1

    .prologue
    .line 2001
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/i;->d()Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/avast/android/generic/internet/c/a/j;
    .locals 1

    .prologue
    .line 2005
    invoke-static {p0}, Lcom/avast/android/generic/internet/c/a/i;->a(Lcom/avast/android/generic/internet/c/a/i;)Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1897
    iget-byte v1, p0, Lcom/avast/android/generic/internet/c/a/i;->d:B

    .line 1898
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 1901
    :goto_0
    return v0

    .line 1898
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1900
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/i;->d:B

    goto :goto_0
.end method

.method public w()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1914
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/i;->e:I

    .line 1915
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1923
    :goto_0
    return v0

    .line 1917
    :cond_0
    const/4 v0, 0x0

    .line 1918
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/i;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1919
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/i;->g()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1922
    :cond_1
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/i;->e:I

    goto :goto_0
.end method
