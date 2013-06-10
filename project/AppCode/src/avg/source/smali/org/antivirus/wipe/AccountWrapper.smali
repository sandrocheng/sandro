.class public Lorg/antivirus/wipe/AccountWrapper;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;

.field private b:[Landroid/accounts/AuthenticatorDescription;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/antivirus/wipe/AccountWrapper;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAccountNames(Landroid/content/Context;)[Lorg/antivirus/wipe/a;
    .locals 8

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/wipe/AccountWrapper;->b:[Landroid/accounts/AuthenticatorDescription;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/antivirus/wipe/AccountWrapper;->b:[Landroid/accounts/AuthenticatorDescription;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/antivirus/wipe/AccountWrapper;->a:Ljava/util/Map;

    iget-object v3, p0, Lorg/antivirus/wipe/AccountWrapper;->b:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v4, p0, Lorg/antivirus/wipe/AccountWrapper;->b:[Landroid/accounts/AuthenticatorDescription;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    array-length v0, v2

    new-array v3, v0, [Lorg/antivirus/wipe/a;

    array-length v4, v2

    move v0, v1

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v2, v1

    new-instance v6, Lorg/antivirus/wipe/a;

    invoke-direct {v6, p0}, Lorg/antivirus/wipe/a;-><init>(Lorg/antivirus/wipe/AccountWrapper;)V

    aput-object v6, v3, v0

    aget-object v6, v3, v0

    iget-object v7, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v7, v6, Lorg/antivirus/wipe/a;->a:Ljava/lang/String;

    aget-object v6, v3, v0

    iget-object v7, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v7, v6, Lorg/antivirus/wipe/a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v5, v3, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/antivirus/wipe/a;->c:Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method public getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/antivirus/wipe/AccountWrapper;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/wipe/AccountWrapper;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getNewMainMailAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    const-string v0, ""

    if-lez v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method
