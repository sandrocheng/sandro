.class public final Landroid/a/h;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/a/d;


# static fields
.field public static final aA:Landroid/net/Uri; = null

.field public static final aB:Ljava/lang/String; = "date DESC"

.field public static final aC:Ljava/util/regex/Pattern;

.field public static final aD:Ljava/util/regex/Pattern;

.field public static final ay:Landroid/net/Uri;

.field public static final az:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1197
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1199
    sput-object v0, Landroid/a/h;->ay:Landroid/net/Uri;

    const-string v1, "report-request"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/a/h;->az:Landroid/net/Uri;

    .line 1202
    sget-object v0, Landroid/a/h;->ay:Landroid/net/Uri;

    const-string v1, "report-status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/a/h;->aA:Landroid/net/Uri;

    .line 1215
    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/a/h;->aC:Ljava/util/regex/Pattern;

    .line 1223
    const-string v0, "\\s*\"([^\"]*)\"\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/a/h;->aD:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1489
    return-void
.end method

.method private static a(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1228
    sget-object v1, Landroid/a/h;->ay:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1234
    sget-object v1, Landroid/a/h;->ay:Landroid/net/Uri;

    const/4 v4, 0x0

    if-nez p3, :cond_0

    const-string v0, "date DESC"

    move-object v5, v0

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p3

    goto :goto_0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1239
    packed-switch p0, :pswitch_data_0

    .line 1251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid message box: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1241
    :pswitch_0
    const-string v0, "all"

    .line 1249
    :goto_0
    return-object v0

    .line 1243
    :pswitch_1
    const-string v0, "inbox"

    goto :goto_0

    .line 1245
    :pswitch_2
    const-string v0, "sent"

    goto :goto_0

    .line 1247
    :pswitch_3
    const-string v0, "drafts"

    goto :goto_0

    .line 1249
    :pswitch_4
    const-string v0, "outbox"

    goto :goto_0

    .line 1239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1256
    sget-object v0, Landroid/a/h;->aC:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1258
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1259
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1261
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 1271
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    const/4 v0, 0x0

    .line 1277
    :goto_0
    return v0

    .line 1275
    :cond_0
    invoke-static {p0}, Landroid/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1276
    sget-object v1, Landroid/a/a;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1277
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1287
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    const/4 v0, 0x0

    .line 1292
    :goto_0
    return v0

    .line 1291
    :cond_0
    sget-object v0, Landroid/a/a;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1292
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method
