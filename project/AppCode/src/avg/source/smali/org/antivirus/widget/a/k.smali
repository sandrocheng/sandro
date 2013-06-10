.class public final Lorg/antivirus/widget/a/k;
.super Ljava/lang/Object;


# static fields
.field public static a:Lorg/antivirus/widget/a/k;


# instance fields
.field public b:Ljava/util/List;

.field public c:Ljava/util/Map;

.field public d:Landroid/widget/RemoteViews;

.field public e:Landroid/content/Context;

.field public f:Landroid/appwidget/AppWidgetManager;

.field public g:Landroid/content/ComponentName;

.field public h:Lorg/antivirus/widget/b/a;

.field private i:Landroid/util/SparseArray;

.field private j:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/antivirus/widget/a/k;->i:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/widget/a/k;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/antivirus/widget/a/k;->c:Ljava/util/Map;

    iput-object p1, p0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/widget/a/k;->f:Landroid/appwidget/AppWidgetManager;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/antivirus/widget/AvWidgetProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/widget/a/k;->g:Landroid/content/ComponentName;

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03003a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/antivirus/widget/a/k;->d:Landroid/widget/RemoteViews;

    new-instance v0, Lorg/antivirus/widget/b/a;

    invoke-direct {v0, p1}, Lorg/antivirus/widget/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/widget/a/k;->h:Lorg/antivirus/widget/b/a;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lorg/antivirus/widget/a/k;->h:Lorg/antivirus/widget/b/a;

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->i:Landroid/util/SparseArray;

    sget-object v1, Lorg/antivirus/widget/a/i;->a:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    const-class v2, Lorg/antivirus/widget/a/a/g;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->i:Landroid/util/SparseArray;

    sget-object v1, Lorg/antivirus/widget/a/i;->b:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    const-class v2, Lorg/antivirus/widget/a/a/c;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->i:Landroid/util/SparseArray;

    sget-object v1, Lorg/antivirus/widget/a/i;->c:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    const-class v2, Lorg/antivirus/widget/a/a/k;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->i:Landroid/util/SparseArray;

    sget-object v1, Lorg/antivirus/widget/a/i;->d:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    const-class v2, Lorg/antivirus/widget/a/a/j;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->i:Landroid/util/SparseArray;

    sget-object v1, Lorg/antivirus/widget/a/i;->e:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    const-class v2, Lorg/antivirus/widget/a/a/b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->i:Landroid/util/SparseArray;

    sget-object v1, Lorg/antivirus/widget/a/i;->f:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    const-class v2, Lorg/antivirus/widget/a/a/e;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->i:Landroid/util/SparseArray;

    sget-object v1, Lorg/antivirus/widget/a/i;->g:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    const-class v2, Lorg/antivirus/widget/a/a/a;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->i:Landroid/util/SparseArray;

    sget-object v1, Lorg/antivirus/widget/a/i;->h:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    const-class v2, Lorg/antivirus/widget/a/a/d;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->i:Landroid/util/SparseArray;

    sget-object v1, Lorg/antivirus/widget/a/i;->j:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    const-class v2, Lorg/antivirus/widget/a/a/f;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->i:Landroid/util/SparseArray;

    sget-object v1, Lorg/antivirus/widget/a/i;->i:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    const-class v2, Lorg/antivirus/widget/a/a/m;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->b:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lorg/antivirus/widget/a/l;

    const v3, 0x7f080119

    const v4, 0x7f08011a

    const v5, 0x7f08011c

    const v6, 0x7f08011b

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/antivirus/widget/a/l;-><init>(IIII)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->b:Ljava/util/List;

    new-instance v1, Lorg/antivirus/widget/a/l;

    const v2, 0x7f08011d

    const v3, 0x7f08011e

    const v4, 0x7f080120

    const v5, 0x7f08011f

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/antivirus/widget/a/l;-><init>(IIII)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->b:Ljava/util/List;

    const/4 v1, 0x2

    new-instance v2, Lorg/antivirus/widget/a/l;

    const v3, 0x7f080121

    const v4, 0x7f080122

    const v5, 0x7f080124

    const v6, 0x7f080123

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/antivirus/widget/a/l;-><init>(IIII)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->b:Ljava/util/List;

    const/4 v1, 0x3

    new-instance v2, Lorg/antivirus/widget/a/l;

    const v3, 0x7f080125

    const v4, 0x7f080126

    const v5, 0x7f080128

    const v6, 0x7f080127

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/antivirus/widget/a/l;-><init>(IIII)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/antivirus/widget/a/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/widget/a/k;->b()Z

    :cond_0
    return-void
