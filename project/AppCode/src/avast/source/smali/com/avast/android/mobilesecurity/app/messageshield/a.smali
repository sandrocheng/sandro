.class public Lcom/avast/android/mobilesecurity/app/messageshield/a;
.super Ljava/lang/Object;
.source "MessageScannerHelper.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/a;->a:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/k;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 69
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/a;->c(Lcom/avast/android/mobilesecurity/engine/k;)Lcom/avast/android/mobilesecurity/engine/l;

    move-result-object v3

    .line 71
    iget-object v1, v3, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/o;->j:Lcom/avast/android/mobilesecurity/engine/o;

    if-eq v1, v4, :cond_0

    iget-object v1, v3, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/o;->k:Lcom/avast/android/mobilesecurity/engine/o;

    if-eq v1, v4, :cond_0

    iget-object v1, v3, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/o;->i:Lcom/avast/android/mobilesecurity/engine/o;

    if-eq v1, v4, :cond_0

    iget-object v1, v3, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/o;->h:Lcom/avast/android/mobilesecurity/engine/o;

    if-ne v1, v4, :cond_3

    :cond_0
    move v1, v2

    .line 76
    :goto_0
    iget-object v3, v3, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/o;->g:Lcom/avast/android/mobilesecurity/engine/o;

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 80
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 81
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    move v4, v0

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/ah;

    .line 83
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    .line 84
    sget-object v7, Lcom/avast/android/mobilesecurity/engine/ak;->f:Lcom/avast/android/mobilesecurity/engine/ak;

    if-ne v0, v7, :cond_4

    move v4, v2

    .line 85
    goto :goto_1

    :cond_3
    move v1, v0

    .line 71
    goto :goto_0

    .line 86
    :cond_4
    sget-object v7, Lcom/avast/android/mobilesecurity/engine/ak;->c:Lcom/avast/android/mobilesecurity/engine/ak;

    if-ne v0, v7, :cond_2

    move v3, v2

    .line 87
    goto :goto_1

    :cond_5
    move v3, v0

    move v4, v0

    .line 92
    :cond_6
    or-int v0, v4, v3

    or-int/2addr v1, v0

    .line 95
    :cond_7
    return v1
.end method

.method public static b(Lcom/avast/android/mobilesecurity/engine/k;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 106
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/a;->c(Lcom/avast/android/mobilesecurity/engine/k;)Lcom/avast/android/mobilesecurity/engine/l;

    move-result-object v0

    .line 108
    iget-object v2, v0, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/o;->f:Lcom/avast/android/mobilesecurity/engine/o;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/o;->d:Lcom/avast/android/mobilesecurity/engine/o;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/o;->e:Lcom/avast/android/mobilesecurity/engine/o;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/o;->a:Lcom/avast/android/mobilesecurity/engine/o;

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 129
    :goto_0
    return v0

    .line 115
    :cond_1
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/o;->g:Lcom/avast/android/mobilesecurity/engine/o;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/ah;

    .line 121
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    .line 122
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    if-ne v0, v4, :cond_3

    move v0, v1

    .line 123
    goto :goto_0

    .line 129
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/avast/android/mobilesecurity/engine/k;)Lcom/avast/android/mobilesecurity/engine/l;
    .locals 3
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/k;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/k;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/l;

    .line 146
    :goto_0
    return-object v0

    .line 144
    :cond_0
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/l;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/o;->a:Lcom/avast/android/mobilesecurity/engine/o;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/l;-><init>(Lcom/avast/android/mobilesecurity/engine/o;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/p;)Lcom/avast/android/mobilesecurity/engine/k;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/a;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    move-object v2, p4

    move-object v3, p1

    move-object v5, v1

    move-object v6, v1

    invoke-static/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/p;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;I)Lcom/avast/android/mobilesecurity/engine/k;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/p;)Lcom/avast/android/mobilesecurity/engine/k;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/a;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    move-object v2, p4

    move-object v3, p1

    move-object v5, v1

    move-object v6, v1

    invoke-static/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/p;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;I)Lcom/avast/android/mobilesecurity/engine/k;

    move-result-object v0

    return-object v0
.end method
