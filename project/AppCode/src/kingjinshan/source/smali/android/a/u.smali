.class public final Landroid/a/u;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/a/aa;
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri; = null

.field public static final b:Ljava/lang/String; = "date DESC"

.field public static final c:Ljava/lang/String; = "snippet"

.field public static final d:Ljava/lang/String; = "msg_count"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 444
    const-string v0, "content://sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/a/u;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
