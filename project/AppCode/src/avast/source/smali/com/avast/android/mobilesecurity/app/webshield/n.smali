.class public final enum Lcom/avast/android/mobilesecurity/app/webshield/n;
.super Ljava/lang/Enum;
.source "WebshieldService.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/app/webshield/n;

.field public static final enum b:Lcom/avast/android/mobilesecurity/app/webshield/n;

.field public static final enum c:Lcom/avast/android/mobilesecurity/app/webshield/n;

.field public static final enum d:Lcom/avast/android/mobilesecurity/app/webshield/n;

.field public static final enum e:Lcom/avast/android/mobilesecurity/app/webshield/n;

.field public static final enum f:Lcom/avast/android/mobilesecurity/app/webshield/n;

.field public static final enum g:Lcom/avast/android/mobilesecurity/app/webshield/n;

.field public static final enum h:Lcom/avast/android/mobilesecurity/app/webshield/n;

.field private static final i:Ljava/util/Map;

.field private static s:Ljava/io/File;

.field private static t:Z

.field private static final u:Ljava/lang/Object;

.field private static final synthetic v:[Lcom/avast/android/mobilesecurity/app/webshield/n;


# instance fields
.field private final j:Ljava/lang/String;

.field private final k:Landroid/net/Uri;

.field private final l:Ljava/lang/String;

.field private final m:[Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private q:I

.field private final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 85
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/n;

    const-string v1, "STOCK"

    const/4 v2, 0x0

    const-string v3, "com.android.browser"

    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v5, "com.android.browser.BrowserActivity"

    sget-object v6, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    sget-object v7, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    sget-object v8, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    sget-object v9, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    const/4 v10, 0x2

    invoke-direct/range {v0 .. v10}, Lcom/avast/android/mobilesecurity/app/webshield/n;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->a:Lcom/avast/android/mobilesecurity/app/webshield/n;

    .line 100
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/n;

    const-string v1, "STOCK_JB"

    const/4 v2, 0x1

    const-string v3, "com.google.android.browser"

    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v5, "com.android.browser.BrowserActivity"

    sget-object v6, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    sget-object v7, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    sget-object v8, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    sget-object v9, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    const/4 v10, 0x2

    invoke-direct/range {v0 .. v10}, Lcom/avast/android/mobilesecurity/app/webshield/n;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->b:Lcom/avast/android/mobilesecurity/app/webshield/n;

    .line 113
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/n;

    const-string v1, "CHROME"

    const/4 v2, 0x2

    const-string v3, "com.android.chrome"

    const-string v4, "content://com.android.chrome.browser/bookmarks"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "com.google.android.apps.chrome.Main"

    const/4 v6, 0x0

    const-string v7, "date"

    const-string v8, "url"

    const-string v9, "bookmark"

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/avast/android/mobilesecurity/app/webshield/n;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->c:Lcom/avast/android/mobilesecurity/app/webshield/n;

    .line 128
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/n;

    const-string v1, "DOLPHIN"

    const/4 v2, 0x3

    const-string v3, "com.dolphin.browser"

    const-string v4, "content://com.dolphin.browser.bookmarks/bookmarks"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "com.dolphin.browser.BrowserActivity"

    const/4 v6, 0x0

    const-string v7, "visited_date"

    const-string v8, "url"

    const-string v9, "type"

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/avast/android/mobilesecurity/app/webshield/n;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->d:Lcom/avast/android/mobilesecurity/app/webshield/n;

    .line 135
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/n;

    const-string v1, "DOLPHIN_HD"

    const/4 v2, 0x4

    const-string v3, "mobi.mgeek.TunnyBrowser"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/avast/android/mobilesecurity/app/webshield/n;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->e:Lcom/avast/android/mobilesecurity/app/webshield/n;

    .line 142
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/n;

    const-string v1, "SILK"

    const/4 v2, 0x5

    const-string v3, "com.amazon.cloud9"

    const-string v4, "content://com.amazon.cloud9/pages"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "com.amazon.cloud9.BrowserActivity"

    const/4 v6, 0x0

    const-string v7, "visited_on"

    const-string v8, "url"

    const-string v9, "bookmarked"

    const/4 v10, 0x2

    invoke-direct/range {v0 .. v10}, Lcom/avast/android/mobilesecurity/app/webshield/n;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->f:Lcom/avast/android/mobilesecurity/app/webshield/n;

    .line 149
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/n;

    const-string v1, "BOAT"

    const/4 v2, 0x6

    const-string v3, "com.boatbrowser.free"

    const-string v4, "content://com.boatbrowser.free/bookmarks"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "com.boatbrowser.free.BrowserActivity"

    const/4 v6, 0x0

    const-string v7, "date"

    const-string v8, "url"

    const-string v9, "bookmark"

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/avast/android/mobilesecurity/app/webshield/n;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->g:Lcom/avast/android/mobilesecurity/app/webshield/n;

    .line 157
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/n;

    const-string v1, "BOAT_MINI"

    const/4 v2, 0x7

    const-string v3, "com.boatgo.browser"

    const-string v4, "content://boatbrowser/bookmarks"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "com.boatgo.browser.BrowserActivity"

    const/4 v6, 0x0

    const-string v7, "date"

    const-string v8, "url"

    const-string v9, "bookmark"

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/avast/android/mobilesecurity/app/webshield/n;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->h:Lcom/avast/android/mobilesecurity/app/webshield/n;

    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/app/webshield/n;

    const/4 v1, 0x0

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->a:Lcom/avast/android/mobilesecurity/app/webshield/n;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->b:Lcom/avast/android/mobilesecurity/app/webshield/n;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->c:Lcom/avast/android/mobilesecurity/app/webshield/n;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->d:Lcom/avast/android/mobilesecurity/app/webshield/n;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->e:Lcom/avast/android/mobilesecurity/app/webshield/n;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->f:Lcom/avast/android/mobilesecurity/app/webshield/n;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->g:Lcom/avast/android/mobilesecurity/app/webshield/n;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->h:Lcom/avast/android/mobilesecurity/app/webshield/n;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->v:[Lcom/avast/android/mobilesecurity/app/webshield/n;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->i:Ljava/util/Map;

    .line 164
    const-class v0, Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/webshield/n;

    .line 165
    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->i:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/webshield/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 178
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->t:Z

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->u:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 184
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->j:Ljava/lang/String;

    .line 185
    iput-object p4, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->k:Landroid/net/Uri;

    .line 186
    iput-object p5, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->l:Ljava/lang/String;

    .line 187
    if-eqz p6, :cond_1

    .line 188
    iput-object p6, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->m:[Ljava/lang/String;

    .line 201
    :cond_0
    iput-object p7, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->n:Ljava/lang/String;

    .line 202
    iput-object p8, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->o:Ljava/lang/String;

    .line 203
    iput-object p9, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->p:Ljava/lang/String;

    .line 204
    iput p10, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->r:I

    .line 205
    return-void

    .line 190
    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->m:[Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->m:[Ljava/lang/String;

    aput-object p7, v1, v0

    .line 192
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->m:[Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p8, v1, v2

    .line 193
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->m:[Ljava/lang/String;

    const/4 v2, 0x2

    aput-object p9, v1, v2

    .line 194
    iput v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->q:I

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->m:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->m:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 197
    iget v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->q:I

    .line 195
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/webshield/n;
    .locals 1
    .parameter

    .prologue
    .line 252
    if-nez p0, :cond_0

    .line 253
    sget-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->a:Lcom/avast/android/mobilesecurity/app/webshield/n;

    .line 255
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->i:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/webshield/n;

    goto :goto_0
.end method

.method public static a(ZLjava/io/File;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 259
    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/n;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    sput-boolean p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->t:Z

    .line 261
    sput-object p1, Lcom/avast/android/mobilesecurity/app/webshield/n;->s:Ljava/io/File;

    .line 262
    monitor-exit v1

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/webshield/n;
    .locals 1
    .parameter

    .prologue
    .line 79
    const-class v0, Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/webshield/n;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/app/webshield/n;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/avast/android/mobilesecurity/app/webshield/n;->v:[Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/app/webshield/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/app/webshield/n;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 316
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 319
    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/n;->b:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    :cond_0
    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/n;->d:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    const-string v1, "com_dolphin_browser_self"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    :cond_1
    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/n;->g:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/n;->h:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 329
    :cond_2
    const-string v1, "com.android.browser.application_id"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->g:Lcom/avast/android/mobilesecurity/app/webshield/n;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    :cond_3
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->k:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final d()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 220
    iget v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->q:I

    if-nez v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->m:[Ljava/lang/String;

    .line 231
    :goto_0
    return-object v0

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->m:[Ljava/lang/String;

    array-length v1, v1

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->q:I

    sub-int/2addr v1, v2

    new-array v3, v1, [Ljava/lang/String;

    move v1, v0

    .line 226
    :goto_1
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->m:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 227
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->m:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 228
    add-int/lit8 v2, v1, 0x1

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->m:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    move v1, v2

    .line 226
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 231
    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/n;->r:I

    return v0
.end method

.method public i()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/n;->b:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    :cond_0
    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/n;->d:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    const-string v1, "com_dolphin_browser_self"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    :cond_1
    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/n;->g:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/n;->h:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    :cond_2
    const-string v1, "com.android.browser.application_id"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->g:Lcom/avast/android/mobilesecurity/app/webshield/n;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    :cond_3
    sget-object v1, Lcom/avast/android/mobilesecurity/app/webshield/n;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_0
    sget-boolean v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->t:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->d:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/webshield/n;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/avast/android/mobilesecurity/app/webshield/n;->c:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/webshield/n;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/avast/android/mobilesecurity/app/webshield/n;->s:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fwd.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 296
    const-string v3, "text/html"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forwarding from file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/avast/android/mobilesecurity/app/webshield/n;->s:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fwd.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 303
    :goto_0
    monitor-exit v1

    .line 304
    return-object v0

    .line 300
    :cond_4
    const-string v2, "about:blank"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 301
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
