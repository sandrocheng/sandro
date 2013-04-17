.class public final Lbo;
.super Lbn;


# static fields
.field private static b:Landroid/content/ContentValues;

.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcp;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcp;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:[Ljava/lang/String;

.field private static k:J

.field private static l:J

.field private static m:Landroid/net/Uri;

.field private static final n:Landroid/net/Uri;

.field private static final o:Landroid/net/Uri;

.field private static final p:Landroid/net/Uri;

.field private static r:[C


# instance fields
.field private q:Lbr;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lbo;->b:Landroid/content/ContentValues;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lbo;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lbo;->d:Ljava/util/ArrayList;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v2, "HOME"

    aput-object v2, v0, v5

    const-string v2, "CELL"

    aput-object v2, v0, v6

    const-string v2, "WORK"

    aput-object v2, v0, v7

    const-string v2, "FAX;WORK"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "FAX;HOME"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "PAGER"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "OTHER"

    aput-object v3, v0, v2

    sput-object v0, Lbo;->e:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v2, "HOME"

    aput-object v2, v0, v5

    const-string v2, "WORK"

    aput-object v2, v0, v6

    const-string v2, "OTHER"

    aput-object v2, v0, v7

    sput-object v0, Lbo;->f:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "AIM"

    aput-object v2, v0, v1

    const-string v2, "MSN"

    aput-object v2, v0, v5

    const-string v2, "YAHOO"

    aput-object v2, v0, v6

    const-string v2, "SKYPE"

    aput-object v2, v0, v7

    const-string v2, "QQ"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "GTALK"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "ICQ"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "JABBER"

    aput-object v3, v0, v2

    sput-object v0, Lbo;->g:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v2, "WORK"

    aput-object v2, v0, v5

    const-string v2, "OTHER"

    aput-object v2, v0, v6

    sput-object v0, Lbo;->h:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbo;->i:Ljava/util/Map;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "TEL"

    aput-object v2, v0, v1

    const-string v2, "ADR"

    aput-object v2, v0, v5

    const-string v2, "EMAIL"

    aput-object v2, v0, v6

    const-string v2, "X-TC-IM"

    aput-object v2, v0, v7

    const-string v2, "FN"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "PHOTO"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "ORG"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "TITLE"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "NOTE"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "N"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "NICKNAME"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "X-FOCUS"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "CATEGORIES"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "RINGTONE"

    aput-object v3, v0, v2

    sput-object v0, Lbo;->j:[Ljava/lang/String;

    move v0, v1

    :goto_0
    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    const-wide/16 v2, 0x0

    sput-wide v2, Lbo;->k:J

    const-wide/16 v2, -0x1

    sput-wide v2, Lbo;->l:J

    const-string v0, "content://contacts/organizations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lbo;->n:Landroid/net/Uri;

    const-string v0, "content://contacts/contact_methods"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lbo;->o:Landroid/net/Uri;

    const-string v0, "content://contacts/phones"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lbo;->p:Landroid/net/Uri;

    new-array v0, v8, [C

    sput-object v0, Lbo;->r:[C

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    sget-object v0, Lbo;->r:[C

    const/16 v1, 0x3b

    aput-char v1, v0, v5

    sget-object v0, Lbo;->r:[C

    const/16 v1, 0xd

    aput-char v1, v0, v6

    sget-object v0, Lbo;->r:[C

    const/16 v1, 0xa

    aput-char v1, v0, v7

    return-void

    :cond_0
    sget-object v2, Lbo;->i:Ljava/util/Map;

    sget-object v3, Lbo;->j:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lbn;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbo;->q:Lbr;

    invoke-static {p1}, Lbr;->a(Landroid/content/Context;)Lbr;

    move-result-object v0

    iput-object v0, p0, Lbo;->q:Lbr;

    return-void
.end method

.method private static a(Lcp;)Landroid/content/ContentValues;
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ADR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "kind"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "data"

    iget-object v2, p0, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lct;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbo;->f:[Ljava/lang/String;

    aget-object v3, v1, v4

    invoke-static {v2, v3}, Lct;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    const-string v2, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "label"

    aget-object v3, v1, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    array-length v1, v1

    if-le v1, v5, :cond_0

    const-string v1, "isprimary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "person"

    sget-wide v2, Lbo;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    :cond_1
    const-string v1, "kind"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "data"

    iget-object v2, p0, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method private static a(Lcp;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lct;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbo;->h:[Ljava/lang/String;

    aget-object v3, v1, v4

    invoke-static {v2, v3}, Lct;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    const-string v2, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "label"

    aget-object v3, v1, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    array-length v1, v1

    if-le v1, v5, :cond_0

    const-string v1, "isprimary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "company"

    iget-object v2, p0, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "person"

    sget-wide v2, Lbo;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    :cond_2
    const-string v3, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private static a(J)V
    .locals 6

    const/4 v2, 0x0

    sget-wide v0, Lbo;->k:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    sget-object v0, Lbo;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "system_id=\'Contacts\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sput-wide v2, Lbo;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "person"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "group_id"

    sget-wide v2, Lbo;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lbo;->a:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(JLjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p1, p2}, Lbo;->a(J)V

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lbo;->q:Lbr;

    invoke-virtual {v2, v0}, Lbr;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget-object v0, p0, Lbo;->q:Lbr;

    invoke-static {p1, p2, v2}, Lbr;->a(JI)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lbo;->q:Lbr;

    invoke-static {v0}, Lbr;->b(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lbo;->q:Lbr;

    invoke-virtual {v0}, Lbr;->a()V

    iget-object v0, p0, Lbo;->q:Lbr;

    long-to-int v0, v2

    invoke-static {p1, p2, v0}, Lbr;->a(JI)Z

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri;Lcp;)Z
    .locals 4

    :try_start_0
    sget-object v0, Lbo;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    sget-object v0, Lbo;->b:Landroid/content/ContentValues;

    const-string v1, "data"

    iget-object v2, p1, Lcp;->b:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    sget-object v0, Lbo;->a:Landroid/content/ContentResolver;

    iget-object v1, p1, Lcp;->b:[B

    invoke-static {v0, p0, v1}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDaoV1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addPhoto(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static b(Landroid/content/Context;)Lbo;
    .locals 1

    new-instance v0, Lbo;

    invoke-direct {v0, p0}, Lbo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcp;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v7

    const-string v0, "type"

    aput-object v0, v2, v6

    const-string v0, "label"

    aput-object v0, v2, v8

    const/4 v0, 0x3

    const-string v1, "isprimary"

    aput-object v1, v2, v0

    sget-object v0, Lbo;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "person = ?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p0, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v5

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    new-instance v1, Lcp;

    invoke-direct {v1}, Lcp;-><init>()V

    const-string v2, "TEL"

    iget-object v3, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v7

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "number"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v8

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, "type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    const/16 v3, 0x8

    if-ge v2, v3, :cond_5

    sget-object v3, Lbo;->e:[Ljava/lang/String;

    aget-object v2, v3, v2

    if-eqz v2, :cond_3

    iget-object v3, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v6

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    const-string v2, "isprimary"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v6, :cond_4

    iput-boolean v6, v1, Lcp;->c:Z

    :cond_4
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v2, "label"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v6

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static f(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcp;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lbo;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "contact_methods"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcp;

    invoke-direct {v2}, Lcp;-><init>()V

    const-string v0, "kind"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_5

    const-string v0, "EMAIL"

    iget-object v3, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "label"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v2, v6

    goto :goto_0

    :cond_4
    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v10, :cond_2

    sget-object v3, Lbo;->f:[Ljava/lang/String;

    aget-object v0, v3, v0

    if-eqz v0, :cond_2

    iget-object v3, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    if-ne v0, v8, :cond_8

    const-string v0, "ADR"

    iget-object v3, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ";;"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lbo;->r:[C

    invoke-static {v3, v4}, Lde;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v3, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "label"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v10, :cond_2

    sget-object v3, Lbo;->f:[Ljava/lang/String;

    aget-object v0, v3, v0

    if-eqz v0, :cond_2

    iget-object v3, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_8
    const-string v0, "X-TC-IM"

    iget-object v3, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v3, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v0, "aux_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_c

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v3, Lci;->b:Z

    if-eqz v3, :cond_b

    const/4 v3, 0x7

    if-gt v0, v3, :cond_a

    sget-object v3, Lbo;->g:[Ljava/lang/String;

    aget-object v0, v3, v0

    if-eqz v0, :cond_2

    iget-object v3, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_a
    const-string v0, "FETION"

    iget-object v3, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_b
    const/4 v3, 0x7

    if-gt v0, v3, :cond_2

    sget-object v3, Lbo;->g:[Ljava/lang/String;

    aget-object v0, v3, v0

    if-eqz v0, :cond_2

    iget-object v3, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_c
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v3, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v3, v3, v7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private static g(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcp;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "person = ?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p0, v4, v7

    sget-object v0, Lbo;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_5

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Lcp;

    invoke-direct {v1}, Lcp;-><init>()V

    new-instance v2, Lcp;

    invoke-direct {v2}, Lcp;-><init>()V

    const-string v3, "ORG"

    iget-object v4, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v4, v4, v7

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TITLE"

    iget-object v4, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v4, v4, v7

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "company"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v4, v4, v9

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, "title"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v4, v4, v9

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v3, "label"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    const-string v3, "type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    sget-object v4, Lbo;->h:[Ljava/lang/String;

    aget-object v3, v4, v3

    if-eqz v3, :cond_4

    iget-object v4, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v4, v4, v8

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v2, v6

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_4

    iget-object v4, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v4, v4, v8

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [C

    const/16 v1, 0x5c

    aput-char v1, v0, v7

    const/16 v1, 0x3b

    aput-char v1, v0, v6

    const/16 v1, 0x72

    aput-char v1, v0, v4

    const/16 v1, 0x6e

    aput-char v1, v0, v5

    invoke-static {p0, v0}, Lde;->b(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_e

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_d

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_c

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x4

    if-le v0, v9, :cond_b

    const/4 v0, 0x4

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v6

    :goto_6
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    if-eqz v2, :cond_2

    const-string v2, " "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v6

    :goto_7
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    if-eqz v1, :cond_3

    const-string v1, " "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v6

    :cond_4
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    if-eqz v1, :cond_5

    const-string v1, " "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v6

    :cond_6
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    if-eqz v1, :cond_7

    const-string v1, " "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_7

    :cond_a
    move v2, v7

    goto :goto_6

    :cond_b
    move-object v0, v2

    goto :goto_5

    :cond_c
    move-object v5, v2

    goto :goto_4

    :cond_d
    move-object v4, v2

    goto/16 :goto_3

    :cond_e
    move-object v3, v2

    goto/16 :goto_2

    :cond_f
    move-object v1, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    sget-boolean v0, Lci;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lbo;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "_sync_account=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "phone"

    aput-object v6, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    move v0, v8

    :goto_1
    return v0

    :cond_0
    sget-boolean v0, Lci;->A:Z

    if-eqz v0, :cond_1

    sget-object v0, Lbo;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "_sync_account<>?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "SOURCE_SIM_CONTACTS"

    aput-object v6, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    sget-object v2, Lbo;->a:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Lcb$a;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcb$a;->a:Lcb$a;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lbo;->a:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcb$a;->c:Lcb$a;

    goto :goto_0

    :cond_2
    sget-object v0, Lcb$a;->b:Lcb$a;

    goto :goto_0
.end method

.method public final a(Lcc;)Ljava/lang/String;
    .locals 18

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    check-cast p1, Lcq;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcc;->d:Ljava/lang/Integer;

    :cond_1
    const/4 v9, 0x0

    sget-object v1, Lbo;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lbo;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v11, v1, [I

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v2, ""

    move v10, v1

    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcc;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p1

    iget-object v12, v0, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_d

    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_a

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v9}, Lbo;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcc;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ""

    move-object/from16 v0, p1

    iget-object v2, v0, Lcc;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_2
    sget-object v1, Lbo;->b:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    sget-boolean v1, Lci;->e:Z

    if-eqz v1, :cond_3

    sget-object v1, Lbo;->b:Landroid/content/ContentValues;

    const-string v2, "extra_group"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    sget-object v2, Lbo;->b:Landroid/content/ContentValues;

    const-string v12, "starred"

    if-eqz v4, :cond_e

    const-string v1, "1"

    :goto_3
    invoke-virtual {v2, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lbo;->b:Landroid/content/ContentValues;

    const-string v2, "name"

    invoke-static {v6}, Lbo;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lbo;->b:Landroid/content/ContentValues;

    const-string v2, "notes"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lci;->n:Z

    if-eqz v1, :cond_4

    sget-object v1, Lbo;->b:Landroid/content/ContentValues;

    const-string v2, "_sync_account"

    const-string v4, "phone"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v3, :cond_5

    sget-object v1, Lbo;->b:Landroid/content/ContentValues;

    const-string v2, "custom_ringtone"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v1, Lbo;->a:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lbo;->b:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lbo;->m:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    sput-wide v1, Lbo;->l:J

    sget-wide v1, Lbo;->l:J

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v9}, Lbo;->a(JLjava/util/ArrayList;)V

    :goto_4
    move-object/from16 v0, p1

    iget-object v1, v0, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcc;->d:Ljava/lang/Integer;

    :cond_6
    new-array v5, v8, [Landroid/content/ContentValues;

    new-array v6, v7, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v4, v1

    move v1, v2

    :goto_5
    if-lt v4, v10, :cond_15

    sget-object v1, Lbo;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lbo;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v1, :cond_7

    new-array v9, v1, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    move v3, v1

    :goto_6
    sget-object v1, Lbo;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1e

    sget-object v1, Lbo;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1e

    sget-object v1, Lbo;->a:Landroid/content/ContentResolver;

    sget-object v2, Lbo;->n:Landroid/net/Uri;

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_7
    if-lez v8, :cond_8

    sget-object v1, Lbo;->a:Landroid/content/ContentResolver;

    sget-object v2, Lbo;->p:Landroid/net/Uri;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_8
    if-lez v7, :cond_9

    sget-object v1, Lbo;->a:Landroid/content/ContentResolver;

    sget-object v2, Lbo;->o:Landroid/net/Uri;

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_9
    sget-wide v1, Lbo;->l:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcq;->b()Lcp;

    move-result-object v12

    sget-object v1, Lbo;->i:Ljava/util/Map;

    iget-object v13, v12, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v11, v10

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_b

    add-int/lit8 v1, v8, 0x1

    move v8, v9

    move-object/from16 v16, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v1

    move-object v1, v2

    move-object/from16 v2, v16

    :goto_7
    add-int/lit8 v9, v10, 0x1

    move/from16 v16, v9

    move v9, v8

    move/from16 v8, v16

    :goto_8
    move-object/from16 v0, p1

    iget-object v10, v0, Lcc;->d:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p1

    iput-object v10, v0, Lcc;->d:Ljava/lang/Integer;

    move v10, v8

    move v8, v7

    move v7, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_1

    :pswitch_1
    const/4 v6, 0x3

    iget-object v1, v12, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, -0x1

    aput v9, v11, v10

    move-object/from16 v16, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v1

    move-object/from16 v1, v16

    move/from16 v17, v7

    move v7, v8

    move v8, v6

    move/from16 v6, v17

    goto :goto_7

    :pswitch_2
    iget-object v1, v12, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, -0x1

    aput v5, v11, v10

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object/from16 v16, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v1

    move-object/from16 v1, v16

    goto :goto_7

    :pswitch_3
    const/4 v1, 0x2

    if-ge v9, v1, :cond_21

    const/4 v6, 0x2

    iget-object v1, v12, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, -0x1

    aput v9, v11, v10

    move-object/from16 v16, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v1

    move-object/from16 v1, v16

    move/from16 v17, v7

    move v7, v8

    move v8, v6

    move/from16 v6, v17

    goto :goto_7

    :pswitch_4
    if-gtz v9, :cond_21

    const/4 v6, 0x1

    iget-object v1, v12, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, -0x1

    aput v9, v11, v10

    move-object/from16 v16, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v1

    move-object/from16 v1, v16

    move/from16 v17, v7

    move v7, v8

    move v8, v6

    move/from16 v6, v17

    goto/16 :goto_7

    :pswitch_5
    iget-object v1, v12, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move/from16 v16, v1

    move-object v1, v2

    move-object v2, v3

    move/from16 v3, v16

    goto/16 :goto_7

    :pswitch_6
    iget-object v1, v12, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    goto/16 :goto_7

    :pswitch_7
    iget-object v1, v12, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    goto/16 :goto_7

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v12, 0x4

    if-ge v1, v12, :cond_21

    add-int/lit8 v1, v7, 0x1

    move v7, v8

    move v8, v9

    move/from16 v16, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v1

    move-object v1, v2

    move-object v2, v3

    move/from16 v3, v16

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v1, v10, 0x1

    const/4 v12, -0x1

    aput v12, v11, v10

    move-object/from16 v16, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v1

    move-object/from16 v1, v16

    goto/16 :goto_8

    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_e
    const-string v1, "0"

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p1

    iget-object v2, v0, Lcc;->b:Ljava/lang/String;

    sget-object v1, Lbo;->b:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    sget-object v12, Lbo;->b:Landroid/content/ContentValues;

    const-string v13, "starred"

    if-eqz v4, :cond_14

    const/4 v1, 0x1

    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v6, :cond_10

    sget-object v1, Lbo;->b:Landroid/content/ContentValues;

    const-string v4, "name"

    invoke-static {v6}, Lbo;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    if-eqz v5, :cond_11

    sget-object v1, Lbo;->b:Landroid/content/ContentValues;

    const-string v4, "notes"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-eqz v3, :cond_12

    sget-object v1, Lbo;->b:Landroid/content/ContentValues;

    const-string v4, "custom_ringtone"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    sget-object v1, Lbo;->b:Landroid/content/ContentValues;

    const-string v3, "_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lci;->n:Z

    if-eqz v1, :cond_13

    sget-object v1, Lbo;->b:Landroid/content/ContentValues;

    const-string v2, "_sync_account"

    const-string v3, "phone"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    sget-object v1, Lbo;->a:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lbo;->b:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lbo;->m:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    sput-wide v1, Lbo;->l:J

    sget-wide v1, Lbo;->l:J

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v9}, Lbo;->a(JLjava/util/ArrayList;)V

    goto/16 :goto_4

    :cond_14
    const/4 v1, 0x0

    goto :goto_9

    :cond_15
    aget v2, v11, v4

    if-gez v2, :cond_16

    move-object/from16 v0, p1

    iget-object v2, v0, Lcc;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcc;->d:Ljava/lang/Integer;

    :goto_a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_5

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcq;->b()Lcp;

    move-result-object v9

    aget v2, v11, v4

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_19

    aget v2, v11, v4

    sparse-switch v2, :sswitch_data_0

    move v2, v3

    :goto_b
    move-object/from16 v0, p1

    iget-object v3, v0, Lcc;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcc;->d:Ljava/lang/Integer;

    move v3, v2

    goto :goto_a

    :sswitch_0
    add-int/lit8 v2, v3, 0x1

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    iget-object v13, v9, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lct;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lbo;->e:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v15, v13, v15

    invoke-static {v14, v15}, Lct;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-gtz v14, :cond_18

    const-string v14, "type"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v14, "label"

    const/4 v15, 0x0

    aget-object v13, v13, v15

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    iget-boolean v13, v9, Lcp;->c:Z

    if-eqz v13, :cond_17

    const-string v13, "isprimary"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_17
    const-string v13, "number"

    iget-object v9, v9, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v14, 0x2

    aget-object v9, v9, v14

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "person"

    sget-wide v13, Lbo;->l:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    aput-object v12, v5, v3

    goto :goto_b

    :cond_18
    const-string v13, "type"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :sswitch_1
    add-int/lit8 v2, v1, 0x1

    invoke-static {v9}, Lbo;->a(Lcp;)Landroid/content/ContentValues;

    move-result-object v9

    aput-object v9, v6, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_b

    :sswitch_2
    sget-object v2, Lbo;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto/16 :goto_b

    :cond_19
    aget v2, v11, v4

    packed-switch v2, :pswitch_data_1

    :cond_1a
    :goto_d
    :pswitch_8
    move v2, v3

    goto/16 :goto_b

    :pswitch_9
    add-int/lit8 v2, v1, 0x1

    invoke-static {v9}, Lbo;->a(Lcp;)Landroid/content/ContentValues;

    move-result-object v9

    aput-object v9, v6, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_b

    :pswitch_a
    add-int/lit8 v2, v1, 0x1

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    iget-object v13, v9, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lct;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lbo;->g:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v15, v13, v15

    invoke-static {v14, v15}, Lct;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_1d

    sget-boolean v14, Lci;->b:Z

    if-eqz v14, :cond_1c

    const-string v14, "aux_data"

    const/16 v15, 0x8

    invoke-static {v15}, Landroid/provider/Contacts$ContactMethods;->encodePredefinedImProtocol(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    array-length v13, v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_1b

    const-string v13, "isprimary"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1b
    const-string v13, "data"

    iget-object v9, v9, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v14, 0x2

    aget-object v9, v9, v14

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "person"

    sget-wide v13, Lbo;->l:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "kind"

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "type"

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aput-object v12, v6, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_b

    :cond_1c
    const-string v14, "aux_data"

    const/4 v15, 0x1

    invoke-static {v15}, Landroid/provider/Contacts$ContactMethods;->encodePredefinedImProtocol(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_1d
    const-string v15, "aux_data"

    invoke-static {v14}, Landroid/provider/Contacts$ContactMethods;->encodePredefinedImProtocol(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :pswitch_b
    sget-boolean v2, Lci;->i:Z

    if-nez v2, :cond_1a

    sget-object v2, Lbo;->m:Landroid/net/Uri;

    invoke-static {v2, v9}, Lbo;->a(Landroid/net/Uri;Lcp;)Z

    move v2, v3

    goto/16 :goto_b

    :pswitch_c
    sget-object v2, Lbo;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_1e
    sget-object v1, Lbo;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1f

    add-int/lit8 v2, v3, 0x1

    sget-object v1, Lbo;->m:Landroid/net/Uri;

    sget-object v1, Lbo;->c:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcp;

    const-string v4, ""

    invoke-static {v1, v4}, Lbo;->a(Lcp;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    aput-object v1, v9, v3

    sget-object v1, Lbo;->c:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v2

    goto/16 :goto_6

    :cond_1f
    sget-object v1, Lbo;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_20

    add-int/lit8 v2, v3, 0x1

    sget-object v1, Lbo;->m:Landroid/net/Uri;

    const/4 v4, 0x0

    sget-object v1, Lbo;->d:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcp;

    iget-object v1, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    aget-object v1, v1, v10

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lbo;->a(Lcp;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    aput-object v1, v9, v3

    sget-object v1, Lbo;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v2

    goto/16 :goto_6

    :cond_20
    add-int/lit8 v4, v3, 0x1

    sget-object v1, Lbo;->m:Landroid/net/Uri;

    sget-object v1, Lbo;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcp;

    sget-object v2, Lbo;->d:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcp;

    iget-object v2, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbo;->a(Lcp;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    aput-object v1, v9, v3

    sget-object v1, Lbo;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v1, Lbo;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v4

    goto/16 :goto_6

    :cond_21
    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method public final a([Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lci;->A:Z

    if-eqz v0, :cond_0

    sget-object v0, Lbo;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    const-string v4, "source_name"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-object v3

    :cond_0
    sget-boolean v0, Lci;->m:Z

    if-eqz v0, :cond_1

    sget-object v0, Lbo;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    const-string v4, "_sync_account"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lbo;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v1, Lci;->A:Z

    if-eqz v1, :cond_6

    :cond_3
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lbo;->q:Lbr;

    invoke-virtual {v0}, Lbr;->a()V

    goto :goto_1

    :cond_5
    const-string v1, "SOURCE_SIM_CONTACTS"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    sget-boolean v1, Lci;->m:Z

    if-eqz v1, :cond_9

    :cond_7
    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "phone"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;[I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcc;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[I)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc;

    invoke-virtual {p0, v0}, Lbo;->a(Lcc;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v1

    goto :goto_1
.end method

.method public final b(Lcc;)Lcb$a;
    .locals 2

    iget-object v0, p1, Lcc;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p1, Lcc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcb$a;->a:Lcb$a;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcc;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbo;->a(Ljava/lang/String;)Lcb$a;

    move-result-object v0

    sget-object v1, Lcb$a;->b:Lcb$a;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lbo;->a(Lcc;)Ljava/lang/String;

    sget-object v0, Lcb$a;->b:Lcb$a;

    goto :goto_0

    :cond_2
    sget-object v0, Lcb$a;->a:Lcb$a;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lbo;->a:Landroid/content/ContentResolver;

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lcc;
    .locals 14

    new-instance v6, Lcq;

    invoke-direct {v6}, Lcq;-><init>()V

    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lbo;->a:Landroid/content/ContentResolver;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "notes"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "starred"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "custom_ringtone"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_6

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v6, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {p1}, Lbo;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v6, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-static {p1}, Lbo;->f(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v6, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {p1}, Lbo;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v6, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lbo;->q:Lbr;

    invoke-virtual {v2, p1, v0}, Lbr;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcp;

    invoke-direct {v3}, Lcp;-><init>()V

    const-string v4, "CATEGORIES"

    iget-object v5, v3, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    iget-object v4, v3, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_5

    iget-object v2, v6, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iput-object p1, v6, Lcc;->b:Ljava/lang/String;

    iput-object v0, v6, Lcc;->a:Ljava/util/List;

    return-object v6

    :cond_6
    new-instance v7, Lcp;

    invoke-direct {v7}, Lcp;-><init>()V

    new-instance v8, Lcp;

    invoke-direct {v8}, Lcp;-><init>()V

    new-instance v9, Lcp;

    invoke-direct {v9}, Lcp;-><init>()V

    new-instance v10, Lcp;

    invoke-direct {v10}, Lcp;-><init>()V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v0, 0x0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x3

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_7
    if-eqz v4, :cond_9

    const-string v11, ""

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "N"

    iget-object v12, v7, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\\"

    const-string v12, "\\\\"

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v11, ";"

    const-string v12, "\\;"

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v11, v7, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v3, :cond_b

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "NOTE"

    iget-object v7, v8, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-object v7, v7, v11

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_a

    iget-object v4, v8, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    aget-object v4, v4, v7

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string v3, "X-FOCUS"

    iget-object v4, v10, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget-object v4, v4, v7

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_f

    const-string v0, "1"

    :goto_2
    iget-object v3, v10, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    const-string v0, "RINGTONE"

    iget-object v3, v9, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_c

    iget-object v0, v9, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_f
    const-string v0, "0"

    goto :goto_2

    :cond_10
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v6

    sget-object v0, Lbo;->a:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v3
.end method
