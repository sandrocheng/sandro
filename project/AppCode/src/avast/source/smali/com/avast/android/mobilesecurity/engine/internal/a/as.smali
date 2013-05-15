.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/as;
.super Lcom/google/a/n;
.source "WebShieldProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/at;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2814
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 2815
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->f()V

    .line 2816
    return-void
.end method

.method static synthetic e()Lcom/avast/android/mobilesecurity/engine/internal/a/as;
    .locals 1

    .prologue
    .line 2809
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 2819
    return-void
.end method

.method private static k()Lcom/avast/android/mobilesecurity/engine/internal/a/as;
    .locals 1

    .prologue
    .line 2821
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/mobilesecurity/engine/internal/a/as;
    .locals 2

    .prologue
    .line 2838
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;)Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/android/mobilesecurity/engine/internal/a/as;
    .locals 1
    .parameter

    .prologue
    .line 2960
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    .line 2961
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->b:I

    .line 2963
    return-object p0
.end method

.method public a(J)Lcom/avast/android/mobilesecurity/engine/internal/a/as;
    .locals 1
    .parameter

    .prologue
    .line 3023
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    .line 3024
    iput-wide p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->e:J

    .line 3026
    return-object p0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;)Lcom/avast/android/mobilesecurity/engine/internal/a/as;
    .locals 2
    .parameter

    .prologue
    .line 2888
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2901
    :cond_0
    :goto_0
    return-object p0

    .line 2889
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2890
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a(I)Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    .line 2892
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2893
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->b(I)Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    .line 2895
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2896
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->c(I)Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    .line 2898
    :cond_4
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2899
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->i()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a(J)Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    goto :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/as;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2913
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 2914
    sparse-switch v0, :sswitch_data_0

    .line 2919
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2921
    :sswitch_0
    return-object p0

    .line 2926
    :sswitch_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    .line 2927
    invoke-virtual {p1}, Lcom/google/a/d;->q()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->b:I

    goto :goto_0

    .line 2931
    :sswitch_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    .line 2932
    invoke-virtual {p1}, Lcom/google/a/d;->q()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->c:I

    goto :goto_0

    .line 2936
    :sswitch_3
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    .line 2937
    invoke-virtual {p1}, Lcom/google/a/d;->q()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->d:I

    goto :goto_0

    .line 2941
    :sswitch_4
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    .line 2942
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->e:J

    goto :goto_0

    .line 2914
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 2809
    check-cast p1, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;)Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;
    .locals 1

    .prologue
    .line 2842
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/avast/android/mobilesecurity/engine/internal/a/as;
    .locals 1
    .parameter

    .prologue
    .line 2981
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    .line 2982
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->c:I

    .line 2984
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2809
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;
    .locals 2

    .prologue
    .line 2846
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    move-result-object v0

    .line 2847
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2848
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 2850
    :cond_0
    return-object v0
.end method

.method public c(I)Lcom/avast/android/mobilesecurity/engine/internal/a/as;
    .locals 1
    .parameter

    .prologue
    .line 3002
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    .line 3003
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->d:I

    .line 3005
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2809
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2809
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 2864
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/as;Lcom/avast/android/mobilesecurity/engine/internal/a/v;)V

    .line 2865
    iget v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a:I

    .line 2866
    const/4 v1, 0x0

    .line 2867
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    .line 2870
    :goto_0
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->b:I

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;I)I

    .line 2871
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 2872
    or-int/lit8 v0, v0, 0x2

    .line 2874
    :cond_0
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->c:I

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;I)I

    .line 2875
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 2876
    or-int/lit8 v0, v0, 0x4

    .line 2878
    :cond_1
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->d:I

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->c(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;I)I

    .line 2879
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 2880
    or-int/lit8 v0, v0, 0x8

    .line 2882
    :cond_2
    iget-wide v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->e:J

    invoke-static {v2, v3, v4}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;J)J

    .line 2883
    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->d(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;I)I

    .line 2884
    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 2809
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->b()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 2809
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 2809
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 2809
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 2905
    const/4 v0, 0x1

    return v0
.end method
