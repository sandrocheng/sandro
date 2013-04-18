.class final Lcom/keniu/security/b/t;
.super Lcom/keniu/security/b/s;
.source "SystemContactDaoImplLevel5.java"


# static fields
.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I

.field private static final f:I


# instance fields
.field private final g:[Ljava/lang/String;

.field private final h:[Ljava/lang/String;

.field private final i:[Ljava/lang/String;

.field private final j:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/keniu/security/b/s;-><init>(Landroid/content/Context;)V

    .line 36
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "has_phone_number"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/keniu/security/b/t;->g:[Ljava/lang/String;

    .line 38
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data15"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/keniu/security/b/t;->h:[Ljava/lang/String;

    .line 39
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/keniu/security/b/t;->i:[Ljava/lang/String;

    .line 40
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/keniu/security/b/t;->j:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method private a(Lcom/jxphone/mosecurity/c/b;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 134
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->a()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 136
    const-string v1, "photo"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 138
    iget-object v0, p0, Lcom/keniu/security/b/t;->a:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/keniu/security/b/t;->h:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 140
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 142
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/jxphone/mosecurity/c/b;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private a(Lcom/jxphone/mosecurity/c/b;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 151
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 153
    iget-object v0, p0, Lcom/keniu/security/b/t;->a:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/keniu/security/b/t;->h:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 155
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 157
    if-eqz v1, :cond_0

    .line 158
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/jxphone/mosecurity/c/b;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private a(J)[Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 168
    iget-object v0, p0, Lcom/keniu/security/b/t;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/keniu/security/b/t;->i:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 174
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 175
    new-array v2, v1, [Ljava/lang/String;

    move v3, v6

    .line 176
    :goto_0
    if-ge v3, v1, :cond_0

    .line 177
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 178
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private c(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 91
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    const-string v0, "1234567890"

    .line 93
    :goto_0
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 95
    iget-object v0, p0, Lcom/keniu/security/b/t;->a:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/keniu/security/b/t;->j:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 96
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;
    .locals 1
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/keniu/security/b/t;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 54
    .line 58
    :try_start_0
    invoke-direct {p0, p1}, Lcom/keniu/security/b/t;->c(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 59
    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    new-instance v7, Lcom/jxphone/mosecurity/c/b;

    invoke-direct {v7}, Lcom/jxphone/mosecurity/c/b;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 61
    :try_start_2
    sget-object v0, Lcom/jxphone/mosecurity/c/c;->f:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v7, v0}, Lcom/jxphone/mosecurity/c/b;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 62
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jxphone/mosecurity/c/b;->a(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jxphone/mosecurity/c/b;->b(Ljava/lang/String;)V

    .line 65
    if-eqz p2, :cond_1

    .line 66
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/keniu/security/b/t;->a:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/keniu/security/b/t;->h:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/jxphone/mosecurity/c/b;->a(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 72
    :cond_1
    if-eqz v6, :cond_2

    .line 73
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v7

    .line 77
    :goto_0
    return-object v0

    .line 66
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 69
    :catch_0
    move-exception v0

    move-object v1, v7

    move-object v2, v6

    :goto_1
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 72
    if-eqz v2, :cond_5

    .line 73
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 74
    goto :goto_0

    .line 72
    :cond_3
    if-eqz v6, :cond_6

    .line 73
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 74
    goto :goto_0

    .line 72
    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_4

    .line 73
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_4
    throw v0

    .line 72
    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 69
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v6

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 102
    iget-object v0, p0, Lcom/keniu/security/b/t;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/keniu/security/b/t;->g:[Ljava/lang/String;

    const-string v5, "display_name COLLATE LOCALIZED asc"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 104
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 106
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v11, :cond_0

    .line 110
    new-instance v9, Lcom/jxphone/mosecurity/c/b;

    invoke-direct {v9}, Lcom/jxphone/mosecurity/c/b;-><init>()V

    .line 112
    sget-object v0, Lcom/jxphone/mosecurity/c/c;->f:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v9, v0}, Lcom/jxphone/mosecurity/c/b;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 113
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/jxphone/mosecurity/c/b;->a(I)V

    .line 114
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/jxphone/mosecurity/c/b;->a(Ljava/lang/String;)V

    .line 115
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Lcom/jxphone/mosecurity/c/b;->a()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "photo"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/keniu/security/b/t;->a:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/keniu/security/b/t;->h:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/jxphone/mosecurity/c/b;->a(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 116
    invoke-virtual {v9}, Lcom/jxphone/mosecurity/c/b;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/keniu/security/b/t;->a(J)[Ljava/lang/String;

    move-result-object v0

    .line 117
    array-length v1, v0

    move v2, v10

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 118
    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 119
    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v9}, Lcom/jxphone/mosecurity/c/b;->i()Lcom/jxphone/mosecurity/c/b;

    move-result-object v4

    .line 122
    invoke-virtual {v4, v3}, Lcom/jxphone/mosecurity/c/b;->b(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 126
    :cond_3
    :try_start_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->trimToSize()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v8
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/keniu/security/b/t;->c(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 84
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 86
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    .line 84
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method
