.class public final Landroid/a/f;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri; = null

.field public static final b:Ljava/lang/String; = "name ASC"

.field public static final c:Ljava/lang/String; = "name"

.field public static final d:Ljava/lang/String; = "apn"

.field public static final e:Ljava/lang/String; = "proxy"

.field public static final f:Ljava/lang/String; = "port"

.field public static final g:Ljava/lang/String; = "mmsproxy"

.field public static final h:Ljava/lang/String; = "mmsport"

.field public static final i:Ljava/lang/String; = "server"

.field public static final j:Ljava/lang/String; = "user"

.field public static final k:Ljava/lang/String; = "password"

.field public static final l:Ljava/lang/String; = "mmsc"

.field public static final m:Ljava/lang/String; = "mcc"

.field public static final n:Ljava/lang/String; = "mnc"

.field public static final o:Ljava/lang/String; = "numeric"

.field public static final p:Ljava/lang/String; = "authtype"

.field public static final q:Ljava/lang/String; = "type"

.field public static final r:Ljava/lang/String; = "current"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1628
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/a/f;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
