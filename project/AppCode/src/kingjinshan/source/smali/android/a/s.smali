.class public final Landroid/a/s;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri; = null

.field public static final b:Ljava/lang/String; = "proto_type"

.field public static final c:Ljava/lang/String; = "msg_id"

.field public static final d:Ljava/lang/String; = "msg_type"

.field public static final e:Ljava/lang/String; = "err_type"

.field public static final f:Ljava/lang/String; = "err_code"

.field public static final g:Ljava/lang/String; = "retry_index"

.field public static final h:Ljava/lang/String; = "due_time"

.field public static final i:Ljava/lang/String; = "last_try"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1580
    sget-object v0, Landroid/a/r;->b:Landroid/net/Uri;

    const-string v1, "pending"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/a/s;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