.end method

.method private a(I)Lorg/antivirus/widget/a/a/n;
    .locals 3

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/widget/a/a/n;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/antivirus/widget/a/k;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/widget/a/a/n;

    iget-object v1, p0, Lorg/antivirus/widget/a/k;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid widget type request.: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", return default: protection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    const-class v0, Lorg/antivirus/widget/a/a/g;

    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;
    .locals 3

    const-class v1, Lorg/antivirus/widget/a/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/antivirus/widget/a/k;->a:Lorg/antivirus/widget/a/k;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/widget/a/k;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/antivirus/widget/a/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/antivirus/widget/a/k;->a:Lorg/antivirus/widget/a/k;

    :cond_0
    sget-object v0, Lorg/antivirus/widget/a/k;->a:Lorg/antivirus/widget/a/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Landroid/widget/RemoteViews;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/widget/a/k;->f:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lorg/antivirus/widget/a/k;->g:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "AppWidgetManager is not available. Cancel update"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/Boolean;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v1, "widgetConfig.data"

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/widget/a/l;

    iget v0, v0, Lorg/antivirus/widget/a/l;->e:I

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    if-nez p1, :cond_2

    :try_start_2
    const-string v0, "NULL"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private b(I)Z
    .locals 2

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/widget/a/l;

    iget v0, v0, Lorg/antivirus/widget/a/l;->e:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/widget/a/l;

    iput p2, v0, Lorg/antivirus/widget/a/l;->e:I

    return-void
.end method

