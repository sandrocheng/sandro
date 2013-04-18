.class public final Lcom/ijinshan/kinghelper/a/e;
.super Ljava/lang/Object;
.source "FirewallConstants.java"


# static fields
.field public static final a:Ljava/lang/String; = "com.android.contacts"

.field public static final b:Landroid/net/Uri; = null

.field public static final c:Landroid/net/Uri; = null

.field public static final d:Landroid/net/Uri; = null

.field public static final e:Ljava/lang/String; = "data1"

.field public static final f:Ljava/lang/String; = "display_name"

.field public static final g:Ljava/lang/String; = "_id"

.field public static final h:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "content://com.android.contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ijinshan/kinghelper/a/e;->b:Landroid/net/Uri;

    .line 13
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    sput-object v0, Lcom/ijinshan/kinghelper/a/e;->c:Landroid/net/Uri;

    .line 16
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/ijinshan/kinghelper/a/e;->d:Landroid/net/Uri;

    .line 22
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/ijinshan/kinghelper/a/e;->h:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 25
    if-nez p1, :cond_0

    move-object v0, v3

    .line 42
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    move-object v0, v3

    .line 31
    goto :goto_0

    .line 35
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 37
    sget-object v3, Lcom/ijinshan/kinghelper/a/e;->d:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 40
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    .line 42
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method
