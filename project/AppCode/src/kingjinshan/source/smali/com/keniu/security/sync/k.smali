.class public final Lcom/keniu/security/sync/k;
.super Ljava/lang/Object;
.source "SyncPreference.java"


# static fields
.field private static a:Lcom/keniu/security/sync/k;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static a()Lcom/keniu/security/sync/k;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/keniu/security/sync/k;->a:Lcom/keniu/security/sync/k;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/keniu/security/sync/k;

    invoke-direct {v0}, Lcom/keniu/security/sync/k;-><init>()V

    sput-object v0, Lcom/keniu/security/sync/k;->a:Lcom/keniu/security/sync/k;

    .line 21
    :cond_0
    sget-object v0, Lcom/keniu/security/sync/k;->a:Lcom/keniu/security/sync/k;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-static {p1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/k;->b:Landroid/content/SharedPreferences;

    .line 26
    iget-object v0, p0, Lcom/keniu/security/sync/k;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/k;->c:Landroid/content/SharedPreferences$Editor;

    .line 27
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/keniu/security/sync/k;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/keniu/security/sync/k;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    iget-object v0, p0, Lcom/keniu/security/sync/k;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/keniu/security/sync/k;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 36
    iget-object v0, p0, Lcom/keniu/security/sync/k;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/keniu/security/sync/k;->c:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    iget-object v0, p0, Lcom/keniu/security/sync/k;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/keniu/security/sync/k;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    iget-object v0, p0, Lcom/keniu/security/sync/k;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    return-void
.end method

.method public final a(Ljava/lang/String;[Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 48
    move v0, v4

    move v1, v4

    .line 49
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 50
    const/4 v2, 0x2

    shl-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    aget-boolean v3, p2, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 50
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/keniu/security/sync/k;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/k;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;I)[Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    new-array v0, p2, [Z

    .line 100
    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/k;->d(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    move v1, v4

    .line 101
    :goto_0
    if-ge v1, p2, :cond_2

    .line 102
    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/k;->d(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    shl-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    and-int/2addr v2, v3

    shr-int/2addr v2, v1

    if-ne v2, v5, :cond_0

    move v2, v5

    :goto_1
    aput-boolean v2, v0, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 102
    goto :goto_1

    .line 105
    :cond_1
    const/4 v0, 0x0

    .line 107
    :cond_2
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/keniu/security/sync/k;->b:Landroid/content/SharedPreferences;

    const-string v1, "null"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/keniu/security/sync/k;->b:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/keniu/security/sync/k;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/k;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
