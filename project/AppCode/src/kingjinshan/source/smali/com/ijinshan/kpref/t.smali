.class public final Lcom/ijinshan/kpref/t;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# static fields
.field public static final a:Ljava/lang/String; = "android.preference"

.field public static final b:Ljava/lang/String; = "_has_set_default_values"

.field private static final c:Ljava/lang/String; = "PreferenceManager"


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Landroid/content/Context;

.field private f:J

.field private g:I

.field private h:Landroid/content/SharedPreferences;

.field private i:Landroid/content/SharedPreferences$Editor;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lcom/ijinshan/kpref/PreferenceScreen;

.field private n:Ljava/util/List;

.field private o:Ljava/util/List;

.field private p:Ljava/util/List;

.field private q:Ljava/util/List;

.field private r:Lcom/ijinshan/kpref/x;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ijinshan/kpref/t;->f:J

    .line 137
    iput-object p1, p0, Lcom/ijinshan/kpref/t;->d:Landroid/app/Activity;

    .line 138
    const/16 v0, 0x64

    iput v0, p0, Lcom/ijinshan/kpref/t;->g:I

    .line 140
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/t;->c(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ijinshan/kpref/t;->f:J

    .line 152
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/t;->c(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method private a(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 318
    iput p1, p0, Lcom/ijinshan/kpref/t;->l:I

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kpref/t;->h:Landroid/content/SharedPreferences;

    .line 320
    return-void
.end method

.method private static a(Landroid/content/Context;IZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 421
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_has_set_default_values"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez p2, :cond_0

    const-string v2, "_has_set_default_values"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Lcom/ijinshan/kpref/t;

    invoke-direct {v2, p0}, Lcom/ijinshan/kpref/t;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v0}, Lcom/ijinshan/kpref/t;->a(Ljava/lang/String;)V

    iput v3, v2, Lcom/ijinshan/kpref/t;->l:I

    iput-object v4, v2, Lcom/ijinshan/kpref/t;->h:Landroid/content/SharedPreferences;

    invoke-virtual {v2, p0, p1, v4}, Lcom/ijinshan/kpref/t;->a(Landroid/content/Context;ILcom/ijinshan/kpref/PreferenceScreen;)Lcom/ijinshan/kpref/PreferenceScreen;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_has_set_default_values"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 436
    const-string v0, "_has_set_default_values"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 439
    if-nez p4, :cond_0

    const-string v1, "_has_set_default_values"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    :cond_0
    new-instance v1, Lcom/ijinshan/kpref/t;

    invoke-direct {v1, p0}, Lcom/ijinshan/kpref/t;-><init>(Landroid/content/Context;)V

    .line 441
    invoke-direct {v1, p1}, Lcom/ijinshan/kpref/t;->a(Ljava/lang/String;)V

    .line 442
    iput p2, v1, Lcom/ijinshan/kpref/t;->l:I

    iput-object v3, v1, Lcom/ijinshan/kpref/t;->h:Landroid/content/SharedPreferences;

    .line 443
    invoke-virtual {v1, p0, p3, v3}, Lcom/ijinshan/kpref/t;->a(Landroid/content/Context;ILcom/ijinshan/kpref/PreferenceScreen;)Lcom/ijinshan/kpref/PreferenceScreen;

    .line 445
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_has_set_default_values"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 449
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/ijinshan/kpref/t;->k:Ljava/lang/String;

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kpref/t;->h:Landroid/content/SharedPreferences;

    .line 297
    return-void
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 493
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/t;->i:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->i:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/ijinshan/kpref/t;->j:Z

    .line 506
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter

    .prologue
    .line 347
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/ijinshan/kpref/v;)V
    .locals 1
    .parameter

    .prologue
    .line 556
    monitor-enter p0

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 560
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/ijinshan/kpref/t;->e:Landroid/content/Context;

    .line 158
    invoke-static {p1}, Lcom/ijinshan/kpref/t;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/t;->a(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->k:Ljava/lang/String;

    return-object v0
.end method

.method private m()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/ijinshan/kpref/t;->l:I

    return v0
.end method

.method private static n()I
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method private o()Landroid/content/Context;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->e:Landroid/content/Context;

    return-object v0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 732
    monitor-enter p0

    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->q:Ljava/util/List;

    if-nez v0, :cond_1

    .line 735
    monitor-exit p0

    .line 745
    :cond_0
    return-void

    .line 738
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ijinshan/kpref/t;->q:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 739
    iget-object v1, p0, Lcom/ijinshan/kpref/t;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 740
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_0

    .line 743
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/DialogInterface;

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 742
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final a()J
    .locals 4

    .prologue
    .line 271
    monitor-enter p0

    .line 272
    :try_start_0
    iget-wide v0, p0, Lcom/ijinshan/kpref/t;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/ijinshan/kpref/t;->f:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;
    .locals 1
    .parameter

    .prologue
    .line 391
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->m:Lcom/ijinshan/kpref/PreferenceScreen;

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x0

    .line 395
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->m:Lcom/ijinshan/kpref/PreferenceScreen;

    invoke-virtual {v0, p1}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Lcom/ijinshan/kpref/PreferenceScreen;
    .locals 2
    .parameter

    .prologue
    .line 260
    new-instance v0, Lcom/ijinshan/kpref/PreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ijinshan/kpref/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 261
    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Lcom/ijinshan/kpref/t;)V

    .line 262
    return-object v0
.end method

.method public final a(Landroid/content/Context;ILcom/ijinshan/kpref/PreferenceScreen;)Lcom/ijinshan/kpref/PreferenceScreen;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/t;->a(Z)V

    .line 249
    new-instance v0, Lcom/ijinshan/kpref/s;

    invoke-direct {v0, p1, p0}, Lcom/ijinshan/kpref/s;-><init>(Landroid/content/Context;Lcom/ijinshan/kpref/t;)V

    .line 250
    invoke-virtual {v0, p2, p3}, Lcom/ijinshan/kpref/s;->a(ILcom/ijinshan/kpref/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceScreen;

    .line 251
    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Lcom/ijinshan/kpref/t;)V

    .line 254
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ijinshan/kpref/t;->a(Z)V

    .line 256
    return-object v0
.end method

.method final a(Landroid/content/Intent;Lcom/ijinshan/kpref/PreferenceScreen;)Lcom/ijinshan/kpref/PreferenceScreen;
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 191
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 193
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    move v3, v0

    move-object v4, p2

    :goto_0
    if-ltz v3, :cond_0

    .line 194
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 195
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 197
    if-eqz v5, :cond_1

    const-string v6, "android.preference"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "android.preference"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 207
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    :try_start_0
    iget-object v5, p0, Lcom/ijinshan/kpref/t;->e:Landroid/content/Context;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 218
    new-instance v6, Lcom/ijinshan/kpref/s;

    invoke-direct {v6, v5, p0}, Lcom/ijinshan/kpref/s;-><init>(Landroid/content/Context;Lcom/ijinshan/kpref/t;)V

    .line 219
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v7, "android.preference"

    invoke-virtual {v0, v5, v7}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 221
    invoke-virtual {v6, v5, v4}, Lcom/ijinshan/kpref/s;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/ijinshan/kpref/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceScreen;

    .line 223
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 193
    :goto_1
    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v5

    .line 213
    const-string v6, "PreferenceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not create context for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 215
    goto :goto_1

    .line 227
    :cond_0
    invoke-virtual {v4, p0}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Lcom/ijinshan/kpref/t;)V

    .line 229
    return-object v4

    :cond_1
    move-object v0, v4

    goto :goto_1
.end method

.method final a(ILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 569
    monitor-enter p0

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->n:Ljava/util/List;

    if-nez v0, :cond_1

    monitor-exit p0

    .line 580
    :cond_0
    return-void

    .line 571
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ijinshan/kpref/t;->n:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 572
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 575
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 576
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kpref/v;

    invoke-interface {p0, p1, p2}, Lcom/ijinshan/kpref/v;->a(ILandroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 698
    monitor-enter p0

    .line 700
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->q:Ljava/util/List;

    if-nez v0, :cond_0

    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kpref/t;->q:Ljava/util/List;

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/ijinshan/kpref/u;)V
    .locals 1
    .parameter

    .prologue
    .line 636
    monitor-enter p0

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->p:Ljava/util/List;

    if-nez v0, :cond_0

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kpref/t;->p:Ljava/util/List;

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/ijinshan/kpref/v;)V
    .locals 1
    .parameter

    .prologue
    .line 539
    monitor-enter p0

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->n:Ljava/util/List;

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kpref/t;->n:Ljava/util/List;

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/ijinshan/kpref/w;)V
    .locals 1
    .parameter

    .prologue
    .line 588
    monitor-enter p0

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->o:Ljava/util/List;

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kpref/t;->o:Ljava/util/List;

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/ijinshan/kpref/x;)V
    .locals 0
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/ijinshan/kpref/t;->r:Lcom/ijinshan/kpref/x;

    .line 755
    return-void
