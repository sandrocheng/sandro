.class Lcom/avast/android/generic/notification/k;
.super Landroid/os/AsyncTask;
.source "AvastNotificationManager.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/notification/j;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/notification/j;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/avast/android/generic/notification/k;->a:Lcom/avast/android/generic/notification/j;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/avast/android/generic/notification/k;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v0}, Lcom/avast/android/generic/notification/j;->b(Lcom/avast/android/generic/notification/j;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/notification/k;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v1}, Lcom/avast/android/generic/notification/j;->a(Lcom/avast/android/generic/notification/j;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 166
    :goto_0
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    new-instance v0, Lcom/avast/android/generic/notification/a;

    invoke-direct {v0, v1}, Lcom/avast/android/generic/notification/a;-><init>(Landroid/database/Cursor;)V

    .line 168
    const-class v3, Lcom/avast/android/generic/notification/j;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    :try_start_1
    iget-object v4, p0, Lcom/avast/android/generic/notification/k;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v4}, Lcom/avast/android/generic/notification/j;->c(Lcom/avast/android/generic/notification/j;)Ljava/util/LinkedList;

    move-result-object v4

    iget-wide v5, v0, Lcom/avast/android/generic/notification/a;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v4, p0, Lcom/avast/android/generic/notification/k;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v4}, Lcom/avast/android/generic/notification/j;->d(Lcom/avast/android/generic/notification/j;)Ljava/util/Map;

    move-result-object v4

    iget-wide v5, v0, Lcom/avast/android/generic/notification/a;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 174
    :cond_1
    if-eqz v1, :cond_2

    .line 175
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_2
    return-object v2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 160
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/notification/k;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
