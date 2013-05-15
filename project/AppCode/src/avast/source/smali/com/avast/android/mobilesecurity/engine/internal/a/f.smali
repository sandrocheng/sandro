.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/f;
.super Lcom/google/a/n;
.source "TypoSquattingConfirmProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/g;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Lcom/google/a/c;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Lcom/google/a/z;

.field private k:Lcom/avast/android/mobilesecurity/engine/internal/a/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 808
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->b:Ljava/lang/Object;

    .line 844
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->c:Ljava/lang/Object;

    .line 880
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->d:Ljava/lang/Object;

    .line 916
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->e:Ljava/lang/Object;

    .line 952
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->f:Ljava/lang/Object;

    .line 988
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->g:Lcom/google/a/c;

    .line 1012
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->h:Ljava/lang/Object;

    .line 1048
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->i:Ljava/lang/Object;

    .line 1084
    sget-object v0, Lcom/google/a/y;->a:Lcom/google/a/z;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->j:Lcom/google/a/z;

    .line 1140
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/c;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/c;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->k:Lcom/avast/android/mobilesecurity/engine/internal/a/c;

    .line 574
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->f()V

    .line 575
    return-void
.end method

.method static synthetic e()Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 1

    .prologue
    .line 568
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method private static k()Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 1

    .prologue
    .line 580
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;-><init>()V

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 1086
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 1087
    new-instance v0, Lcom/google/a/y;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->j:Lcom/google/a/z;

    invoke-direct {v0, v1}, Lcom/google/a/y;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->j:Lcom/google/a/z;

    .line 1088
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 1090
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 2

    .prologue
    .line 609
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/e;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 1
    .parameter

    .prologue
    .line 1148
    if-nez p1, :cond_0

    .line 1149
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1151
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 1152
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->k:Lcom/avast/android/mobilesecurity/engine/internal/a/c;

    .line 1154
    return-object p0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/e;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 2
    .parameter

    .prologue
    .line 685
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/e;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-object p0

    .line 686
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 687
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 689
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 690
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->b(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 692
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 693
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->c(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 695
    :cond_4
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 696
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->d(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 698
    :cond_5
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 699
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->e(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 701
    :cond_6
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 702
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->m()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 704
    :cond_7
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 705
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->f(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 707
    :cond_8
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 708
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->g(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 710
    :cond_9
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/e;)Lcom/google/a/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/z;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 711
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->j:Lcom/google/a/z;

    invoke-interface {v0}, Lcom/google/a/z;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 712
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/e;)Lcom/google/a/z;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->j:Lcom/google/a/z;

    .line 713
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 720
    :cond_a
    :goto_1
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->t()Lcom/avast/android/mobilesecurity/engine/internal/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    goto/16 :goto_0

    .line 715
    :cond_b
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->l()V

    .line 716
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->j:Lcom/google/a/z;

    invoke-static {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/e;)Lcom/google/a/z;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/z;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public a(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 1
    .parameter

    .prologue
    .line 996
    if-nez p1, :cond_0

    .line 997
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 999
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 1000
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->g:Lcom/google/a/c;

    .line 1002
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 735
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 736
    sparse-switch v0, :sswitch_data_0

    .line 741
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    :sswitch_0
    return-object p0

    .line 748
    :sswitch_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 749
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->b:Ljava/lang/Object;

    goto :goto_0

    .line 753
    :sswitch_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 754
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->c:Ljava/lang/Object;

    goto :goto_0

    .line 758
    :sswitch_3
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 759
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->d:Ljava/lang/Object;

    goto :goto_0

    .line 763
    :sswitch_4
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 764
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->e:Ljava/lang/Object;

    goto :goto_0

    .line 768
    :sswitch_5
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 769
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->f:Ljava/lang/Object;

    goto :goto_0

    .line 773
    :sswitch_6
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 774
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->g:Lcom/google/a/c;

    goto :goto_0

    .line 778
    :sswitch_7
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 779
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->h:Ljava/lang/Object;

    goto :goto_0

    .line 783
    :sswitch_8
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 784
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->i:Ljava/lang/Object;

    goto :goto_0

    .line 788
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 789
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/c;->a(I)Lcom/avast/android/mobilesecurity/engine/internal/a/c;

    move-result-object v0

    .line 790
    if-eqz v0, :cond_0

    .line 791
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 792
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->k:Lcom/avast/android/mobilesecurity/engine/internal/a/c;

    goto/16 :goto_0

    .line 797
    :sswitch_a
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->l()V

    .line 798
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->j:Lcom/google/a/z;

    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/z;->a(Lcom/google/a/c;)V

    goto/16 :goto_0

    .line 736
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 1
    .parameter

    .prologue
    .line 823
    if-nez p1, :cond_0

    .line 824
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 826
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 827
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->b:Ljava/lang/Object;

    .line 829
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 568
    check-cast p1, Lcom/avast/android/mobilesecurity/engine/internal/a/e;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/e;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/mobilesecurity/engine/internal/a/e;
    .locals 1

    .prologue
    .line 613
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/e;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 1
    .parameter

    .prologue
    .line 859
    if-nez p1, :cond_0

    .line 860
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 862
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 863
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->c:Ljava/lang/Object;

    .line 865
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 568
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/mobilesecurity/engine/internal/a/e;
    .locals 2

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/e;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 621
    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 1
    .parameter

    .prologue
    .line 895
    if-nez p1, :cond_0

    .line 896
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 898
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 899
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->d:Ljava/lang/Object;

    .line 901
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 568
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/mobilesecurity/engine/internal/a/e;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 635
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/internal/a/e;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/f;Lcom/avast/android/mobilesecurity/engine/internal/a/b;)V

    .line 636
    iget v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 637
    const/4 v1, 0x0

    .line 638
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_9

    .line 641
    :goto_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 643
    or-int/lit8 v0, v0, 0x2

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 647
    or-int/lit8 v0, v0, 0x4

    .line 649
    :cond_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->c(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 651
    or-int/lit8 v0, v0, 0x8

    .line 653
    :cond_2
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->d(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 655
    or-int/lit8 v0, v0, 0x10

    .line 657
    :cond_3
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->e(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 659
    or-int/lit8 v0, v0, 0x20

    .line 661
    :cond_4
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->g:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Lcom/google/a/c;)Lcom/google/a/c;

    .line 662
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 663
    or-int/lit8 v0, v0, 0x40

    .line 665
    :cond_5
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->f(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 667
    or-int/lit16 v0, v0, 0x80

    .line 669
    :cond_6
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->i:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->g(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    and-int/lit16 v1, v1, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 671
    new-instance v1, Lcom/google/a/am;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->j:Lcom/google/a/z;

    invoke-direct {v1, v4}, Lcom/google/a/am;-><init>(Lcom/google/a/z;)V

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->j:Lcom/google/a/z;

    .line 673
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 675
    :cond_7
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->j:Lcom/google/a/z;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Lcom/google/a/z;)Lcom/google/a/z;

    .line 676
    and-int/lit16 v1, v3, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_8

    .line 677
    or-int/lit16 v0, v0, 0x100

    .line 679
    :cond_8
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->k:Lcom/avast/android/mobilesecurity/engine/internal/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/e;Lcom/avast/android/mobilesecurity/engine/internal/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/c;

    .line 680
    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/e;I)I

    .line 681
    return-object v2

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public d(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 1
    .parameter

    .prologue
    .line 931
    if-nez p1, :cond_0

    .line 932
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 934
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 935
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->e:Ljava/lang/Object;

    .line 937
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 1
    .parameter

    .prologue
    .line 967
    if-nez p1, :cond_0

    .line 968
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 970
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 971
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->f:Ljava/lang/Object;

    .line 973
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 1
    .parameter

    .prologue
    .line 1027
    if-nez p1, :cond_0

    .line 1028
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1030
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 1031
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->h:Ljava/lang/Object;

    .line 1033
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 1
    .parameter

    .prologue
    .line 1063
    if-nez p1, :cond_0

    .line 1064
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1066
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a:I

    .line 1067
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->i:Ljava/lang/Object;

    .line 1069
    return-object p0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->b()Lcom/avast/android/mobilesecurity/engine/internal/a/e;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    .locals 1
    .parameter

    .prologue
    .line 1112
    if-nez p1, :cond_0

    .line 1113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1115
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->l()V

    .line 1116
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->j:Lcom/google/a/z;

    invoke-interface {v0, p1}, Lcom/google/a/z;->add(Ljava/lang/Object;)Z

    .line 1118
    return-object p0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x1

    return v0
.end method
