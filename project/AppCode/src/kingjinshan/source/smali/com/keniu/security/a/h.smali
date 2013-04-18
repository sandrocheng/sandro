.class public final Lcom/keniu/security/a/h;
.super Ljava/lang/Object;
.source "AppScanner.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/a/f;


# direct methods
.method public constructor <init>(Lcom/keniu/security/a/f;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/keniu/security/a/f;->a:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/keniu/security/a/f;->b:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v0, v0, Lcom/keniu/security/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v0, v0, Lcom/keniu/security/a/f;->c:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    invoke-static {}, Lcom/keniu/security/a/s;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    invoke-static {}, Lcom/keniu/security/a/s;->b()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/a/f;->a:Ljava/util/ArrayList;

    .line 53
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v0, v0, Lcom/keniu/security/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const/4 v0, 0x1

    .line 58
    :goto_1
    return v0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v1, p0, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    invoke-static {p1}, Lcom/keniu/security/a/f;->b(Landroid/content/pm/ApplicationInfo;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/a/f;->a:Ljava/util/ArrayList;

    .line 50
    iget-object v0, p0, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v0, v0, Lcom/keniu/security/a/f;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/keniu/security/a/s;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 58
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final b(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v0, v0, Lcom/keniu/security/a/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v0, v0, Lcom/keniu/security/a/f;->c:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-static {}, Lcom/keniu/security/a/s;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    invoke-static {}, Lcom/keniu/security/a/s;->c()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/a/f;->b:Ljava/util/ArrayList;

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v0, v0, Lcom/keniu/security/a/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 78
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const/4 v0, 0x1

    .line 82
    :goto_1
    return v0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v1, p0, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    invoke-static {p1}, Lcom/keniu/security/a/k;->a(Landroid/content/pm/ApplicationInfo;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/a/f;->b:Ljava/util/ArrayList;

    .line 74
    iget-object v0, p0, Lcom/keniu/security/a/h;->a:Lcom/keniu/security/a/f;

    iget-object v0, v0, Lcom/keniu/security/a/f;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/keniu/security/a/s;->b(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 82
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
