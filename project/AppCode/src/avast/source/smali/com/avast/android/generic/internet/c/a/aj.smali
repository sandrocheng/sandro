.class public final Lcom/avast/android/generic/internet/c/a/aj;
.super Lcom/google/a/l;
.source "MyAvastStatus.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/al;


# static fields
.field private static final a:Lcom/avast/android/generic/internet/c/a/aj;


# instance fields
.field private b:I

.field private c:Lcom/avast/android/generic/internet/c/a/az;

.field private d:Ljava/util/List;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6500
    new-instance v0, Lcom/avast/android/generic/internet/c/a/aj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/internet/c/a/aj;-><init>(Z)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/aj;->a:Lcom/avast/android/generic/internet/c/a/aj;

    .line 6501
    sget-object v0, Lcom/avast/android/generic/internet/c/a/aj;->a:Lcom/avast/android/generic/internet/c/a/aj;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/aj;->g()V

    .line 6502
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/generic/internet/c/a/ak;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6088
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 6137
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->e:B

    .line 6157
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->f:I

    .line 6089
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/internet/c/a/ak;Lcom/avast/android/generic/internet/c/a/ac;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6083
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/c/a/aj;-><init>(Lcom/avast/android/generic/internet/c/a/ak;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6090
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 6137
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->e:B

    .line 6157
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->f:I

    .line 6090
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/aj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6083
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/aj;->b:I

    return p1
.end method

.method public static a()Lcom/avast/android/generic/internet/c/a/aj;
    .locals 1

    .prologue
    .line 6094
    sget-object v0, Lcom/avast/android/generic/internet/c/a/aj;->a:Lcom/avast/android/generic/internet/c/a/aj;

    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/internet/c/a/aj;)Lcom/avast/android/generic/internet/c/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 6252
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/aj;->d()Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/internet/c/a/ak;->a(Lcom/avast/android/generic/internet/c/a/aj;)Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/aj;Lcom/avast/android/generic/internet/c/a/az;)Lcom/avast/android/generic/internet/c/a/az;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6083
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/aj;->c:Lcom/avast/android/generic/internet/c/a/az;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/aj;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6083
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/aj;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/aj;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 6083
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->d:Ljava/util/List;

    return-object v0
.end method

.method public static d()Lcom/avast/android/generic/internet/c/a/ak;
    .locals 1

    .prologue
    .line 6249
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ak;->e()Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 6134
    sget-object v0, Lcom/avast/android/generic/internet/c/a/az;->a:Lcom/avast/android/generic/internet/c/a/az;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->c:Lcom/avast/android/generic/internet/c/a/az;

    .line 6135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->d:Ljava/util/List;

    .line 6136
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 6083
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/aj;->f()Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 6083
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/aj;->e()Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 6148
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/aj;->w()I

    .line 6149
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 6150
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->c:Lcom/avast/android/generic/internet/c/a/az;

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/az;->a()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->c(II)V

    .line 6152
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6153
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 6152
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6155
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6106
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/aj;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/az;
    .locals 1

    .prologue
    .line 6109
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->c:Lcom/avast/android/generic/internet/c/a/az;

    return-object v0
.end method

.method public e()Lcom/avast/android/generic/internet/c/a/ak;
    .locals 1

    .prologue
    .line 6250
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/aj;->d()Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/avast/android/generic/internet/c/a/ak;
    .locals 1

    .prologue
    .line 6254
    invoke-static {p0}, Lcom/avast/android/generic/internet/c/a/aj;->a(Lcom/avast/android/generic/internet/c/a/aj;)Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 6139
    iget-byte v1, p0, Lcom/avast/android/generic/internet/c/a/aj;->e:B

    .line 6140
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 6143
    :goto_0
    return v0

    .line 6140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6142
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->e:B

    goto :goto_0
.end method

.method public w()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 6159
    iget v2, p0, Lcom/avast/android/generic/internet/c/a/aj;->f:I

    .line 6160
    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    .line 6172
    :goto_0
    return v2

    .line 6163
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_2

    .line 6164
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->c:Lcom/avast/android/generic/internet/c/a/az;

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/az;->a()I

    move-result v0

    invoke-static {v3, v0}, Lcom/google/a/e;->g(II)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v2, v0

    .line 6167
    :goto_2
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6168
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/aj;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-static {v3, v0}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v0

    add-int/2addr v0, v2

    .line 6167
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 6171
    :cond_1
    iput v2, p0, Lcom/avast/android/generic/internet/c/a/aj;->f:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
