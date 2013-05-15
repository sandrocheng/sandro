.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/p;
.super Lcom/google/a/n;
.source "VpsInfoProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/t;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/avast/android/mobilesecurity/engine/internal/a/q;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 876
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    .line 732
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->m()V

    .line 733
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/p;)Lcom/avast/android/mobilesecurity/engine/internal/a/o;
    .locals 1
    .parameter

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->o()Lcom/avast/android/mobilesecurity/engine/internal/a/o;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l()Lcom/avast/android/mobilesecurity/engine/internal/a/p;
    .locals 1

    .prologue
    .line 726
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->n()Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 0

    .prologue
    .line 736
    return-void
.end method

.method private static n()Lcom/avast/android/mobilesecurity/engine/internal/a/p;
    .locals 1

    .prologue
    .line 738
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;-><init>()V

    return-object v0
.end method

.method private o()Lcom/avast/android/mobilesecurity/engine/internal/a/o;
    .locals 2

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/o;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 770
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/al;->a()Lcom/google/a/x;

    move-result-object v0

    throw v0

    .line 773
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/mobilesecurity/engine/internal/a/p;
    .locals 2

    .prologue
    .line 751
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->n()Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/o;)Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/android/mobilesecurity/engine/internal/a/p;
    .locals 1
    .parameter

    .prologue
    .line 863
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a:I

    .line 864
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->b:I

    .line 866
    return-object p0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/o;)Lcom/avast/android/mobilesecurity/engine/internal/a/p;
    .locals 1
    .parameter

    .prologue
    .line 793
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/o;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-object p0

    .line 794
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 795
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a(I)Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    .line 797
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->e()Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/q;)Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    goto :goto_0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/q;)Lcom/avast/android/mobilesecurity/engine/internal/a/p;
    .locals 1
    .parameter

    .prologue
    .line 884
    if-nez p1, :cond_0

    .line 885
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 887
    :cond_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    .line 889
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a:I

    .line 890
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/p;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 822
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 823
    sparse-switch v0, :sswitch_data_0

    .line 828
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    :sswitch_0
    return-object p0

    .line 835
    :sswitch_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a:I

    .line 836
    invoke-virtual {p1}, Lcom/google/a/d;->m()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->b:I

    goto :goto_0

    .line 840
    :sswitch_2
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->h()Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    .line 841
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 842
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/q;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    .line 844
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 845
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/q;)Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    goto :goto_0

    .line 823
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 726
    check-cast p1, Lcom/avast/android/mobilesecurity/engine/internal/a/o;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/o;)Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/mobilesecurity/engine/internal/a/o;
    .locals 1

    .prologue
    .line 755
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/o;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/avast/android/mobilesecurity/engine/internal/a/q;)Lcom/avast/android/mobilesecurity/engine/internal/a/p;
    .locals 2
    .parameter

    .prologue
    .line 900
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 902
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/q;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/q;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    .line 908
    :goto_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a:I

    .line 909
    return-object p0

    .line 905
    :cond_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    goto :goto_0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 726
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/mobilesecurity/engine/internal/a/o;
    .locals 2

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/o;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 761
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 763
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 726
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/mobilesecurity/engine/internal/a/o;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 777
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/internal/a/o;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/p;Lcom/avast/android/mobilesecurity/engine/internal/a/n;)V

    .line 778
    iget v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a:I

    .line 779
    const/4 v1, 0x0

    .line 780
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_1

    .line 783
    :goto_0
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->b:I

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/o;I)I

    .line 784
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 785
    or-int/lit8 v0, v0, 0x2

    .line 787
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/o;Lcom/avast/android/mobilesecurity/engine/internal/a/q;)Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    .line 788
    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/o;I)I

    .line 789
    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 857
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a:I

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
    .line 878
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a:I

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
    .line 726
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->b()Lcom/avast/android/mobilesecurity/engine/internal/a/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/o;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/avast/android/mobilesecurity/engine/internal/a/q;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    return-object v0
.end method

.method public final v()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 804
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 814
    :cond_0
    :goto_0
    return v0

    .line 808
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 809
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 814
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
