.class public final Landroid/a/o;
.super Ljava/lang/Object;
.source "Telephony.java"


# static fields
.field public static final a:Landroid/net/Uri; = null

.field public static final b:Ljava/lang/String; = "sent_time"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1465
    sget-object v0, Landroid/a/h;->ay:Landroid/net/Uri;

    const-string v1, "rate"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/a/o;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