.end method

.method final a(Lcom/ijinshan/kpref/PreferenceScreen;)Z
    .locals 1
    .parameter

    .prologue
    .line 375
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->m:Lcom/ijinshan/kpref/PreferenceScreen;

    if-eq p1, v0, :cond_0

    .line 376
    iput-object p1, p0, Lcom/ijinshan/kpref/t;->m:Lcom/ijinshan/kpref/PreferenceScreen;

    .line 377
    const/4 v0, 0x1

    .line 380
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->h:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/ijinshan/kpref/t;->k:Ljava/lang/String;

    iget v2, p0, Lcom/ijinshan/kpref/t;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/t;->h:Landroid/content/SharedPreferences;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->h:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method final b(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 709
    monitor-enter p0

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->q:Ljava/util/List;

    if-nez v0, :cond_0

    .line 712
    monitor-exit p0

    .line 716
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 716
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(Lcom/ijinshan/kpref/u;)V
    .locals 1
    .parameter

    .prologue
    .line 653
    monitor-enter p0

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 657
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(Lcom/ijinshan/kpref/w;)V
    .locals 1
    .parameter

    .prologue
    .line 605
    monitor-enter p0

    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 609
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final c()Lcom/ijinshan/kpref/PreferenceScreen;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->m:Lcom/ijinshan/kpref/PreferenceScreen;

    return-object v0
.end method

.method final d()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/ijinshan/kpref/t;->j:Z

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->i:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/ijinshan/kpref/t;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/t;->i:Landroid/content/SharedPreferences$Editor;

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->i:Landroid/content/SharedPreferences$Editor;

    .line 477
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/ijinshan/kpref/t;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/ijinshan/kpref/t;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final f()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->d:Landroid/app/Activity;

    return-object v0
.end method

.method final g()V
    .locals 3

    .prologue
    .line 619
    monitor-enter p0

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->o:Ljava/util/List;

    if-nez v0, :cond_1

    monitor-exit p0

    .line 628
    :cond_0
    return-void

    .line 621
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ijinshan/kpref/t;->o:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 622
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 625
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 626
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kpref/w;

    invoke-interface {p0}, Lcom/ijinshan/kpref/w;->a()V

    .line 625
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final h()V
    .locals 4

    .prologue
    .line 665
    const/4 v0, 0x0

    .line 667
    monitor-enter p0

    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/ijinshan/kpref/t;->p:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ijinshan/kpref/t;->p:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    .line 671
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    if-eqz v1, :cond_0

    .line 674
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 675
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 676
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/u;

    invoke-interface {v0}, Lcom/ijinshan/kpref/u;->k()V

    .line 675
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 681
    :cond_0
    invoke-direct {p0}, Lcom/ijinshan/kpref/t;->p()V

    .line 682
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method final i()I
    .locals 2

    .prologue
    .line 692
    monitor-enter p0

    .line 693
    :try_start_0
    iget v0, p0, Lcom/ijinshan/kpref/t;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ijinshan/kpref/t;->g:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final j()V
    .locals 0

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/ijinshan/kpref/t;->p()V

    .line 726
    return-void
.end method

.method final k()Lcom/ijinshan/kpref/x;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/ijinshan/kpref/t;->r:Lcom/ijinshan/kpref/x;

    return-object v0
.end method
