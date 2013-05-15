.class public Lcom/avast/android/generic/d/d;
.super Ljava/lang/Object;
.source "ProviderDAO.java"

# interfaces
.implements Lcom/avast/android/generic/d/e;
.implements Lcom/avast/android/generic/d/f;


# instance fields
.field protected a:Landroid/net/Uri;

.field protected b:Landroid/database/Cursor;

.field private c:Lcom/avast/android/generic/util/x;

.field private d:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/avast/android/generic/d/d;->a:Landroid/net/Uri;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/d/d;->c:Lcom/avast/android/generic/util/x;

    .line 63
    iput-object p1, p0, Lcom/avast/android/generic/d/d;->d:Landroid/content/ContentResolver;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/avast/android/generic/util/x;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/avast/android/generic/d/d;->a:Landroid/net/Uri;

    .line 49
    iput-object p3, p0, Lcom/avast/android/generic/d/d;->c:Lcom/avast/android/generic/util/x;

    .line 50
    iput-object p1, p0, Lcom/avast/android/generic/d/d;->d:Landroid/content/ContentResolver;

    .line 51
    return-void
.end method

.method private a(Landroid/content/ContentValues;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->a:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->c:Lcom/avast/android/generic/util/x;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->c:Lcom/avast/android/generic/util/x;

    iget-object v1, p0, Lcom/avast/android/generic/d/d;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/avast/android/generic/util/x;->a(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->d:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/avast/android/generic/d/d;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/d/d;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 145
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    invoke-direct {p0, v0}, Lcom/avast/android/generic/d/d;->a(Landroid/content/ContentValues;)V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 170
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 171
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v0}, Lcom/avast/android/generic/d/d;->a(Landroid/content/ContentValues;)V

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 120
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 121
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 122
    invoke-direct {p0, v0}, Lcom/avast/android/generic/d/d;->a(Landroid/content/ContentValues;)V

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return p2

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/d/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-object p2

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/avast/android/generic/d/d;->c()V

    .line 94
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->a:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "You must set the uri before calling this method."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->d:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/avast/android/generic/d/d;->a:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    .line 99
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 107
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 104
    iput-object v2, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return p2

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

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

.method public c()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/avast/android/generic/d/d;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_0
    return-void
.end method
