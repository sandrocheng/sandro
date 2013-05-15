.class public final Lcom/avast/android/generic/internet/c/a/as;
.super Lcom/google/a/l;
.source "MyAvastStatus.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/au;


# static fields
.field private static final a:Lcom/avast/android/generic/internet/c/a/as;


# instance fields
.field private b:I

.field private c:Lcom/google/a/c;

.field private d:J

.field private e:Lcom/google/a/c;

.field private f:Lcom/google/a/c;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7367
    new-instance v0, Lcom/avast/android/generic/internet/c/a/as;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/internet/c/a/as;-><init>(Z)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/as;->a:Lcom/avast/android/generic/internet/c/a/as;

    .line 7368
    sget-object v0, Lcom/avast/android/generic/internet/c/a/as;->a:Lcom/avast/android/generic/internet/c/a/as;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/as;->m()V

    .line 7369
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/generic/internet/c/a/at;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6935
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 6995
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/as;->g:B

    .line 7021
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/as;->h:I

    .line 6936
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/internet/c/a/at;Lcom/avast/android/generic/internet/c/a/ac;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6930
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/c/a/as;-><init>(Lcom/avast/android/generic/internet/c/a/at;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 6937
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 6995
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/as;->g:B

    .line 7021
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/as;->h:I

    .line 6937
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/as;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6930
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/as;->b:I

    return p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/as;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6930
    iput-wide p1, p0, Lcom/avast/android/generic/internet/c/a/as;->d:J

    return-wide p1
.end method

.method public static a()Lcom/avast/android/generic/internet/c/a/as;
    .locals 1

    .prologue
    .line 6941
    sget-object v0, Lcom/avast/android/generic/internet/c/a/as;->a:Lcom/avast/android/generic/internet/c/a/as;

    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/internet/c/a/as;)Lcom/avast/android/generic/internet/c/a/at;
    .locals 1
    .parameter

    .prologue
    .line 7124
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/as;->j()Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/internet/c/a/at;->a(Lcom/avast/android/generic/internet/c/a/as;)Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/as;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6930
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/as;->c:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/as;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6930
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/as;->e:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/android/generic/internet/c/a/as;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6930
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/as;->f:Lcom/google/a/c;

    return-object p1
.end method

.method public static j()Lcom/avast/android/generic/internet/c/a/at;
    .locals 1

    .prologue
    .line 7121
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/at;->e()Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 6990
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/as;->c:Lcom/google/a/c;

    .line 6991
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avast/android/generic/internet/c/a/as;->d:J

    .line 6992
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/as;->e:Lcom/google/a/c;

    .line 6993
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/as;->f:Lcom/google/a/c;

    .line 6994
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 6930
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/as;->l()Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 6930
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/as;->k()Lcom/avast/android/generic/internet/c/a/at;

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

    .line 7006
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/as;->w()I

    .line 7007
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/as;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 7008
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/as;->c:Lcom/google/a/c;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 7010
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/as;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 7011
    iget-wide v0, p0, Lcom/avast/android/generic/internet/c/a/as;->d:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/a/e;->b(IJ)V

    .line 7013
    :cond_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/as;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 7014
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/as;->e:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 7016
    :cond_2
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/as;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 7017
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/as;->f:Lcom/google/a/c;

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 7019
    :cond_3
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6953
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/as;->b:I

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
    .line 6956
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/as;->c:Lcom/google/a/c;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 6963
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/as;->b:I

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

.method public e()J
    .locals 2

    .prologue
    .line 6966
    iget-wide v0, p0, Lcom/avast/android/generic/internet/c/a/as;->d:J

    return-wide v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 6973
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/as;->b:I

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

.method public g()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 6976
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/as;->e:Lcom/google/a/c;

    return-object v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 6983
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/as;->b:I

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

.method public i()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 6986
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/as;->f:Lcom/google/a/c;

    return-object v0
.end method

.method public k()Lcom/avast/android/generic/internet/c/a/at;
    .locals 1

    .prologue
    .line 7122
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/as;->j()Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/avast/android/generic/internet/c/a/at;
    .locals 1

    .prologue
    .line 7126
    invoke-static {p0}, Lcom/avast/android/generic/internet/c/a/as;->a(Lcom/avast/android/generic/internet/c/a/as;)Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 6997
    iget-byte v1, p0, Lcom/avast/android/generic/internet/c/a/as;->g:B

    .line 6998
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 7001
    :goto_0
    return v0

    .line 6998
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 7000
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/as;->g:B

    goto :goto_0
.end method

.method public w()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7023
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/as;->h:I

    .line 7024
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7044
    :goto_0
    return v0

    .line 7026
    :cond_0
    const/4 v0, 0x0

    .line 7027
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/as;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 7028
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/as;->c:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7031
    :cond_1
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/as;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 7032
    iget-wide v1, p0, Lcom/avast/android/generic/internet/c/a/as;->d:J

    invoke-static {v3, v1, v2}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7035
    :cond_2
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/as;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 7036
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/avast/android/generic/internet/c/a/as;->e:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7039
    :cond_3
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/as;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 7040
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/as;->f:Lcom/google/a/c;

    invoke-static {v4, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7043
    :cond_4
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/as;->h:I

    goto :goto_0
.end method
