.class public final Landroid/a/r;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Ljava/lang/String; = "transport_type"

.field public static final b:Landroid/net/Uri; = null

.field public static final c:Landroid/net/Uri; = null

.field public static final d:Landroid/net/Uri; = null

.field public static final e:Landroid/net/Uri; = null

.field public static final f:Landroid/net/Uri; = null

.field public static final g:Landroid/net/Uri; = null

.field public static final h:Landroid/net/Uri; = null

.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x0

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field public static final n:I = 0x3

.field public static final o:I = 0x4

.field public static final p:I = 0xa

.field public static final q:I = 0xb

.field public static final r:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1540
    const-string v0, "content://mms-sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/a/r;->b:Landroid/net/Uri;

    .line 1542
    const-string v0, "content://mms-sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/a/r;->c:Landroid/net/Uri;

    .line 1545
    const-string v0, "content://mms-sms/messages/byphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/a/r;->d:Landroid/net/Uri;

    .line 1548
    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/a/r;->e:Landroid/net/Uri;

    .line 1551
    const-string v0, "content://mms-sms/draft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/a/r;->f:Landroid/net/Uri;

    .line 1554
    const-string v0, "content://mms-sms/locked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/a/r;->g:Landroid/net/Uri;

    .line 1562
    const-string v0, "content://mms-sms/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/a/r;->h:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    return-void
.end method
