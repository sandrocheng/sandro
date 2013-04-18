.class public abstract Lcom/b/a/dq;
.super Lcom/b/a/dn;
.source "GeneratedMessage.java"

# interfaces
.implements Lcom/b/a/dt;


# instance fields
.field private a:Lcom/b/a/dh;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 807
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 805
    invoke-static {}, Lcom/b/a/dh;->b()Lcom/b/a/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    .line 807
    return-void
.end method

.method protected constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 811
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 805
    invoke-static {}, Lcom/b/a/dh;->b()Lcom/b/a/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    .line 812
    return-void
.end method

.method static synthetic a(Lcom/b/a/dq;)Lcom/b/a/dh;
    .locals 1
    .parameter

    .prologue
    .line 799
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->c()V

    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    return-object v0
.end method

.method private a(Lcom/b/a/ed;ILjava/lang/Object;)Lcom/b/a/dq;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 914
    invoke-direct {p0, p1}, Lcom/b/a/dq;->d(Lcom/b/a/ed;)V

    .line 915
    invoke-direct {p0}, Lcom/b/a/dq;->i()V

    .line 916
    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    .line 917
    iget-object v1, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-static {p1, p3}, Lcom/b/a/ed;->d(Lcom/b/a/ed;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Lcom/b/a/dh;->a(Lcom/b/a/dj;ILjava/lang/Object;)V

    .line 920
    invoke-virtual {p0}, Lcom/b/a/dq;->af_()V

    .line 921
    return-object p0
.end method

.method private a(Lcom/b/a/ed;Ljava/lang/Object;)Lcom/b/a/dq;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 902
    invoke-direct {p0, p1}, Lcom/b/a/dq;->d(Lcom/b/a/ed;)V

    .line 903
    invoke-direct {p0}, Lcom/b/a/dq;->i()V

    .line 904
    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    .line 905
    iget-object v1, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-static {p1, p2}, Lcom/b/a/ed;->c(Lcom/b/a/ed;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/b/a/dh;->a(Lcom/b/a/dj;Ljava/lang/Object;)V

    .line 906
    invoke-virtual {p0}, Lcom/b/a/dq;->af_()V

    .line 907
    return-object p0
.end method

.method private b(Lcom/b/a/ed;Ljava/lang/Object;)Lcom/b/a/dq;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 928
    invoke-direct {p0, p1}, Lcom/b/a/dq;->d(Lcom/b/a/ed;)V

    .line 929
    invoke-direct {p0}, Lcom/b/a/dq;->i()V

    .line 930
    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    .line 931
    iget-object v1, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-static {p1, p2}, Lcom/b/a/ed;->d(Lcom/b/a/ed;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/b/a/dh;->b(Lcom/b/a/dj;Ljava/lang/Object;)V

    .line 933
    invoke-virtual {p0}, Lcom/b/a/dq;->af_()V

    .line 934
    return-object p0
.end method

.method private c(Lcom/b/a/cq;ILjava/lang/Object;)Lcom/b/a/dq;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1072
    invoke-virtual {p1}, Lcom/b/a/cq;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    invoke-direct {p0, p1}, Lcom/b/a/dq;->h(Lcom/b/a/cq;)V

    .line 1074
    invoke-direct {p0}, Lcom/b/a/dq;->i()V

    .line 1075
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/dh;->a(Lcom/b/a/dj;ILjava/lang/Object;)V

    .line 1076
    invoke-virtual {p0}, Lcom/b/a/dq;->af_()V

    move-object v0, p0

    .line 1079
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/b/a/dn;->b(Lcom/b/a/cq;ILjava/lang/Object;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/dq;

    move-object v0, p0

    goto :goto_0
.end method

.method private d(Lcom/b/a/ed;)V
    .locals 3
    .parameter

    .prologue
    .line 837
    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cq;->r()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/dq;->C()Lcom/b/a/cj;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 840
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extension is for type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/cq;->r()Lcom/b/a/cj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/cj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" which does not match message type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/b/a/dq;->C()Lcom/b/a/cj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/cj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_0
    return-void
.end method

.method private e(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/dq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1045
    invoke-virtual {p1}, Lcom/b/a/cq;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-direct {p0, p1}, Lcom/b/a/dq;->h(Lcom/b/a/cq;)V

    .line 1047
    invoke-direct {p0}, Lcom/b/a/dq;->i()V

    .line 1048
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/dh;->a(Lcom/b/a/dj;Ljava/lang/Object;)V

    .line 1049
    invoke-virtual {p0}, Lcom/b/a/dq;->af_()V

    move-object v0, p0

    .line 1052
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/b/a/dn;->c(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/dq;

    move-object v0, p0

    goto :goto_0
.end method

.method private e(Lcom/b/a/ed;)Lcom/b/a/dq;
    .locals 2
    .parameter

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/b/a/dq;->d(Lcom/b/a/ed;)V

    .line 941
    invoke-direct {p0}, Lcom/b/a/dq;->i()V

    .line 942
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/dh;->c(Lcom/b/a/dj;)V

    .line 943
    invoke-virtual {p0}, Lcom/b/a/dq;->af_()V

    .line 944
    return-object p0
.end method

.method private f(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/dq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1086
    invoke-virtual {p1}, Lcom/b/a/cq;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    invoke-direct {p0, p1}, Lcom/b/a/dq;->h(Lcom/b/a/cq;)V

    .line 1088
    invoke-direct {p0}, Lcom/b/a/dq;->i()V

    .line 1089
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/dh;->b(Lcom/b/a/dj;Ljava/lang/Object;)V

    .line 1090
    invoke-virtual {p0}, Lcom/b/a/dq;->af_()V

    move-object v0, p0

    .line 1093
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/b/a/dn;->d(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/dq;

    move-object v0, p0

    goto :goto_0
.end method

.method private g(Lcom/b/a/cq;)Lcom/b/a/dq;
    .locals 1
    .parameter

    .prologue
    .line 1058
    invoke-virtual {p1}, Lcom/b/a/cq;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    invoke-direct {p0, p1}, Lcom/b/a/dq;->h(Lcom/b/a/cq;)V

    .line 1060
    invoke-direct {p0}, Lcom/b/a/dq;->i()V

    .line 1061
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->c(Lcom/b/a/dj;)V

    .line 1062
    invoke-virtual {p0}, Lcom/b/a/dq;->af_()V

    move-object v0, p0

    .line 1065
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->f(Lcom/b/a/cq;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/dq;

    move-object v0, p0

    goto :goto_0
.end method

.method private h(Lcom/b/a/cq;)V
    .locals 2
    .parameter

    .prologue
    .line 1104
    invoke-virtual {p1}, Lcom/b/a/cq;->r()Lcom/b/a/cj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/dq;->C()Lcom/b/a/cj;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1108
    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->e()Lcom/b/a/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    .line 833
    :cond_0
    return-void
.end method

.method private j()Lcom/b/a/dh;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->c()V

    .line 958
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    return-object v0
.end method


# virtual methods
.method public synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/b/a/dq;->n()Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/b/a/dq;->m()Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method protected final N()Z
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->i()Z

    move-result v0

    return v0
.end method

.method public final synthetic a(Lcom/b/a/cq;ILjava/lang/Object;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 798
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/dq;->c(Lcom/b/a/cq;ILjava/lang/Object;)Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 798
    invoke-direct {p0, p1, p2}, Lcom/b/a/dq;->f(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/cq;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1024
    invoke-virtual {p1}, Lcom/b/a/cq;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    invoke-direct {p0, p1}, Lcom/b/a/dq;->h(Lcom/b/a/cq;)V

    .line 1026
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/dh;->a(Lcom/b/a/dj;I)Ljava/lang/Object;

    move-result-object v0

    .line 1028
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/b/a/dn;->a(Lcom/b/a/cq;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/b/a/ed;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 892
    invoke-direct {p0, p1}, Lcom/b/a/dq;->d(Lcom/b/a/ed;)V

    .line 893
    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    .line 894
    iget-object v1, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v1, v0, p2}, Lcom/b/a/dh;->a(Lcom/b/a/dj;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/b/a/ed;->b(Lcom/b/a/ed;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/b/a/dr;)V
    .locals 2
    .parameter

    .prologue
    .line 1098
    invoke-direct {p0}, Lcom/b/a/dq;->i()V

    .line 1099
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-static {p1}, Lcom/b/a/dr;->a(Lcom/b/a/dr;)Lcom/b/a/dh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/dh;->a(Lcom/b/a/dh;)V

    .line 1100
    invoke-virtual {p0}, Lcom/b/a/dq;->af_()V

    .line 1101
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 963
    invoke-super {p0}, Lcom/b/a/dn;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/b/a/cq;)Z
    .locals 1
    .parameter

    .prologue
    .line 1034
    invoke-virtual {p1}, Lcom/b/a/cq;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    invoke-direct {p0, p1}, Lcom/b/a/dq;->h(Lcom/b/a/cq;)V

    .line 1036
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->a(Lcom/b/a/dj;)Z

    move-result v0

    .line 1038
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/cq;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/b/a/ed;)Z
    .locals 2
    .parameter

    .prologue
    .line 852
    invoke-direct {p0, p1}, Lcom/b/a/dq;->d(Lcom/b/a/ed;)V

    .line 853
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/dh;->a(Lcom/b/a/dj;)Z

    move-result v0

    return v0
.end method

.method protected final a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 976
    invoke-static {p1, p2, p3, p0, p4}, Lcom/b/a/c;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;Lcom/b/a/ew;I)Z

    move-result v0

    return v0
.end method

.method public final a_()Ljava/util/Map;
    .locals 2

    .prologue
    .line 985
    invoke-static {p0}, Lcom/b/a/dn;->a(Lcom/b/a/dn;)Ljava/util/Map;

    move-result-object v0

    .line 986
    iget-object v1, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v1}, Lcom/b/a/dh;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 987
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/b/a/ed;)I
    .locals 2
    .parameter

    .prologue
    .line 860
    invoke-direct {p0, p1}, Lcom/b/a/dq;->d(Lcom/b/a/ed;)V

    .line 861
    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    .line 862
    iget-object v1, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v1, v0}, Lcom/b/a/dh;->d(Lcom/b/a/dj;)I

    move-result v0

    return v0
.end method

.method public synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/b/a/dq;->m()Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/cq;ILjava/lang/Object;)Lcom/b/a/dn;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 798
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/dq;->c(Lcom/b/a/cq;ILjava/lang/Object;)Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 798
    invoke-direct {p0, p1, p2}, Lcom/b/a/dq;->e(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/b/a/cq;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 992
    invoke-virtual {p1}, Lcom/b/a/cq;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 993
    invoke-direct {p0, p1}, Lcom/b/a/dq;->h(Lcom/b/a/cq;)V

    .line 994
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->b(Lcom/b/a/dj;)Ljava/lang/Object;

    move-result-object v0

    .line 995
    if-nez v0, :cond_0

    .line 996
    invoke-virtual {p1}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v0, v1, :cond_1

    .line 999
    invoke-virtual {p1}, Lcom/b/a/cq;->t()Lcom/b/a/cj;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/cy;->a(Lcom/b/a/cj;)Lcom/b/a/cy;

    move-result-object v0

    .line 1007
    :cond_0
    :goto_0
    return-object v0

    .line 1001
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/cq;->p()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1007
    :cond_2
    invoke-super {p0, p1}, Lcom/b/a/dn;->b(Lcom/b/a/cq;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Lcom/b/a/cq;)I
    .locals 1
    .parameter

    .prologue
    .line 1013
    invoke-virtual {p1}, Lcom/b/a/cq;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    invoke-direct {p0, p1}, Lcom/b/a/dq;->h(Lcom/b/a/cq;)V

    .line 1015
    iget-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->d(Lcom/b/a/dj;)I

    move-result v0

    .line 1017
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->c(Lcom/b/a/cq;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/b/a/dq;->n()Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/dn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 798
    invoke-direct {p0, p1, p2}, Lcom/b/a/dq;->e(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/b/a/ed;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 869
    invoke-direct {p0, p1}, Lcom/b/a/dq;->d(Lcom/b/a/ed;)V

    .line 870
    invoke-virtual {p1}, Lcom/b/a/ed;->a()Lcom/b/a/cq;

    move-result-object v0

    .line 871
    iget-object v1, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    invoke-virtual {v1, v0}, Lcom/b/a/dh;->b(Lcom/b/a/dj;)Ljava/lang/Object;

    move-result-object v1

    .line 872
    if-nez v1, :cond_2

    .line 873
    invoke-virtual {v0}, Lcom/b/a/cq;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 883
    :goto_0
    return-object v0

    .line 875
    :cond_0
    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v1

    sget-object v2, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v1, v2, :cond_1

    .line 877
    invoke-virtual {p1}, Lcom/b/a/ed;->b()Lcom/b/a/ev;

    move-result-object v0

    goto :goto_0

    .line 879
    :cond_1
    invoke-virtual {v0}, Lcom/b/a/cq;->p()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/b/a/ed;->a(Lcom/b/a/ed;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 883
    :cond_2
    invoke-static {p1, v1}, Lcom/b/a/ed;->a(Lcom/b/a/ed;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/b/a/dq;->m()Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/dn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 798
    invoke-direct {p0, p1, p2}, Lcom/b/a/dq;->f(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/b/a/dq;->m()Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/cq;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 798
    invoke-direct {p0, p1}, Lcom/b/a/dq;->g(Lcom/b/a/cq;)Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/b/a/dq;->m()Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f(Lcom/b/a/cq;)Lcom/b/a/dn;
    .locals 1
    .parameter

    .prologue
    .line 798
    invoke-direct {p0, p1}, Lcom/b/a/dq;->g(Lcom/b/a/cq;)Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/b/a/dq;->n()Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/b/a/dq;->m()Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/b/a/dq;->n()Lcom/b/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/b/a/dq;
    .locals 2

    .prologue
    .line 825
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()Lcom/b/a/dq;
    .locals 1

    .prologue
    .line 816
    invoke-static {}, Lcom/b/a/dh;->b()Lcom/b/a/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/dq;->a:Lcom/b/a/dh;

    .line 817
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/dq;

    return-object p0
.end method
