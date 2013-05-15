.class Lcom/avast/android/mobilesecurity/app/manager/a/f;
.super Landroid/os/AsyncTask;
.source "CachedAppsInfoprovider.java"


# instance fields
.field final synthetic a:Landroid/database/Cursor;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/avast/android/mobilesecurity/app/manager/a/e;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/manager/a/e;Landroid/database/Cursor;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->a:Landroid/database/Cursor;

    iput p3, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->b:I

    iput p4, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->c:I

    iput p5, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->d:I

    iput p6, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->e:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v0, v12}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->a(Lcom/avast/android/mobilesecurity/app/manager/a/e;Z)Z

    move v1, v2

    move v3, v2

    move v4, v2

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/a/f;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v4, v0, :cond_7

    .line 150
    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->a:Landroid/database/Cursor;

    monitor-enter v6

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->a:Landroid/database/Cursor;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 152
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->a:Landroid/database/Cursor;

    iget v5, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->b:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 153
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->a:Landroid/database/Cursor;

    iget v5, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->c:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 154
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->a:Landroid/database/Cursor;

    iget v5, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->d:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 155
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    if-lez v8, :cond_2

    .line 158
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->a(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/manager/a/g;

    .line 159
    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/a/g;

    invoke-direct {v0, v13}, Lcom/avast/android/mobilesecurity/app/manager/a/g;-><init>(Lcom/avast/android/mobilesecurity/app/manager/a/f;)V

    .line 161
    iput v11, v0, Lcom/avast/android/mobilesecurity/app/manager/a/g;->b:I

    .line 162
    iput v11, v0, Lcom/avast/android/mobilesecurity/app/manager/a/g;->a:I

    .line 165
    :cond_0
    iget v6, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->e:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_1

    .line 166
    iput v5, v0, Lcom/avast/android/mobilesecurity/app/manager/a/g;->b:I

    .line 169
    :cond_1
    iget v6, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->e:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_4

    .line 170
    iput v5, v0, Lcom/avast/android/mobilesecurity/app/manager/a/g;->a:I

    .line 175
    :goto_1
    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v6}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->a(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6

    .line 176
    :try_start_1
    iget-object v9, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v9}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->a(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    iget v6, v0, Lcom/avast/android/mobilesecurity/app/manager/a/g;->a:I

    if-le v6, v1, :cond_2

    .line 180
    iget v1, v0, Lcom/avast/android/mobilesecurity/app/manager/a/g;->a:I

    .line 185
    :cond_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->e:I

    if-ne v0, v12, :cond_5

    .line 186
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->c(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v5

    .line 197
    :goto_2
    if-le v0, v3, :cond_a

    .line 201
    :goto_3
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->d(Lcom/avast/android/mobilesecurity/app/manager/a/e;)I

    move-result v3

    if-ne v3, v11, :cond_3

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->e(Lcom/avast/android/mobilesecurity/app/manager/a/e;)I

    move-result v3

    rem-int v3, v4, v3

    if-nez v3, :cond_3

    .line 203
    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/manager/a/f;->publishProgress([Ljava/lang/Object;)V

    .line 206
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    .line 207
    goto/16 :goto_0

    .line 155
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 172
    :cond_4
    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v6}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->b(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Lcom/avast/android/mobilesecurity/app/manager/a/b;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/avast/android/mobilesecurity/app/manager/a/b;->a(I)J

    move-result-wide v9

    long-to-int v6, v9

    iput v6, v0, Lcom/avast/android/mobilesecurity/app/manager/a/g;->a:I

    goto :goto_1

    .line 177
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 189
    :cond_5
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->c(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 190
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->b(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Lcom/avast/android/mobilesecurity/app/manager/a/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/avast/android/mobilesecurity/app/manager/a/b;->a(Ljava/lang/String;)J

    move-result-wide v5

    long-to-int v0, v5

    .line 191
    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v5}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->c(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 193
    :cond_6
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->c(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 209
    :cond_7
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 210
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->a(Lcom/avast/android/mobilesecurity/app/manager/a/e;I)I

    .line 211
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v0, v3}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->b(Lcom/avast/android/mobilesecurity/app/manager/a/e;I)I

    .line 212
    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/manager/a/f;->publishProgress([Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->b(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Lcom/avast/android/mobilesecurity/app/manager/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/b;->a()V

    .line 217
    :cond_8
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->a(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 218
    :try_start_4
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->a(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/app/manager/a/g;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v5}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->b(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Lcom/avast/android/mobilesecurity/app/manager/a/b;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/avast/android/mobilesecurity/app/manager/a/b;->b(I)I

    move-result v0

    iput v0, v1, Lcom/avast/android/mobilesecurity/app/manager/a/g;->b:I

    goto :goto_4

    .line 221
    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_9
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 223
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v0, v2}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->a(Lcom/avast/android/mobilesecurity/app/manager/a/e;Z)Z

    .line 225
    return-object v13

    :cond_a
    move v0, v3

    goto/16 :goto_3
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1
    .parameter

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->f(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Lcom/avast/android/mobilesecurity/app/manager/a/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/h;->a()V

    .line 232
    return-void
.end method

.method protected varargs b([Ljava/lang/Void;)V
    .locals 1
    .parameter

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/f;->f:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->f(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Lcom/avast/android/mobilesecurity/app/manager/a/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/h;->a()V

    .line 238
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 134
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/a/f;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/a/f;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/a/f;->b([Ljava/lang/Void;)V

    return-void
.end method
