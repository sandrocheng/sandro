.class public final Lcom/b/a/t;
.super Lcom/b/a/dk;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/v;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/b/a/t;

.field private static final i:J


# instance fields
.field private d:I

.field private e:I

.field private f:I

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3070
    new-instance v0, Lcom/b/a/t;

    invoke-direct {v0}, Lcom/b/a/t;-><init>()V

    .line 3071
    sput-object v0, Lcom/b/a/t;->c:Lcom/b/a/t;

    iput v1, v0, Lcom/b/a/t;->e:I

    iput v1, v0, Lcom/b/a/t;->f:I

    .line 3072
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2700
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 2746
    iput-byte v0, p0, Lcom/b/a/t;->g:B

    .line 2767
    iput v0, p0, Lcom/b/a/t;->h:I

    .line 2700
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/u;)V
    .locals 1
    .parameter

    .prologue
    .line 2693
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/t;-><init>(Lcom/b/a/u;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/u;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2698
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 2746
    iput-byte v0, p0, Lcom/b/a/t;->g:B

    .line 2767
    iput v0, p0, Lcom/b/a/t;->h:I

    .line 2699
    return-void
.end method

.method static synthetic a(Lcom/b/a/t;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2693
    iput p1, p0, Lcom/b/a/t;->e:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/t;
    .locals 1
    .parameter

    .prologue
    .line 2796
    invoke-static {}, Lcom/b/a/u;->n()Lcom/b/a/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/u;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/u;

    invoke-static {p0}, Lcom/b/a/u;->a(Lcom/b/a/u;)Lcom/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/t;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2802
    invoke-static {}, Lcom/b/a/u;->n()Lcom/b/a/u;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/u;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/u;

    invoke-static {p0}, Lcom/b/a/u;->a(Lcom/b/a/u;)Lcom/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/t;
    .locals 1
    .parameter

    .prologue
    .line 2850
    invoke-static {}, Lcom/b/a/u;->n()Lcom/b/a/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/u;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/u;

    invoke-static {p0}, Lcom/b/a/u;->a(Lcom/b/a/u;)Lcom/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/t;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2856
    invoke-static {}, Lcom/b/a/u;->n()Lcom/b/a/u;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/u;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/u;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/u;->a(Lcom/b/a/u;)Lcom/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/t;
    .locals 1
    .parameter

    .prologue
    .line 2818
    invoke-static {}, Lcom/b/a/u;->n()Lcom/b/a/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/u;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/u;

    invoke-static {p0}, Lcom/b/a/u;->a(Lcom/b/a/u;)Lcom/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/t;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2824
    invoke-static {}, Lcom/b/a/u;->n()Lcom/b/a/u;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/u;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/u;

    invoke-static {p0}, Lcom/b/a/u;->a(Lcom/b/a/u;)Lcom/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/t;
    .locals 1
    .parameter

    .prologue
    .line 2807
    invoke-static {}, Lcom/b/a/u;->n()Lcom/b/a/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/u;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/u;

    invoke-static {p0}, Lcom/b/a/u;->a(Lcom/b/a/u;)Lcom/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/t;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2813
    invoke-static {}, Lcom/b/a/u;->n()Lcom/b/a/u;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/u;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/u;

    invoke-static {p0}, Lcom/b/a/u;->a(Lcom/b/a/u;)Lcom/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/t;)Lcom/b/a/u;
    .locals 1
    .parameter

    .prologue
    .line 2863
    invoke-static {}, Lcom/b/a/u;->n()Lcom/b/a/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/u;->a(Lcom/b/a/t;)Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/t;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2693
    iput p1, p0, Lcom/b/a/t;->f:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/t;
    .locals 2
    .parameter

    .prologue
    .line 2829
    invoke-static {}, Lcom/b/a/u;->n()Lcom/b/a/u;

    move-result-object v0

    .line 2830
    invoke-virtual {v0, p0}, Lcom/b/a/u;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2831
    invoke-static {v0}, Lcom/b/a/u;->a(Lcom/b/a/u;)Lcom/b/a/t;

    move-result-object v0

    .line 2833
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/t;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2840
    invoke-static {}, Lcom/b/a/u;->n()Lcom/b/a/u;

    move-result-object v0

    .line 2841
    invoke-virtual {v0, p0, p1}, Lcom/b/a/u;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2842
    invoke-static {v0}, Lcom/b/a/u;->a(Lcom/b/a/u;)Lcom/b/a/t;

    move-result-object v0

    .line 2844
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/u;
    .locals 1
    .parameter

    .prologue
    .line 2870
    new-instance v0, Lcom/b/a/u;

    invoke-direct {v0, p0}, Lcom/b/a/u;-><init>(Lcom/b/a/dp;)V

    .line 2871
    return-object v0
.end method

.method static synthetic c(Lcom/b/a/t;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2693
    iput p1, p0, Lcom/b/a/t;->d:I

    return p1
.end method

.method public static e()Lcom/b/a/t;
    .locals 1

    .prologue
    .line 2704
    sget-object v0, Lcom/b/a/t;->c:Lcom/b/a/t;

    return-object v0
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 2713
    invoke-static {}, Lcom/b/a/p;->h()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static l()Lcom/b/a/u;
    .locals 1

    .prologue
    .line 2860
    invoke-static {}, Lcom/b/a/u;->n()Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method private static m()Lcom/b/a/t;
    .locals 1

    .prologue
    .line 2708
    sget-object v0, Lcom/b/a/t;->c:Lcom/b/a/t;

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2743
    iput v0, p0, Lcom/b/a/t;->e:I

    .line 2744
    iput v0, p0, Lcom/b/a/t;->f:I

    .line 2745
    return-void
.end method

.method private static o()Lcom/b/a/u;
    .locals 1

    .prologue
    .line 2861
    invoke-static {}, Lcom/b/a/u;->n()Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method private p()Lcom/b/a/u;
    .locals 1

    .prologue
    .line 2865
    invoke-static {}, Lcom/b/a/u;->n()Lcom/b/a/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/u;->a(Lcom/b/a/t;)Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2790
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2693
    invoke-direct {p0}, Lcom/b/a/t;->p()Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2693
    invoke-static {}, Lcom/b/a/u;->n()Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2693
    invoke-direct {p0}, Lcom/b/a/t;->p()Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2693
    invoke-static {}, Lcom/b/a/u;->n()Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2693
    sget-object v0, Lcom/b/a/t;->c:Lcom/b/a/t;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2693
    sget-object v0, Lcom/b/a/t;->c:Lcom/b/a/t;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 2693
    new-instance v0, Lcom/b/a/u;

    invoke-direct {v0, p1}, Lcom/b/a/u;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2757
    invoke-virtual {p0}, Lcom/b/a/t;->b()I

    .line 2758
    iget v0, p0, Lcom/b/a/t;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2759
    iget v0, p0, Lcom/b/a/t;->e:I

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(II)V

    .line 2761
    :cond_0
    iget v0, p0, Lcom/b/a/t;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2762
    iget v0, p0, Lcom/b/a/t;->f:I

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(II)V

    .line 2764
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/t;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 2765
    return-void
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2748
    iget-byte v0, p0, Lcom/b/a/t;->g:B

    .line 2749
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 2752
    :goto_0
    return v0

    .line 2749
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2751
    :cond_1
    iput-byte v2, p0, Lcom/b/a/t;->g:B

    move v0, v2

    .line 2752
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2769
    iget v0, p0, Lcom/b/a/t;->h:I

    .line 2770
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2783
    :goto_0
    return v0

    .line 2772
    :cond_0
    const/4 v0, 0x0

    .line 2773
    iget v1, p0, Lcom/b/a/t;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2774
    iget v0, p0, Lcom/b/a/t;->e:I

    invoke-static {v2, v0}, Lcom/b/a/n;->d(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2777
    :cond_1
    iget v1, p0, Lcom/b/a/t;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2778
    iget v1, p0, Lcom/b/a/t;->f:I

    invoke-static {v3, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2781
    :cond_2
    invoke-virtual {p0}, Lcom/b/a/t;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 2782
    iput v0, p0, Lcom/b/a/t;->h:I

    goto :goto_0
.end method

.method public final e_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2726
    iget v0, p0, Lcom/b/a/t;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 2718
    invoke-static {}, Lcom/b/a/p;->i()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 2729
    iget v0, p0, Lcom/b/a/t;->e:I

    return v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 2736
    iget v0, p0, Lcom/b/a/t;->d:I

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

.method public final k()I
    .locals 1

    .prologue
    .line 2739
    iget v0, p0, Lcom/b/a/t;->f:I

    return v0
.end method
