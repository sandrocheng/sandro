.class public final Lcom/avast/a/a/a/e;
.super Lcom/google/a/l;
.source "AvastToDevice.java"

# interfaces
.implements Lcom/avast/a/a/a/g;


# static fields
.field private static final a:Lcom/avast/a/a/a/e;


# instance fields
.field private b:I

.field private c:Lcom/avast/a/a/a/c;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3249
    new-instance v0, Lcom/avast/a/a/a/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/e;-><init>(Z)V

    sput-object v0, Lcom/avast/a/a/a/e;->a:Lcom/avast/a/a/a/e;

    .line 3250
    sget-object v0, Lcom/avast/a/a/a/e;->a:Lcom/avast/a/a/a/e;

    invoke-direct {v0}, Lcom/avast/a/a/a/e;->m()V

    .line 3251
    return-void
.end method

.method private constructor <init>(Lcom/avast/a/a/a/f;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2819
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 2879
    iput-byte v0, p0, Lcom/avast/a/a/a/e;->g:B

    .line 2905
    iput v0, p0, Lcom/avast/a/a/a/e;->h:I

    .line 2820
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/a/a/a/f;Lcom/avast/a/a/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2814
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/e;-><init>(Lcom/avast/a/a/a/f;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2821
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 2879
    iput-byte v0, p0, Lcom/avast/a/a/a/e;->g:B

    .line 2905
    iput v0, p0, Lcom/avast/a/a/a/e;->h:I

    .line 2821
    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/e;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2814
    iput p1, p0, Lcom/avast/a/a/a/e;->d:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/e;Lcom/avast/a/a/a/c;)Lcom/avast/a/a/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2814
    iput-object p1, p0, Lcom/avast/a/a/a/e;->c:Lcom/avast/a/a/a/c;

    return-object p1
.end method

.method public static a()Lcom/avast/a/a/a/e;
    .locals 1

    .prologue
    .line 2825
    sget-object v0, Lcom/avast/a/a/a/e;->a:Lcom/avast/a/a/a/e;

    return-object v0
.end method

.method public static a([B)Lcom/avast/a/a/a/e;
    .locals 1
    .parameter

    .prologue
    .line 2952
    invoke-static {}, Lcom/avast/a/a/a/e;->j()Lcom/avast/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/f;->a([B)Lcom/google/a/b;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/f;

    invoke-static {v0}, Lcom/avast/a/a/a/f;->a(Lcom/avast/a/a/a/f;)Lcom/avast/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/avast/a/a/a/e;)Lcom/avast/a/a/a/f;
    .locals 1
    .parameter

    .prologue
    .line 3008
    invoke-static {}, Lcom/avast/a/a/a/e;->j()Lcom/avast/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/f;->a(Lcom/avast/a/a/a/e;)Lcom/avast/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/e;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2814
    iput-boolean p1, p0, Lcom/avast/a/a/a/e;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/e;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2814
    iput p1, p0, Lcom/avast/a/a/a/e;->b:I

    return p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/e;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2814
    iput-boolean p1, p0, Lcom/avast/a/a/a/e;->f:Z

    return p1
.end method

.method public static j()Lcom/avast/a/a/a/f;
    .locals 1

    .prologue
    .line 3005
    invoke-static {}, Lcom/avast/a/a/a/f;->e()Lcom/avast/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2874
    sget-object v0, Lcom/avast/a/a/a/c;->a:Lcom/avast/a/a/a/c;

    iput-object v0, p0, Lcom/avast/a/a/a/e;->c:Lcom/avast/a/a/a/c;

    .line 2875
    iput v1, p0, Lcom/avast/a/a/a/e;->d:I

    .line 2876
    iput-boolean v1, p0, Lcom/avast/a/a/a/e;->e:Z

    .line 2877
    iput-boolean v1, p0, Lcom/avast/a/a/a/e;->f:Z

    .line 2878
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 2814
    invoke-virtual {p0}, Lcom/avast/a/a/a/e;->l()Lcom/avast/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 2814
    invoke-virtual {p0}, Lcom/avast/a/a/a/e;->k()Lcom/avast/a/a/a/f;

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

    .line 2890
    invoke-virtual {p0}, Lcom/avast/a/a/a/e;->w()I

    .line 2891
    iget v0, p0, Lcom/avast/a/a/a/e;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2892
    iget-object v0, p0, Lcom/avast/a/a/a/e;->c:Lcom/avast/a/a/a/c;

    invoke-virtual {v0}, Lcom/avast/a/a/a/c;->a()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->c(II)V

    .line 2894
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/e;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2895
    iget v0, p0, Lcom/avast/a/a/a/e;->d:I

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(II)V

    .line 2897
    :cond_1
    iget v0, p0, Lcom/avast/a/a/a/e;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2898
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/avast/a/a/a/e;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 2900
    :cond_2
    iget v0, p0, Lcom/avast/a/a/a/e;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 2901
    iget-boolean v0, p0, Lcom/avast/a/a/a/e;->f:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(IZ)V

    .line 2903
    :cond_3
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2837
    iget v1, p0, Lcom/avast/a/a/a/e;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/avast/a/a/a/c;
    .locals 1

    .prologue
    .line 2840
    iget-object v0, p0, Lcom/avast/a/a/a/e;->c:Lcom/avast/a/a/a/c;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 2847
    iget v0, p0, Lcom/avast/a/a/a/e;->b:I

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

.method public e()I
    .locals 1

    .prologue
    .line 2850
    iget v0, p0, Lcom/avast/a/a/a/e;->d:I

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 2857
    iget v0, p0, Lcom/avast/a/a/a/e;->b:I

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

.method public g()Z
    .locals 1

    .prologue
    .line 2860
    iget-boolean v0, p0, Lcom/avast/a/a/a/e;->e:Z

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 2867
    iget v0, p0, Lcom/avast/a/a/a/e;->b:I

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

.method public i()Z
    .locals 1

    .prologue
    .line 2870
    iget-boolean v0, p0, Lcom/avast/a/a/a/e;->f:Z

    return v0
.end method

.method public k()Lcom/avast/a/a/a/f;
    .locals 1

    .prologue
    .line 3006
    invoke-static {}, Lcom/avast/a/a/a/e;->j()Lcom/avast/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/avast/a/a/a/f;
    .locals 1

    .prologue
    .line 3010
    invoke-static {p0}, Lcom/avast/a/a/a/e;->a(Lcom/avast/a/a/a/e;)Lcom/avast/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2881
    iget-byte v1, p0, Lcom/avast/a/a/a/e;->g:B

    .line 2882
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 2885
    :goto_0
    return v0

    .line 2882
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2884
    :cond_1
    iput-byte v0, p0, Lcom/avast/a/a/a/e;->g:B

    goto :goto_0
.end method

.method public w()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2907
    iget v0, p0, Lcom/avast/a/a/a/e;->h:I

    .line 2908
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2928
    :goto_0
    return v0

    .line 2910
    :cond_0
    const/4 v0, 0x0

    .line 2911
    iget v1, p0, Lcom/avast/a/a/a/e;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2912
    iget-object v1, p0, Lcom/avast/a/a/a/e;->c:Lcom/avast/a/a/a/c;

    invoke-virtual {v1}, Lcom/avast/a/a/a/c;->a()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2915
    :cond_1
    iget v1, p0, Lcom/avast/a/a/a/e;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2916
    iget v1, p0, Lcom/avast/a/a/a/e;->d:I

    invoke-static {v3, v1}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2919
    :cond_2
    iget v1, p0, Lcom/avast/a/a/a/e;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 2920
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/avast/a/a/a/e;->e:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2923
    :cond_3
    iget v1, p0, Lcom/avast/a/a/a/e;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 2924
    iget-boolean v1, p0, Lcom/avast/a/a/a/e;->f:Z

    invoke-static {v4, v1}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2927
    :cond_4
    iput v0, p0, Lcom/avast/a/a/a/e;->h:I

    goto :goto_0
.end method
