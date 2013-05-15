.class public Lcom/avast/android/generic/util/x;
.super Landroid/content/AsyncQueryHandler;
.source "NotifyingAsyncQueryHandler.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/avast/android/generic/util/y;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/avast/android/generic/util/x;->a(Lcom/avast/android/generic/util/y;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 95
    const/4 v1, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/avast/android/generic/util/x;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public a(Lcom/avast/android/generic/util/y;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/avast/android/generic/util/x;->a:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lcom/avast/android/generic/util/x;->onUpdateComplete(ILjava/lang/Object;I)V

    .line 136
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lcom/avast/android/generic/util/x;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    move-object v0, v3

    .line 120
    :goto_0
    if-eqz v0, :cond_0

    .line 121
    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/avast/android/generic/util/y;->a(ILjava/lang/Object;Landroid/database/Cursor;Landroid/net/Uri;I)V

    .line 123
    :cond_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/util/x;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/y;

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 109
    iget-object v0, p0, Lcom/avast/android/generic/util/x;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    move-object v0, v4

    .line 110
    :goto_0
    if-eqz v0, :cond_2

    .line 111
    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/avast/android/generic/util/y;->a(ILjava/lang/Object;Landroid/database/Cursor;Landroid/net/Uri;I)V

    .line 115
    :cond_0
    :goto_1
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/util/x;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/y;

    goto :goto_0

    .line 112
    :cond_2
    if-eqz p3, :cond_0

    .line 113
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-object v0, p0, Lcom/avast/android/generic/util/x;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    move-object v0, v3

    .line 128
    :goto_0
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    .line 129
    invoke-interface/range {v0 .. v5}, Lcom/avast/android/generic/util/y;->a(ILjava/lang/Object;Landroid/database/Cursor;Landroid/net/Uri;I)V

    .line 131
    :cond_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/util/x;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/y;

    goto :goto_0
.end method