.method public final a(Landroid/os/Bundle;)Z
    .locals 1

    sget-object v0, Lorg/antivirus/widget/a/i;->a:Lorg/antivirus/widget/a/i;

    invoke-virtual {v0}, Lorg/antivirus/widget/a/i;->a()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/antivirus/widget/a/k;->a(Landroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/os/Bundle;I)Z
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/antivirus/widget/a/k;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/antivirus/widget/a/k;->a()[Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_3

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lorg/antivirus/widget/a/k;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antivirus/widget/a/l;

    :try_start_0
    invoke-direct {p0, p2}, Lorg/antivirus/widget/a/k;->a(I)Lorg/antivirus/widget/a/a/n;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    iget-object v3, p0, Lorg/antivirus/widget/a/k;->d:Landroid/widget/RemoteViews;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/widget/a/a/n;->a(Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    or-int/2addr v5, v0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v0, "Couldn\'t instantiate widget item update. Widget item is not updated"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->d:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lorg/antivirus/widget/a/k;->a(Landroid/widget/RemoteViews;)V

    :cond_5
    move v1, v5

    goto :goto_0
.end method

.method public final a(Ljava/lang/Boolean;Z)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/antivirus/widget/a/k;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lorg/antivirus/widget/a/k;->f:Landroid/appwidget/AppWidgetManager;

    iget-object v3, p0, Lorg/antivirus/widget/a/k;->g:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    const-class v5, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v4, 0x4000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v4, 0x8000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "appWidgetId"

    aget v2, v2, v0

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "ExistingWidget"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    const/high16 v4, 0x800

    invoke-static {v2, v0, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f02015a

    :goto_0
    iget-object v3, p0, Lorg/antivirus/widget/a/k;->d:Landroid/widget/RemoteViews;

    const v4, 0x7f080114

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/widget/a/k;->d:Landroid/widget/RemoteViews;

    const v3, 0x7f080113

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->d:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lorg/antivirus/widget/a/k;->a(Landroid/widget/RemoteViews;)V

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v1, "AppWidgetManager is not available. Cancel update"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const v0, 0x7f020159

    goto :goto_0
.end method

.method public final declared-synchronized a()[Ljava/lang/Integer;
    .locals 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string v0, "widgetConfig.data"

    iget-object v2, p0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/lang/Integer;

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    array-length v1, v0

    aget-object v1, v3, v1

    const-string v4, "NULL"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    array-length v1, v0

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/antivirus/widget/a/k;->j:Ljava/lang/Boolean;

    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    new-array v0, v0, [Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/Boolean;Z)V
    .locals 12

    const/4 v6, 0x0

    const v11, 0x7f080118

    const/16 v10, 0x8

    const v9, 0x7f080116

    const/4 v8, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/antivirus/widget/a/k;->d:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antivirus/widget/a/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v0, v4, Lorg/antivirus/widget/a/l;->e:I

    invoke-direct {p0, v0}, Lorg/antivirus/widget/a/k;->a(I)Lorg/antivirus/widget/a/a/n;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    :try_start_2
    iget-object v1, p0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/widget/a/a/n;->a(Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t instantiate widget VO"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    :goto_2
    iget-object v0, p0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->d:Landroid/widget/RemoteViews;

    if-nez v0, :cond_3

    :cond_1
    const-string v0, "Widget cannot be updated - Context is null. Update will be performed on next request"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :goto_3
    return-void

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "Couldn\'t instantiate widget VO"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move-object v0, v6

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lorg/antivirus/AVService;->SERVICE_IDENTIFIER:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "__SAC"

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__SAD"

    sget-object v2, Lorg/antivirus/widget/a/i;->b:Lorg/antivirus/widget/a/i;

    invoke-virtual {v2}, Lorg/antivirus/widget/a/i;->a()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/antivirus/widget/a/k;->b(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Lorg/antivirus/widget/a/k;->a(Ljava/lang/Boolean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    const-class v2, Lorg/antivirus/ui/main/ActivationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    const/16 v2, 0xf

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/widget/a/k;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v9, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-eqz p2, :cond_4

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v11, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_4
    invoke-virtual {p0, p1, v8}, Lorg/antivirus/widget/a/k;->a(Ljava/lang/Boolean;Z)Z

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->d:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lorg/antivirus/widget/a/k;->a(Landroid/widget/RemoteViews;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/antivirus/widget/a/k;->d:Landroid/widget/RemoteViews;

    const v1, 0x7f080117

    iget-object v2, p0, Lorg/antivirus/widget/a/k;->e:Landroid/content/Context;

    const v3, 0x7f09018c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lorg/antivirus/widget/a/k;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v11, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4
.end method

.method public final declared-synchronized b()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/antivirus/widget/a/k;->f:Landroid/appwidget/AppWidgetManager;

    iget-object v3, p0, Lorg/antivirus/widget/a/k;->g:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v1, "AppWidgetManager is not available. Cancel reload"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/antivirus/widget/a/k;->a()[Ljava/lang/Integer;

    move-result-object v3

    array-length v2, v3

    if-eqz v2, :cond_0

    move v2, v0

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lorg/antivirus/widget/a/k;->a(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/antivirus/widget/a/k;->j:Ljava/lang/Boolean;

    invoke-static {}, Lorg/antivirus/AVSettings;->shouldShowActivationScreen()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p0, v2, v0}, Lorg/antivirus/widget/a/k;->b(Ljava/lang/Boolean;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public final b(Landroid/os/Bundle;)Z
    .locals 1

    sget-object v0, Lorg/antivirus/widget/a/i;->c:Lorg/antivirus/widget/a/i;

    invoke-virtual {v0}, Lorg/antivirus/widget/a/i;->a()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/antivirus/widget/a/k;->a(Landroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 2

    sget-object v0, Lorg/antivirus/widget/a/i;->g:Lorg/antivirus/widget/a/i;

    invoke-virtual {v0}, Lorg/antivirus/widget/a/i;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antivirus/widget/a/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lorg/antivirus/widget/a/i;->g:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/antivirus/widget/a/k;->a(Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    sget-object v0, Lorg/antivirus/widget/a/i;->i:Lorg/antivirus/widget/a/i;

    invoke-virtual {v0}, Lorg/antivirus/widget/a/i;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antivirus/widget/a/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lorg/antivirus/widget/a/i;->i:Lorg/antivirus/widget/a/i;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/i;->a()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/antivirus/widget/a/k;->a(Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/antivirus/widget/a/k;->f:Landroid/appwidget/AppWidgetManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/antivirus/widget/a/k;->f:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lorg/antivirus/widget/a/k;->g:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "AppWidgetManager is not available"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
