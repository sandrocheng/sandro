.class public Lcom/avast/android/mobilesecurity/app/filter/core/a;
.super Lcom/avast/android/generic/b;
.source "CallLogLoader.java"


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field private g:Landroid/content/ContentResolver;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "new"

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/a;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/avast/android/generic/b;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a;->g:Landroid/content/ContentResolver;

    .line 118
    const/4 v0, 0x3

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a;->h:I

    .line 119
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 226
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 228
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a;->g:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "lookup"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 231
    return-object v0
.end method


# virtual methods
.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/a;->w()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a;->h:I

    return v0
.end method

.method public w()Landroid/database/Cursor;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v3, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 151
    new-instance v6, Landroid/database/MatrixCursor;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v11

    const-string v1, "contact_uri"

    aput-object v1, v0, v12

    const-string v1, "name"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "new"

    aput-object v2, v0, v1

    invoke-direct {v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 157
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 161
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 164
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a;->h:I

    neg-int v0, v0

    invoke-virtual {v5, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 165
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a;->g:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/avast/android/mobilesecurity/app/filter/core/a;->f:[Ljava/lang/String;

    const-string v3, "NOT type=2 AND date>?"

    new-array v4, v12, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 172
    const-string v0, "number"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 173
    const-string v0, "date"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 174
    const-string v0, "new"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 177
    :cond_0
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 179
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/filter/core/c;

    iget v9, v0, Lcom/avast/android/mobilesecurity/app/filter/core/c;->e:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lcom/avast/android/mobilesecurity/app/filter/core/c;->e:I

    .line 207
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/filter/core/c;

    .line 210
    invoke-virtual {v6}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/avast/android/mobilesecurity/app/filter/core/c;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/filter/core/c;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/filter/core/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/filter/core/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    iget v3, v0, Lcom/avast/android/mobilesecurity/app/filter/core/c;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/avast/android/mobilesecurity/app/filter/core/c;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    iget v0, v0, Lcom/avast/android/mobilesecurity/app/filter/core/c;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 183
    :cond_1
    new-instance v9, Lcom/avast/android/mobilesecurity/app/filter/core/c;

    invoke-direct {v9, v13}, Lcom/avast/android/mobilesecurity/app/filter/core/c;-><init>(Lcom/avast/android/mobilesecurity/app/filter/core/b;)V

    .line 184
    iput-object v0, v9, Lcom/avast/android/mobilesecurity/app/filter/core/c;->d:Ljava/lang/String;

    .line 185
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/avast/android/mobilesecurity/app/filter/core/c;->a:J

    .line 186
    iput v12, v9, Lcom/avast/android/mobilesecurity/app/filter/core/c;->e:I

    .line 187
    const-string v10, ""

    iput-object v10, v9, Lcom/avast/android/mobilesecurity/app/filter/core/c;->c:Ljava/lang/String;

    .line 188
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/avast/android/mobilesecurity/app/filter/core/c;->f:J

    .line 189
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v9, Lcom/avast/android/mobilesecurity/app/filter/core/c;->g:I

    .line 190
    iput-object v13, v9, Lcom/avast/android/mobilesecurity/app/filter/core/c;->b:Landroid/net/Uri;

    .line 192
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 193
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 194
    const-string v11, "display_name"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/avast/android/mobilesecurity/app/filter/core/c;->c:Ljava/lang/String;

    .line 197
    const-string v11, "lookup"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 199
    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v11, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v9, Lcom/avast/android/mobilesecurity/app/filter/core/c;->b:Landroid/net/Uri;

    .line 202
    :cond_2
    iget-object v10, v9, Lcom/avast/android/mobilesecurity/app/filter/core/c;->c:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 203
    iget-object v10, v9, Lcom/avast/android/mobilesecurity/app/filter/core/c;->d:Ljava/lang/String;

    iput-object v10, v9, Lcom/avast/android/mobilesecurity/app/filter/core/c;->c:Ljava/lang/String;

    .line 205
    :cond_3
    invoke-interface {v7, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 215
    :cond_4
    return-object v6
.end method
