.class public Lcom/a/a/g;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# instance fields
.field final synthetic a:Lcom/a/a/d;

.field private b:Lcom/a/a/j;


# direct methods
.method constructor <init>(Lcom/a/a/d;Lcom/a/a/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/a/a/g;->a:Lcom/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    invoke-static {p1}, Lcom/a/a/d;->b(Lcom/a/a/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/j;

    iput-object v0, p0, Lcom/a/a/g;->b:Lcom/a/a/j;

    .line 1029
    iget-object v0, p0, Lcom/a/a/g;->b:Lcom/a/a/j;

    if-nez v0, :cond_0

    .line 1030
    new-instance v0, Lcom/a/a/j;

    invoke-direct {v0, p2}, Lcom/a/a/j;-><init>(Lcom/a/a/a;)V

    iput-object v0, p0, Lcom/a/a/g;->b:Lcom/a/a/j;

    .line 1031
    invoke-static {p1}, Lcom/a/a/d;->b(Lcom/a/a/d;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/g;->b:Lcom/a/a/j;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    invoke-static {p1}, Lcom/a/a/d;->d(Lcom/a/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/g;->b:Lcom/a/a/j;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)Lcom/a/a/g;
    .locals 1
    .parameter

    .prologue
    .line 1105
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/a/a/ak;->b([F)Lcom/a/a/ak;

    move-result-object v0

    .line 1106
    invoke-virtual {v0, p1, p2}, Lcom/a/a/ak;->b(J)Lcom/a/a/ak;

    .line 1107
    invoke-virtual {p0, v0}, Lcom/a/a/g;->a(Lcom/a/a/a;)Lcom/a/a/g;

    .line 1108
    return-object p0

    .line 1105
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public a(Lcom/a/a/a;)Lcom/a/a/g;
    .locals 3
    .parameter

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/d;

    invoke-static {v0}, Lcom/a/a/d;->b(Lcom/a/a/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/j;

    .line 1085
    if-nez v0, :cond_0

    .line 1086
    new-instance v0, Lcom/a/a/j;

    invoke-direct {v0, p1}, Lcom/a/a/j;-><init>(Lcom/a/a/a;)V

    .line 1087
    iget-object v1, p0, Lcom/a/a/g;->a:Lcom/a/a/d;

    invoke-static {v1}, Lcom/a/a/d;->b(Lcom/a/a/d;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    iget-object v1, p0, Lcom/a/a/g;->a:Lcom/a/a/d;

    invoke-static {v1}, Lcom/a/a/d;->d(Lcom/a/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    :cond_0
    new-instance v1, Lcom/a/a/h;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/a/a/h;-><init>(Lcom/a/a/j;I)V

    .line 1091
    iget-object v0, p0, Lcom/a/a/g;->b:Lcom/a/a/j;

    invoke-virtual {v0, v1}, Lcom/a/a/j;->a(Lcom/a/a/h;)V

    .line 1092
    return-object p0
.end method
