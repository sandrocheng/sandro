.class public final Lorg/antivirus/core/b/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "nahche"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lorg/antivirus/core/b/g;->a:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/core/b/g;->a:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "rishuy"

    invoke-virtual {v0, v1, p1}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lorg/antivirus/core/b/g;->e()J

    return-void
.end method

.method public final a()Z
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/b/g;->a:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "haimhauserlahatz"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->getUnObfuscatedBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/b/g;->a:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "haimhauserlahatz"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->putUnObfuscatedBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lorg/antivirus/core/b/g;->e()J

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/b/g;->a:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "rishuy"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/b/g;->a:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "id"

    const-string v2, "0-0"

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()J
    .locals 6

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lorg/antivirus/core/b/g;->a()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lorg/antivirus/core/b/g;->a:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v5, "taarihsfira"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->putUnObfuscatedLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final f()J
    .locals 4

    iget-object v0, p0, Lorg/antivirus/core/b/g;->a:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "taarihsfira"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->getUnObfuscatedLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()Lorg/antivirus/core/b/b;
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/b/g;->a:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v1, "ficherimtvmbeyote"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->getUnObfuscatedInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lorg/antivirus/core/b/b;->a(I)Lorg/antivirus/core/b/b;

    move-result-object v0

    return-object v0
.end method
