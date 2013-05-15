.class public Lcom/avast/android/generic/d/a;
.super Ljava/lang/Object;
.source "CursorDAO.java"

# interfaces
.implements Lcom/avast/android/generic/d/e;
.implements Lcom/avast/android/generic/d/f;


# instance fields
.field protected a:Landroid/net/Uri;

.field private b:Landroid/database/Cursor;

.field private c:Lcom/avast/android/generic/util/x;


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/util/x;Landroid/database/Cursor;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/avast/android/generic/d/a;->c:Lcom/avast/android/generic/util/x;

    .line 36
    iput-object p2, p0, Lcom/avast/android/generic/d/a;->b:Landroid/database/Cursor;

    .line 37
    iput-object p3, p0, Lcom/avast/android/generic/d/a;->a:Landroid/net/Uri;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/d/a;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avast/android/generic/d/a;->b:Landroid/database/Cursor;

    if-ne v0, p1, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/d/a;->b:Landroid/database/Cursor;

    .line 62
    iput-object p1, p0, Lcom/avast/android/generic/d/a;->b:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/avast/android/generic/d/a;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    iget-object v1, p0, Lcom/avast/android/generic/d/a;->c:Lcom/avast/android/generic/util/x;

    iget-object v2, p0, Lcom/avast/android/generic/d/a;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/avast/android/generic/util/x;->a(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 118
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 119
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/avast/android/generic/d/a;->c:Lcom/avast/android/generic/util/x;

    iget-object v2, p0, Lcom/avast/android/generic/d/a;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/avast/android/generic/util/x;->a(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 69
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 70
    iget-object v1, p0, Lcom/avast/android/generic/d/a;->c:Lcom/avast/android/generic/util/x;

    iget-object v2, p0, Lcom/avast/android/generic/d/a;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/avast/android/generic/util/x;->a(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/avast/android/generic/d/a;->b:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return p2

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/d/a;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/avast/android/generic/d/a;->b:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/avast/android/generic/d/a;->b:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/d/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/avast/android/generic/d/a;->b:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-object p2

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/d/a;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/avast/android/generic/d/a;->b:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/avast/android/generic/d/a;->b:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/avast/android/generic/d/a;->b:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return p2

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/d/a;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/avast/android/generic/d/a;->b:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/avast/android/generic/d/a;->b:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move p2, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
